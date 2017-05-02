kernel void Local(global float *inputData, global float *outputData, local float *nextData ) {
  size_t gid = get_global_id(0);
  size_t lid = get_local_id(0);
  size_t lsize = get_local_size(0);

  float in1 = inputData[gid];
  float in2 = inputData[gid];
  size_t lnext = (lid+1) % lsize;

  nextData[lnext] += in1;
  nextData[lnext+1] += in2;

  barrier(CLK_LOCAL_MEM_FENCE);
  barrier(CLK_GLOBAL_MEM_FENCE);
//  work_group_barrier(CLK_LOCAL_MEM_FENCE, memory_scope_work_group);
//  work_group_barrier(CLK_GLOBAL_MEM_FENCE, memory_scope_work_group);
//  work_group_barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE, memory_scope_work_group);

  outputData[gid] = nextData[lid];
  outputData[gid+1] = nextData[lid+1];

}
