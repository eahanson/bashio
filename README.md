# bashio
some simple bash scripts for I/O

## cecho

Echos colorized strings.

Usage: `cecho` followed by options and a list of strings and colors.

The only option is '-n' which omits the newline at the end.

Colors start with `--`, can optionally have `bold` or `bright` modifiers, and can be one of the
supported colors: `blue`, `cyan`, `green`, `magenta`, `red`, `white`, or `yellow`. For example, 
`—-yellow`, `—-bold-yellow`, `—-bold-bright-yellow`, `—-bright-bold-yellow`.

Full example:

    cecho --bold-bright-yellow "Checking capacitor" --bold-yellow "(type=flux):" --bright-green "OK"
    
See [cecho_test.sh](./cecho_test.sh) for more examples. You can also run `echo_test.sh` to see it work.
