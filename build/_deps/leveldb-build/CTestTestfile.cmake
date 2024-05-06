# CMake generated Testfile for 
# Source directory: /Users/guojinhe/Desktop/leveldb_tutorial/build/_deps/leveldb-src
# Build directory: /Users/guojinhe/Desktop/leveldb_tutorial/build/_deps/leveldb-build
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(leveldb_tests "/Users/guojinhe/Desktop/leveldb_tutorial/build/_deps/leveldb-build/leveldb_tests")
set_tests_properties(leveldb_tests PROPERTIES  _BACKTRACE_TRIPLES "/Users/guojinhe/Desktop/leveldb_tutorial/build/_deps/leveldb-src/CMakeLists.txt;365;add_test;/Users/guojinhe/Desktop/leveldb_tutorial/build/_deps/leveldb-src/CMakeLists.txt;0;")
add_test(c_test "/Users/guojinhe/Desktop/leveldb_tutorial/build/_deps/leveldb-build/c_test")
set_tests_properties(c_test PROPERTIES  _BACKTRACE_TRIPLES "/Users/guojinhe/Desktop/leveldb_tutorial/build/_deps/leveldb-src/CMakeLists.txt;391;add_test;/Users/guojinhe/Desktop/leveldb_tutorial/build/_deps/leveldb-src/CMakeLists.txt;394;leveldb_test;/Users/guojinhe/Desktop/leveldb_tutorial/build/_deps/leveldb-src/CMakeLists.txt;0;")
add_test(env_posix_test "/Users/guojinhe/Desktop/leveldb_tutorial/build/_deps/leveldb-build/env_posix_test")
set_tests_properties(env_posix_test PROPERTIES  _BACKTRACE_TRIPLES "/Users/guojinhe/Desktop/leveldb_tutorial/build/_deps/leveldb-src/CMakeLists.txt;391;add_test;/Users/guojinhe/Desktop/leveldb_tutorial/build/_deps/leveldb-src/CMakeLists.txt;402;leveldb_test;/Users/guojinhe/Desktop/leveldb_tutorial/build/_deps/leveldb-src/CMakeLists.txt;0;")
subdirs("third_party/googletest")
subdirs("third_party/benchmark")
