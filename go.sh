#! /bin/bash

xelatex resume.tex

if [ $? == 0 ]
then
    cp -rvf resume.pdf ~/out/
fi
