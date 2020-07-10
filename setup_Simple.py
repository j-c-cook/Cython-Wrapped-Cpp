from setuptools import setup
from Cython.Build import cythonize
from setuptools.extension import Extension
import numpy as np
from Cython.Distutils import build_ext

# --------- define your extensions -------------------

extensions = [
    Extension(
        name='Simple.helloworld',  # this will become <name>.so
        sources=['Simple/helloworld.pyx'], # a list of the cython and cpp files
        include_dirs=[np.get_include()],
    )
]

setup(name='Simple',
      packages=['Simple'],
      ext_modules=extensions,
      cmdclass={'build_ext': build_ext})
