cmake_minimum_required (VERSION 3.10)
project(ssbl-documentation)

set(CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} "${PROJECT_SOURCE_DIR}/cmake")
include(SickDocuExtensions)
include(ExternalProject)


set(SSBL_GIT_REPO "https://github.com/SickScan/sick_scan_base.git")
set(SSBL_CHECKOUT_DIR ${CMAKE_CURRENT_BINARY_DIR}/ssbl)

#download the latest library version 
ExternalProject_Add(SSBL-Download
  BINARY_DIR ${SSBL_BUILD_DIR_DEBUG}
  GIT_REPOSITORY ${SSBL_GIT_REPO}
  GIT_TAG "master"
  GIT_PROGRESS ON
  UPDATE_COMMAND ""
  SOURCE_DIR  ${SSBL_CHECKOUT_DIR}
  CONFIGURE_COMMAND ""
  PATCH_COMMAND ""
  BUILD_COMMAND ""
  INSTALL_COMMAND ""
)


add_subdirectory(src)
