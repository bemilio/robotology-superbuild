#=============================================================================
# Copyright 2013-2019 Istituto Italiano di Tecnologia (IIT)
#
# Distributed under the OSI-approved BSD License (the "License");
# see accompanying file Copyright.txt for details.
#
# This software is distributed WITHOUT ANY WARRANTY; without even the
# implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
# See the License for more information.
#=============================================================================
# (To distribute this file outside of YCM, substitute the full
#  License text for the above reference.)


# This module is intentionally kept as small as possible in order to
# avoid the spreading of different modules.
#


if(DEFINED __YCMBOOTSTRAP_FETCH_CONTENT_INCLUDED)
  return()
endif()
set(__YCMBOOTSTRAP_FETCH_CONTENT_INCLUDED TRUE)

include(FetchContent)
FetchContent_Declare(
  ycm_fetchcontent_bootstrap
  URL ${YCM_BOOTSTRAP_URL}
)

FetchContent_GetProperties(ycm_fetchcontent_bootstrap)
if(NOT ycm_fetchcontent_bootstrap_POPULATED)
  FetchContent_Populate(ycm_fetchcontent_bootstrap)

  # Just use the CMake modules without explicitly configuring the YCM project
  list(APPEND CMAKE_MODULE_PATH "${ycm_fetchcontent_bootstrap_SOURCE_DIR}/modules")
  list(APPEND CMAKE_MODULE_PATH "${ycm_fetchcontent_bootstrap_SOURCE_DIR}/find-modules")
  list(APPEND CMAKE_MODULE_PATH "${ycm_fetchcontent_bootstrap_SOURCE_DIR}/build-modules")
  list(APPEND CMAKE_MODULE_PATH "${ycm_fetchcontent_bootstrap_SOURCE_DIR}/style-modules")

  set(YCM_FOUND  TRUE CACHE INTERNAL "" FORCE)
endif()


