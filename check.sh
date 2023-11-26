#!/bin/bash

node --version  > /dev/null 2>&1
if [ $? == 127 ]; then
  echo "node is needed"
  exit 1
fi

cmake --version > /dev/null 2>&1
if [ $? == 127 ]; then
  echo "cmake is needed"
  exit 1
fi

# Add more dependence check...

 
# Check clangd at last, inaccurate result:
# Clangd binary name might be "clangd-xx(ver)"
clangd --version > /dev/null 2>&1
if [ $? == 127 ]; then
  echo "Missing clangd, never mind this if binary name is clangd-xx(ver)"
  exit 1
fi

echo "All check done :)"


