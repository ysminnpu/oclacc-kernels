void kernel copy(global int *restrict a, global int *restrict b) {
    int foobar[12] = {1, 2, 3, 4, 5, 6, 7, 8 ,9 ,10, 11, 12};
    int i = get_global_id(0);
    b[i] = a[i];
}
