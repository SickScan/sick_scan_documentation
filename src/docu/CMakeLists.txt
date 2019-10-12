cmake_minimum_required (VERSION 3.10)
project(ssbl-documentation)

set(CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} "${PROJECT_SOURCE_DIR}/../../cmake")
include(SickDocuExtensions)

# Create GenerateDoxygenDocumentation target in case we find doxygen
# Note that dot.exe needs to be in path, too.
GenerateDocumentation()
