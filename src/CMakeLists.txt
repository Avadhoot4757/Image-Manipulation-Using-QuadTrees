cmake_minimum_required(VERSION 3.10)

# Project name
project(FinalProject)

# Set the C standard
set(CMAKE_C_STANDARD 99)

# Add the executable target
add_executable(final
    rotate.c
    suppl.c
    decompress.c
    compress.c
    main.c
    filters.c
    union.c
)

# Include headers
target_include_directories(final PRIVATE ${CMAKE_SOURCE_DIR})

# Link the math library
target_link_libraries(final m)
