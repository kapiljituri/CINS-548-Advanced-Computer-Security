#!/bin/bash

A="fe05bcdcdc4928012781a5f1a2a77cbb5398e106"
B="ad782ecdac770fc6eb9a62e44f90873fb97fb26b"
C="b802f384302cb24fbab0a44997e820bf2e8507bb"
D="9f8f7eec5dea5ac43738721939c120318cbff1df"
E="4db2c1df4610cd6c0da6b9197b066bfb4e9b9d00"
F="bec9703f7a456cd2b4ab5fb3220ae016e3e394e3"
G="a00bbe560e6b0f5263e3e6cba4ff3fb9a6fe9ef0"
H="d479fa0ef92542c808003731bc478f714ec1da4c"
I="b4ddce182ecfb739a19a2b263412c2343dd4fc98"
J="dd3562449147ffc783230d2a13d02a75ac42989b"

# set -x

while IFS='' read -r line || [[ -n "$line" ]]; do
    HASH="$(echo -n "$line" | sha1sum | awk '{print $1}')"
    if [[("${HASH}" = "${A}") || ("${HASH}" = "${B}") ||
         ("${HASH}" = "${C}") || ("${HASH}" = "${D}") ||
         ("${HASH}" = "${E}") || ("${HASH}" = "${F}") ||
         ("${HASH}" = "${G}") || ("${HASH}" = "${H}") ||
         ("${HASH}" = "${I}") || ("${HASH}" = "${J}") ]]; then
      echo $line $HASH
    fi
done < "$1"

# set +x
