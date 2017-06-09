struct Localstruct {
    float a[17];
    float b;
};

__attribute__((reqd_work_group_size(16,1,1)))
kernel void Local(global float *inputData, global float *outputData) {
  local float nextData[1024][1024];
  local float x;
  local struct Localstruct S[1024];

  size_t gid = get_global_id(0);
  size_t lid = get_local_id(0);
  size_t lsize = get_local_size(0);

  float in = inputData[gid];
  size_t lnext = (lid+1) & 0xFF;

  S[lnext].a[lid] = in;

  S[1023].a[16] = 0.5;

  x++;

  nextData[lnext][lnext] += S[lnext].b;

  barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
  //work_group_barrier(CLK_LOCAL_MEM_FENCE & CLK_GLOBAL_MEM_FENCE, memory_scope_work_group);
//  work_group_barrier(CLK_GLOBAL_MEM_FENCE, memory_scope_work_group);
//  work_group_barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE, memory_scope_work_group);

  outputData[gid] = nextData[lid][lid];
}
