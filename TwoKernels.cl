__kernel void KernelOne(__global char* string)
{
    string[0] = 'H';
    string[1] = 'e';
    string[2] = 'l';
    string[3] = 'l';
    string[4] = 'o';
    string[5] = ',';
    string[6] = ' ';
    string[7] = 'W';
    string[8] = 'o';
    string[9] = 'r';
    string[10] = 'l';
    string[11] = 'd';
    string[12] = '!';
    string[13] = '\0';
}

__kernel void KernelTwo(__global char* string)
{
    string[0] = 'W';
    string[1] = 'o';
    string[2] = 'r';
    string[3] = 'l';
    string[4] = 'd';
    string[5] = ',';
    string[6] = ' ';
    string[7] = 'H';
    string[8] = 'e';
    string[9] = 'l';
    string[10] = 'l';
    string[11] = 'o';
    string[12] = '!';
    string[13] = '\0';
}
