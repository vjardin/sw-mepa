# Copyright (c) 2004-2026 Microchip Technology Inc. and its subsidiaries.
# SPDX-License-Identifier: MIT
#
# Plain-distro cross toolchain file for building MEPA for the Nodebox v3
# (LX2160A, aarch64) with the Ubuntu aarch64-linux-gnu toolchain instead
# of the /opt/mchp Buildroot SDK that create_cmake_project.rb expects.
#
# Usage:
#   cmake -B build-aarch64 -S . \
#         -DCMAKE_TOOLCHAIN_FILE=toolchain-aarch64-linux-gnu.cmake ...
#
# build-aarch64-deps/ holds locally cross-built target libs (json-c).

set(CMAKE_SYSTEM_NAME Linux)
set(CMAKE_SYSTEM_PROCESSOR aarch64)

set(CMAKE_C_COMPILER aarch64-linux-gnu-gcc)
set(CMAKE_CXX_COMPILER aarch64-linux-gnu-g++)

set(CMAKE_FIND_ROOT_PATH ${CMAKE_CURRENT_LIST_DIR}/build-aarch64-deps)
set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_PACKAGE ONLY)
