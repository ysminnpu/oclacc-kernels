void kernel Builtin(global float *restrict a, float c) {
//    for (int i = 0; i < get_global_size(0); ++i) {
        a[get_global_id(0)] = atan(a[get_global_id(0)])+c;
//    }
}
