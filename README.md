shell-utils - collection of useful shell helpers
================================================

shell-utils is a collection of functions to make shell script
development more fun and less repetitive.

Usage
-----

Because there is no reliable way to identify the absolute path of a
variable, you need to set `SHELL_UTILS_DIR` with the dir that contains
the scripts. After that, just include `all.sh` on your script:

```sh
#!/bin/sh

# Supposing that you copied the libs into shell-utils directory
# relative to current script path

SHELL_UTILS_DIR="$(dirname $0)/shell-utils"
. $SHELL_UTILS_DIR/all.sh

# .. continue with your code ..

```

Look at `examples.sh` file to see how to use.

License
-------

MIT license. Pull requests welcome :)
