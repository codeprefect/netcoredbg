#! /bin/bash
echo "Removing existing build directories"
rm -rf build bin && mkdir build && cd build || exit
echo "Building netcoredbg"
CORECLR_BRANCH="release/8.0"
cmake .. -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX="$PWD"/../bin \
 -DCORECLR_BRANCH=${CORECLR_BRANCH} \
 # -DDOTNET_DIR="/Users/mubarakimam/Projects/OpenSource/dotnet"
# -DCORECLR_DIR="/Users/mubarakimam/Projects/OpenSource/coreclr" \
echo "Creating install targets"
cmake --build . --target install
