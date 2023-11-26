node --version  2&> /dev/null
if [ $? == 127 ]; then
  echo "node is needed"
  exit 1
fi

cmake --version 2&> /dev/null
if [ $? == 127 ]; then
  echo "cmake is needed"
  exit 1
fi

clangd --version 2&> /dev/null
if [ $? == 127 ]; then
  echo "clangd is needed"
  exit 1
fi

echo "All check done :)"


