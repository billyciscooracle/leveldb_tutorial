
####### Expanded from @PACKAGE_INIT@ by configure_package_config_file() #######
####### Any changes to this file will be overwritten by the next CMake run ####
####### The input file was Config.cmake.in                            ########

get_filename_component(PACKAGE_${CMAKE_FIND_PACKAGE_NAME}_COUNTER_2 "${CMAKE_CURRENT_LIST_DIR}/../../../" ABSOLUTE)

####################################################################################

include (CMakeFindDependencyMacro)

find_dependency (Threads)

include("${CMAKE_CURRENT_LIST_DIR}/benchmarkTargets.cmake")
