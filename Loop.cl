kernel void loop(global float *arr, local float *a) {
    __attribute__((opencl_unroll_hint))
    for (int i = 0; i < get_global_size(0); ++i) {
        arr[i] = sin(a[i]);
    }

}

