include_guard()

include(FetchContent)

FetchContent_Declare(
    leveldb
    GIT_REPOSITORY https://github.com/google/leveldb
    GIT_TAG        Main
         
)
FetchContent_MakeAvailable(leveldb)


