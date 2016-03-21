#ifndef __CPPSRC_A__
#define __CPPSRC_A__

#include <iostream>

class NativeClass
{
public:
    NativeClass(void) {};

    void do_something(void) {int b = 12; std::cout << " b is " << b << std::endl;};
};

#endif