kernel void JacobiKernelBorder(global float *restrict inp,
        global float *restrict outp, float scale) {
    int x = get_global_id(0);
    int y = get_global_id(1);
    int width = get_global_size(0);
    int height = get_global_size(1);


    float tmp = inp[y*width + x];
    if ((x > 0) && (x < (width-1))
        && (y > 0) && (y < (height-1))) {
        tmp = (float) ( inp[(y-1)*width + x] + inp[y*width + x-1]
                      + inp[y*width + x+1] + inp[(y+1)*width + x]) * scale;
    }

    outp[y*width + x] = tmp;
}
