# Copyright (C) 2018  iCub Facility, Istituto Italiano di Tecnologia
# Authors: Stefano Dafarra <stefano.dafarra@iit.it>
# CopyPolicy: Released under the terms of the LGPLv2.1 or later, see LGPL.TXT

include(YCMEPHelper)
include(FindOrBuildPackage)

find_or_build_package(YARP QUIET)
find_or_build_package(ICUB QUIET)
find_or_build_package(iDynTree QUIET)
find_or_build_package(UnicyclePlanner QUIET)
find_or_build_package(OsqpEigen QUIET)
find_or_build_package(qpOASES QUIET)

set(walking-controllers_DEPENDS "")
list(APPEND walking-controllers_DEPENDS YARP)
list(APPEND walking-controllers_DEPENDS ICUB)
list(APPEND walking-controllers_DEPENDS iDynTree)
list(APPEND walking-controllers_DEPENDS UnicyclePlanner)
list(APPEND walking-controllers_DEPENDS OsqpEigen)
list(APPEND walking-controllers_DEPENDS qpOASES)

ycm_ep_helper(walking-controllers TYPE GIT
              STYLE GITHUB
              REPOSITORY robotology/walking-controllers
              TAG master
              COMPONENT dynamics
              FOLDER robotology
              DEPENDS ${walking-controllers_DEPENDS})
