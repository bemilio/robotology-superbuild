# Copyright (C) 2017  iCub Facility, Istituto Italiano di Tecnologia
# Authors: Daniele E. Domenichelli <ddomenichelli@drdanz.it>, Silvio Traversaro <silvio.traversaro@iit.it>
# CopyPolicy: Released under the terms of the LGPLv2.1 or later, see LGPL.TXT

include(YCMEPHelper)
include(FindOrBuildPackage)

ycm_ep_helper(YCM TYPE GIT
                  STYLE GITHUB
                  REPOSITORY robotology/ycm.git
                  TAG master
                  COMPONENT core
                  FOLDER robotology)
