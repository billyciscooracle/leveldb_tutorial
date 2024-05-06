project("leveldb_tutorial")
cmake_minimum_required(VERSION 3.29)
#cmake_minimum_required(VERSION 3.16)
include(cmake/leveldb.cmake)
set(CMAKE_CXX_FLAGS "-std=c++17") 
add_executable(test01 test01.cpp)

#add_library(test01 leveldb)
#message(STATUS “--->${leveldb_SOURCE_DIR})
target_include_directories(test01 PUBLIC ${leveldb_SOURCE_DIR}/include)
link_directories(l/usr/local/lib/)
target_link_libraries(test01 leveldb)
#export LIBRARY_PATH=$LIBRARY_PATH:/usr/local/lib/

add_executable(test02 test02.cpp)
target_link_libraries(test02 leveldb)
target_include_directories(test02 PUBLIC ${leveldb_SOURCE_DIR}/include)

add_executable(test03 test03.cpp)
target_link_libraries(test03 leveldb)
target_include_directories(test03 PUBLIC ${leveldb_SOURCE_DIR}/include)

add_executable(test04 test04.cpp)
target_link_libraries(test04 leveldb)
target_include_directories(test04 PUBLIC ${leveldb_SOURCE_DIR}/include)


add_executable(test05 test05.cpp)
target_link_libraries(test05 leveldb)
target_include_directories(test05 PUBLIC ${leveldb_SOURCE_DIR}/include)

add_executable(test06 test06.cpp)
target_link_libraries(test06 leveldb)
target_include_directories(test06 PUBLIC ${leveldb_SOURCE_DIR}/include)


