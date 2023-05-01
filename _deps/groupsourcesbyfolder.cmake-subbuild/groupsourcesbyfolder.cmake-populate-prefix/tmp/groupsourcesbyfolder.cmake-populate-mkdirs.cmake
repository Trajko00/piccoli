# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

file(MAKE_DIRECTORY
  "/Users/tryk0/Downloads/final-project/_deps/groupsourcesbyfolder.cmake-src"
  "/Users/tryk0/Downloads/final-project/_deps/groupsourcesbyfolder.cmake-build"
  "/Users/tryk0/Downloads/final-project/_deps/groupsourcesbyfolder.cmake-subbuild/groupsourcesbyfolder.cmake-populate-prefix"
  "/Users/tryk0/Downloads/final-project/_deps/groupsourcesbyfolder.cmake-subbuild/groupsourcesbyfolder.cmake-populate-prefix/tmp"
  "/Users/tryk0/Downloads/final-project/_deps/groupsourcesbyfolder.cmake-subbuild/groupsourcesbyfolder.cmake-populate-prefix/src/groupsourcesbyfolder.cmake-populate-stamp"
  "/Users/tryk0/Downloads/final-project/_deps/groupsourcesbyfolder.cmake-subbuild/groupsourcesbyfolder.cmake-populate-prefix/src"
  "/Users/tryk0/Downloads/final-project/_deps/groupsourcesbyfolder.cmake-subbuild/groupsourcesbyfolder.cmake-populate-prefix/src/groupsourcesbyfolder.cmake-populate-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "/Users/tryk0/Downloads/final-project/_deps/groupsourcesbyfolder.cmake-subbuild/groupsourcesbyfolder.cmake-populate-prefix/src/groupsourcesbyfolder.cmake-populate-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "/Users/tryk0/Downloads/final-project/_deps/groupsourcesbyfolder.cmake-subbuild/groupsourcesbyfolder.cmake-populate-prefix/src/groupsourcesbyfolder.cmake-populate-stamp${cfgdir}") # cfgdir has leading slash
endif()
