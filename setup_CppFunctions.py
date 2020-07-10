from setuptools import setup
from Cython.Build import cythonize
from setuptools.extension import Extension
import numpy as np
from Cython.Distutils import build_ext

# --------- define your extensions -------------------

extensions = [
    Extension(
        name='CppFunctions.HelloWorld.helloworldfunction',  # this will become <name>.so
        # now a list of the cython and cpp files
        sources=['CppFunctions/HelloWorld/HelloWorldFunc.cpp', 'CppFunctions/HelloWorld/HelloWorldFunction_.pyx'],
        include_dirs=[np.get_include()],
        language='c++'
    )
]

setup(name='Simple',
      packages=['Simple'],
      ext_modules=extensions,
      cmdclass={'build_ext': build_ext})
