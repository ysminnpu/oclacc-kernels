void kernel BlockCopy(global float *a, int blocksize) {
    for (int i = 0; i < blocksize; ++i) {
        a[get_global_id(0)+i] += 5;
    }
}

