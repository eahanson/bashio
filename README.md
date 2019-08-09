# bashio
some simple bash scripts for I/O

## cecho

Echos colorized strings.

Usage: `cecho` followed by a list of strings and colors.

Colors start with `--`, can optionally have `bold` or `bright` modifiers, and can be one of the
supported colors: `cyan`, `green`, `red`, `white`, or `yellow`.

Example:

    cecho --bold-bright-yellow "Checking capacitor" --bold-yellow "(type=flux):" --bright-green "OK"
    
See [cecho_test.sh](./cecho_test.sh) for more examples. You can also run `echo_test.sh` to see it work.