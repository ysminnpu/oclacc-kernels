kernel void SwitchCase (global float *inp, global float *outp, int selector) {
    switch(selector) {
        case 0:
            *outp = *inp - 0;
            break;
        case 1:
            *outp = *inp - 1;
            break;
        case 2:
            *outp = *inp - 2;
            break;
        case 3:
            *outp = *inp - 3;
        default:
            *outp = *inp;
    }
}


