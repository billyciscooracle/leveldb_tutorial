# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

file(MAKE_DIRECTORY
  "/Users/guojinhe/Desktop/leveldb_tutorial/build/_deps/leveldb-src"
  "/Users/guojinhe/Desktop/leveldb_tutorial/build/_deps/leveldb-build"
  "/Users/guojinhe/Desktop/leveldb_tutorial/build/_deps/leveldb-subbuild/leveldb-populate-prefix"
  "/Users/guojinhe/Desktop/leveldb_tutorial/build/_deps/leveldb-subbuild/leveldb-populate-prefix/tmp"
  "/Users/guojinhe/Desktop/leveldb_tutorial/build/_deps/leveldb-subbuild/leveldb-populate-prefix/src/leveldb-populate-stamp"
  "/Users/guojinhe/Desktop/leveldb_tutorial/build/_deps/leveldb-subbuild/leveldb-populate-prefix/src"
  "/Users/guojinhe/Desktop/leveldb_tutorial/build/_deps/leveldb-subbuild/leveldb-populate-prefix/src/leveldb-populate-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "/Users/guojinhe/Desktop/leveldb_tutorial/build/_deps/leveldb-subbuild/leveldb-populate-prefix/src/leveldb-populate-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "/Users/guojinhe/Desktop/leveldb_tutorial/build/_deps/leveldb-subbuild/leveldb-populate-prefix/src/leveldb-populate-stamp${cfgdir}") # cfgdir has leading slash
endif()
