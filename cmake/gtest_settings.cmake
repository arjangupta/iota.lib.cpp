#
# MIT License
#
# Copyright (c) 2017 Thibault Martinez
#
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in all
# copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.
#
#

set(GOOGLETEST_ROOT external/googletest/googletest CACHE STRING "Google Test source root")
set(GOOGLEMOCK_ROOT external/googletest/googlemock CACHE STRING "Google Mock source root")

########## GOOGLE TEST SOURCES ##########

set(GOOGLETEST_SOURCES
  ${CMAKE_SOURCE_DIR}/${GOOGLETEST_ROOT}/src/gtest-all.cc
  ${CMAKE_SOURCE_DIR}/${GOOGLEMOCK_ROOT}/src/gmock-all.cc
  ${CMAKE_SOURCE_DIR}/${GOOGLEMOCK_ROOT}/src/gmock_main.cc
)

########## GOOGLE TEST INCLUDES DIRECTORIES ##########

include_directories(
  ${CMAKE_SOURCE_DIR}/${GOOGLETEST_ROOT}
  ${CMAKE_SOURCE_DIR}/${GOOGLETEST_ROOT}/include
  ${CMAKE_SOURCE_DIR}/${GOOGLEMOCK_ROOT}
  ${CMAKE_SOURCE_DIR}/${GOOGLEMOCK_ROOT}/include
)

add_library(googletest ${GOOGLETEST_SOURCES})
