# Jack C. Cook
# Saturday, March 7, 2020

import FooPackage.rectangle as rect


def main():
    x0, y0, x1, y1 = 1, 2, 3, 4

    rect_obj = rect.PyRectangle(x0, y0, x1, y1)

    print(rect_obj.x1)

    print(dir(rect_obj))


if __name__ == '__main__':
    main()
