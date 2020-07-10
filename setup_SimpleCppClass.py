from setuptools import setup
from Cython.Build import cythonize
from setuptools.extension import Extension
import numpy as np
from Cython.Distutils import build_ext

# --------- define your extensions -------------------

extensions = [
    Extension(
        name='SimpleCppClass.HelloWorld',  # this will become <name>.so
        sources=['SimpleCppClass/HelloWorld.cpp', 'SimpleCppclass/HelloWorld_.pxd'], # a list of the cython and cpp files
        include_dirs=[np.get_include()],
        language='c++'
    )
]

setup(name='Simple',
      packages=['SimpleCppClass'],
      ext_modules=extensions,
      cmdclass={'build_ext': build_ext})