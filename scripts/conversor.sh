#!/bin/bash

HOME_SCRIPTS='/home/linuxmint/git/AluraCursoShellScrip/scripts'; export HOME_SCRIPTS
HOME_IMAGES='/home/linuxmint/git/AluraCursoShellScrip/imagens-livros'; export HOME_IMAGES

convert $HOME_IMAGES/$1.jpg $HOME_IMAGES/$1.png
