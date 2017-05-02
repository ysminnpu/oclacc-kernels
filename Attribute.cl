__attribute__((reqd_work_group_size(16, 1, 1)))
void kernel attribute(global int *restrict a, int size) {
    for (int i = 0; i < size; ++i) {
        a[i] += get_local_id(0) * 4.0;
    }
}
