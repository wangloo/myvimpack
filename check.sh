#!/bin/bash

vim_version=$(vim --version | head -n 1 | awk '{print $5}')
if [ "$(echo -ne "8.2.0\n$vim_version" | sort -V | head -n 1)" != "8.2.0" ]; then
  echo "Vim should > 8.2, now is $vim_version"
  exit 1
fi

node --version  > /dev/null 2>&1
if [ $? == 127 ]; then
  echo "node is needed"
  exit 1
fi
node_ver=$(node -v | head -n 1)
if [ "$(echo -ne "v20.0.0\n$node_ver" | sort -V | head -n 1)" != "v20.0.0" ]; then
	echo "Node should > 20.0.0, now is $node_ver"
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


