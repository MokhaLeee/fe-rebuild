#!/bin/sh

here=$(dirname "$(readlink -f "$0")")/..

# Install agbcc
agbcc_repo="https://github.com/pret/agbcc.git"
agbcc_branch="master"

temp=$(mktemp -d)
git clone $agbcc_repo $temp -b $agbcc_branch

cd $temp
./build.sh
./install.sh $here

rm -rf $temp

# Install others
make -f scripts/Kbuild/make_tools.mk
