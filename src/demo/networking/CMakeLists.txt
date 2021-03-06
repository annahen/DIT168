cmake_minimum_required(VERSION 3.5)

project(MARBLE.Networking.Demo)

set(CMAKE_CXX_STANDARD 14)
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Wall -Wextra -Werror")

find_package(libcluon REQUIRED)
include_directories(SYSTEM ${CLUON_INCLUDE_DIRS})

add_custom_command(OUTPUT ${CMAKE_BINARY_DIR}/DemoMessages.cpp
        WORKING_DIRECTORY ${CMAKE_BINARY_DIR}
        COMMAND cluon-msc --cpp-sources --cpp-add-include-file=DemoMessages.hpp --out=${CMAKE_BINARY_DIR}/DemoMessages.cpp ${CMAKE_CURRENT_SOURCE_DIR}/DemoMessages.odvd
        COMMAND cluon-msc --cpp-headers --out=${CMAKE_BINARY_DIR}/DemoMessages.hpp ${CMAKE_CURRENT_SOURCE_DIR}/DemoMessages.odvd
        DEPENDS ${CMAKE_CURRENT_SOURCE_DIR}/DemoMessages.odvd)

include_directories(SYSTEM ${CMAKE_BINARY_DIR})

add_executable(${PROJECT_NAME}.Sender Sender.cpp ${CMAKE_BINARY_DIR}/DemoMessages.cpp)
target_link_libraries(${PROJECT_NAME}.Sender ${CLUON_LIBRARIES})

add_executable(${PROJECT_NAME}.Receiver Receiver.cpp ${CMAKE_BINARY_DIR}/DemoMessages.cpp)
target_link_libraries(${PROJECT_NAME}.Receiver ${CLUON_LIBRARIES})

# enable_testing()
# add_executable(${PROJECT_NAME}-Runner ${CMAKE_CURRENT_SOURCE_DIR}/[...].cpp ${CMAKE_BINARY_DIR}/[...].cpp)
# target_link_libraries(${PROJECT_NAME}-Runner ${CLUON_LIBRARIES})

# add_test(NAME ${PROJECT_NAME}-Runner COMMAND ${PROJECT_NAME}-Runner)
