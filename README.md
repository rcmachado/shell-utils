shell-utils - collection of useful shell helpers
================================================

shell-utils is a collection of functions to make shell script
development more fun and less repetitive.

The main idea is to write small functions that are composable and
reusable - but have a use on its own. With this approach, we can make
a small but very efficient 

Installation
------------

Clone this repository:

    $ git clone https://github.com/rcmachado/shell-utils.git

And point `SHELL_UTILS_DIR` to `shell-utils` directory. See Usage for
details.

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

Documentation
-------------

### header.sh

* `print_separator N C`: print a separator line repeating char `C`
    `N` times
* `print_header`: print a header title

### colors.sh

Variables `COLOR_*` with color codes for printing on shell.

### log.sh

* `log_debug`: print debug message
* `log_info`: print info message
* `log_warn`: print warning message
* `log_error`: print error message

License
-------

MIT license. Pull requests welcome :)
