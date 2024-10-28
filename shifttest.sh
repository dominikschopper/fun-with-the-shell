#!/bin/bash
function name() {
    echo "meine 0 '$0' und meine 1 '$1'"
}

function something() {
    local x=$1 # local var to function
    if [[ $x = "Welt" ]]; then
        echo "Hallo $x"
        return 0
    fi
    echo "Was war das denn? x ist $x"
    return 1
}
# set -x
x=What
echo "Before function something x is $x"
something Foo
something Welt
echo "After function something x is $x"
name foo
