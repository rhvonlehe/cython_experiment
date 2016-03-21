from distutils.core import setup
from distutils.extension import Extension
from Cython.Build import cythonize

module1 = Extension("*",
                    sources=['./RichPackage/*.pyx'])

setup(
    name="RichPackage",
    ext_modules=cythonize([module1])
)