enable_testing()

include(FetchContent)

FetchContent_Declare(
    googletest
    GIT_REPOSITORY https://github.com/google/googletest.git
    GIT_TAG release-1.11.0
)

set(gtest_force_shared_crt ON CACHE BOOL "" FORCE)
option(INSTALL_GMOCK "Install GMock" OFF)
option(INSTALL_GTEST "Install GTest" OFF)

FetchContent_MakeAvailable(googletest)

include(GoogleTest)
include(Memcheck)

function(AddTests target)
    target_link_libraries(${target} PRIVATE gtest_main gmock)
    gtest_discover_tests(${target})
    AddMemcheck(${target})
endfunction()
