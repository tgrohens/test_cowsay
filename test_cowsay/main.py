import sys

import cowsay


def main():
    if len(sys.argv) > 1:
        cowsay.cow(f"Hello {sys.argv[1]} from test-cowsay!")
    else:
        cowsay.cow(f"Hello from test-cowsay!")


if __name__ == "__main__":
    main()
