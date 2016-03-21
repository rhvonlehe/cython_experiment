# distutils: language = c++

cdef extern from "CppSrcA.h" nogil:
    cdef cppclass NativeClass:
        NativeClass()
        void do_something()


cdef class _TempClass:
    cdef NativeClass *thisptr
    def __cinit__(self):
        self.thisptr = new NativeClass()
    def __dealloc__(self):
        del self.thisptr
    def do_something(self):
        self.thisptr.do_something()



