kernel void JacobiKernel(global float *restrict in, global float *restrict out, global int *testout, float scale) {
  int x = get_global_id(0);
  int y = get_global_id(1);
  int width = get_global_size(0);
  int height = get_global_size(1);

  float tmp = (float) ( in[(y-1)*width + x] + in[y*width + x-1] + in[y*width + x+1] + in[(y+1)*width + x] ) * scale;

  out[y*width + x] = tmp;
  testout[y*width + x] = get_global_id(0)-get_global_id(1);
}
