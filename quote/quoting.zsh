#!/usr/bin/zsh

# Three quoting mechanisms: single, double, backslash

# Backslash quotes a single character
echo This script removes all files that
echo contain an asterisk in the name.
echo
echo Are you sure you want to remove these files\? # escape ? from globbing
rm -i *\** # escape the middle *

# Strongest method of quotation. Can be used to escape EOL character
echo This could be \
  a very \
  long line\!

# Single quotes: strong quoting
echo a      b
echo 'a          b'
echo 'What the *heck* is a $ doing here???'

# Double quotes: weak quoting
# doesn't expand meta-chars like * or ?
# does expand variables and command substitution
echo "Is your home directory $HOME?"
echo "Your current directory is `pwd`"

# Can check if quoting correctly using `echo`
echo rsh -n cruncher echo ls *
echo rsh -n cruncher echo 'ls *'
