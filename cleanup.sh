#!/usr/bin/env bash

rm -vrf ..Rcheck/\
    config.*\
    autom4te.cache\
    aclocal.m4\
    src/*.o\
    src/Makevars\
    src/libauto/*.o\
    src/libkcommon/*.o\
    src/libman/*.o\
    src/libdist/*.o\
    src/*.tar.gz\
    clusternor*.tar.gz\
    clusternor*.Rcheck\
    configure
