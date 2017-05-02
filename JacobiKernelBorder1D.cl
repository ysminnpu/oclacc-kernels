kernel void JacobiKernelBorder(global float *inp, global float *outp, int width) {
    int x = get_global_id(0);

    float tmp = inp[x];
    if ((x > 0) && (x < (width-1))) {
        tmp = (inp[x-1] + inp[x+1]) * 0.5;
    }
    outp[x] = tmp;
}
