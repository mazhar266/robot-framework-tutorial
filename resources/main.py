import sys


def to_fahrenheit(degree):
    """
    Temperature in degrees Fahrenheit (°F)
     = (Temperature in degrees Celsius (°C) * 9/5) + 32

    :param degree:
    :return: temp in fahrenheit
    """

    return degree * 9 / 5 + 32


if __name__ == '__main__':
    # total arguments
    if len(sys.argv) < 2:
        print("Need an argument")
        sys.exit()

    degree = float(sys.argv[1])

    print(to_fahrenheit(degree))
