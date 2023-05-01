# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

file(MAKE_DIRECTORY
  "/Users/tryk0/Downloads/final-project/_deps/glm-src"
  "/Users/tryk0/Downloads/final-project/_deps/glm-build"
  "/Users/tryk0/Downloads/final-project/_deps/glm-subbuild/glm-populate-prefix"
  "/Users/tryk0/Downloads/final-project/_deps/glm-subbuild/glm-populate-prefix/tmp"
  "/Users/tryk0/Downloads/final-project/_deps/glm-subbuild/glm-populate-prefix/src/glm-populate-stamp"
  "/Users/tryk0/Downloads/final-project/_deps/glm-subbuild/glm-populate-prefix/src"
  "/Users/tryk0/Downloads/final-project/_deps/glm-subbuild/glm-populate-prefix/src/glm-populate-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "/Users/tryk0/Downloads/final-project/_deps/glm-subbuild/glm-populate-prefix/src/glm-populate-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "/Users/tryk0/Downloads/final-project/_deps/glm-subbuild/glm-populate-prefix/src/glm-populate-stamp${cfgdir}") # cfgdir has leading slash
endif()
