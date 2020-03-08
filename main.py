# Jack C. Cook
# Saturday, March 7, 2020

import FooPackage.rectangle as rect
from FooPackage import vectofFloats
from FooPackage import vectofRectangles


def main():
    x0, y0, x1, y1 = 1, 2, 3, 4

    rect_obj = rect.PyRectangle(x0, y0, x1, y1)
    print(type(rect_obj))

    print(rect_obj.x1)

    print(dir(rect_obj))

    vectofFloats.pass_by_ref([2.2, 2.3, 3.3])

    a = [rect_obj, rect_obj]
    vectofRectangles.pass_by_ref(a)


if __name__ == '__main__':
    main()
