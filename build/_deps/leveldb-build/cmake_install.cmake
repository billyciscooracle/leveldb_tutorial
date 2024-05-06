# Install script for directory: /Users/guojinhe/Desktop/leveldb_tutorial/build/_deps/leveldb-src

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/Library/Developer/CommandLineTools/usr/bin/objdump")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/Users/guojinhe/Desktop/leveldb_tutorial/build/_deps/leveldb-build/libleveldb.a")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libleveldb.a" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libleveldb.a")
    execute_process(COMMAND "/Library/Developer/CommandLineTools/usr/bin/ranlib" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libleveldb.a")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/leveldb" TYPE FILE FILES
    "/Users/guojinhe/Desktop/leveldb_tutorial/build/_deps/leveldb-src/include/leveldb/c.h"
    "/Users/guojinhe/Desktop/leveldb_tutorial/build/_deps/leveldb-src/include/leveldb/cache.h"
    "/Users/guojinhe/Desktop/leveldb_tutorial/build/_deps/leveldb-src/include/leveldb/comparator.h"
    "/Users/guojinhe/Desktop/leveldb_tutorial/build/_deps/leveldb-src/include/leveldb/db.h"
    "/Users/guojinhe/Desktop/leveldb_tutorial/build/_deps/leveldb-src/include/leveldb/dumpfile.h"
    "/Users/guojinhe/Desktop/leveldb_tutorial/build/_deps/leveldb-src/include/leveldb/env.h"
    "/Users/guojinhe/Desktop/leveldb_tutorial/build/_deps/leveldb-src/include/leveldb/export.h"
    "/Users/guojinhe/Desktop/leveldb_tutorial/build/_deps/leveldb-src/include/leveldb/filter_policy.h"
    "/Users/guojinhe/Desktop/leveldb_tutorial/build/_deps/leveldb-src/include/leveldb/iterator.h"
    "/Users/guojinhe/Desktop/leveldb_tutorial/build/_deps/leveldb-src/include/leveldb/options.h"
    "/Users/guojinhe/Desktop/leveldb_tutorial/build/_deps/leveldb-src/include/leveldb/slice.h"
    "/Users/guojinhe/Desktop/leveldb_tutorial/build/_deps/leveldb-src/include/leveldb/status.h"
    "/Users/guojinhe/Desktop/leveldb_tutorial/build/_deps/leveldb-src/include/leveldb/table_builder.h"
    "/Users/guojinhe/Desktop/leveldb_tutorial/build/_deps/leveldb-src/include/leveldb/table.h"
    "/Users/guojinhe/Desktop/leveldb_tutorial/build/_deps/leveldb-src/include/leveldb/write_batch.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/leveldb/leveldbTargets.cmake")
    file(DIFFERENT _cmake_export_file_changed FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/leveldb/leveldbTargets.cmake"
         "/Users/guojinhe/Desktop/leveldb_tutorial/build/_deps/leveldb-build/CMakeFiles/Export/f90a79f6c24c38ae6b0a9cccec147da8/leveldbTargets.cmake")
    if(_cmake_export_file_changed)
      file(GLOB _cmake_old_config_files "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/leveldb/leveldbTargets-*.cmake")
      if(_cmake_old_config_files)
        string(REPLACE ";" ", " _cmake_old_config_files_text "${_cmake_old_config_files}")
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/leveldb/leveldbTargets.cmake\" will be replaced.  Removing files [${_cmake_old_config_files_text}].")
        unset(_cmake_old_config_files_text)
        file(REMOVE ${_cmake_old_config_files})
      endif()
      unset(_cmake_old_config_files)
    endif()
    unset(_cmake_export_file_changed)
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/leveldb" TYPE FILE FILES "/Users/guojinhe/Desktop/leveldb_tutorial/build/_deps/leveldb-build/CMakeFiles/Export/f90a79f6c24c38ae6b0a9cccec147da8/leveldbTargets.cmake")
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^()$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/leveldb" TYPE FILE FILES "/Users/guojinhe/Desktop/leveldb_tutorial/build/_deps/leveldb-build/CMakeFiles/Export/f90a79f6c24c38ae6b0a9cccec147da8/leveldbTargets-noconfig.cmake")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/leveldb" TYPE FILE FILES
    "/Users/guojinhe/Desktop/leveldb_tutorial/build/_deps/leveldb-build/cmake/leveldbConfig.cmake"
    "/Users/guojinhe/Desktop/leveldb_tutorial/build/_deps/leveldb-build/cmake/leveldbConfigVersion.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/Users/guojinhe/Desktop/leveldb_tutorial/build/_deps/leveldb-build/third_party/googletest/cmake_install.cmake")
  include("/Users/guojinhe/Desktop/leveldb_tutorial/build/_deps/leveldb-build/third_party/benchmark/cmake_install.cmake")

endif()

