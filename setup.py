from setuptools import setup
from setuptools.extension import Extension
from Cython.Distutils import build_ext
import numpy

extensions = [
    Extension(
        name='FooPackage.rectangle',  # name/path to generated so file
        sources=['FooPackage/rectangle.cpp', 'FooPackage/rectangle_.pyx'],  # the files that go into building the .so
        include_dirs=[numpy.get_include()],
        language='c++'),  # could put comma and list another extension
    Extension(
        name='FooPackage.vectofFloats',  # name/path to generated so file
        sources=['FooPackage/vectoffloats.cpp', 'FooPackage/vectofFloats_.pyx'],  # the files that go into building the .so
        include_dirs=[numpy.get_include()],
        language='c++'),
    # Extension(
    #     name='FooPackage.vectofRectangles',  # name/path to generated so file
    #     sources=['FooPackage/vectofrectangles.cpp', 'FooPackage/vectofrectangles_.pyx'],  # the files that go into building the .so
    #     include_dirs=[numpy.get_include()],
    #     language='c++')
]

setup(name='cythonpack',
      version='0.0.1',
      author='Jack C. Cook',
      author_email='jack.cook@okstate.edu',
      include_package_data=True,
      packages=['FooPackage'],  # packages = [P1,P2] could contain multiple packages
      ext_modules=extensions,
      cmdclass={'build_ext': build_ext})
