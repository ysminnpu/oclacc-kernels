kernel void Goto(float *a) {
    int x = get_global_id(0);
L3:
    if (x == 2) goto L5;
    a[x] += 1;
L5:
    a[x] += 1;
    goto L3;
}
