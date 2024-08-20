
if(NOT "/root/punica/build/fastertransformer/_deps/fastertransformer-subbuild/fastertransformer-populate-prefix/src/fastertransformer-populate-stamp/fastertransformer-populate-gitinfo.txt" IS_NEWER_THAN "/root/punica/build/fastertransformer/_deps/fastertransformer-subbuild/fastertransformer-populate-prefix/src/fastertransformer-populate-stamp/fastertransformer-populate-gitclone-lastrun.txt")
  message(STATUS "Avoiding repeated git clone, stamp file is up to date: '/root/punica/build/fastertransformer/_deps/fastertransformer-subbuild/fastertransformer-populate-prefix/src/fastertransformer-populate-stamp/fastertransformer-populate-gitclone-lastrun.txt'")
  return()
endif()

execute_process(
  COMMAND ${CMAKE_COMMAND} -E rm -rf "/root/punica/build/fastertransformer/_deps/fastertransformer-src"
  RESULT_VARIABLE error_code
  )
if(error_code)
  message(FATAL_ERROR "Failed to remove directory: '/root/punica/build/fastertransformer/_deps/fastertransformer-src'")
endif()

# try the clone 3 times in case there is an odd git clone issue
set(error_code 1)
set(number_of_tries 0)
while(error_code AND number_of_tries LESS 3)
  execute_process(
    COMMAND "/usr/bin/git"  clone --no-checkout --config "advice.detachedHead=false" "https://github.com/void-main/FasterTransformer.git" "fastertransformer-src"
    WORKING_DIRECTORY "/root/punica/build/fastertransformer/_deps"
    RESULT_VARIABLE error_code
    )
  math(EXPR number_of_tries "${number_of_tries} + 1")
endwhile()
if(number_of_tries GREATER 1)
  message(STATUS "Had to git clone more than once:
          ${number_of_tries} times.")
endif()
if(error_code)
  message(FATAL_ERROR "Failed to clone repository: 'https://github.com/void-main/FasterTransformer.git'")
endif()

execute_process(
  COMMAND "/usr/bin/git"  checkout e770ddf2bc66217034b6e9e3b0c3256ebf1c1b40 --
  WORKING_DIRECTORY "/root/punica/build/fastertransformer/_deps/fastertransformer-src"
  RESULT_VARIABLE error_code
  )
if(error_code)
  message(FATAL_ERROR "Failed to checkout tag: 'e770ddf2bc66217034b6e9e3b0c3256ebf1c1b40'")
endif()

set(init_submodules TRUE)
if(init_submodules)
  execute_process(
    COMMAND "/usr/bin/git"  submodule update --recursive --init 
    WORKING_DIRECTORY "/root/punica/build/fastertransformer/_deps/fastertransformer-src"
    RESULT_VARIABLE error_code
    )
endif()
if(error_code)
  message(FATAL_ERROR "Failed to update submodules in: '/root/punica/build/fastertransformer/_deps/fastertransformer-src'")
endif()

# Complete success, update the script-last-run stamp file:
#
execute_process(
  COMMAND ${CMAKE_COMMAND} -E copy
    "/root/punica/build/fastertransformer/_deps/fastertransformer-subbuild/fastertransformer-populate-prefix/src/fastertransformer-populate-stamp/fastertransformer-populate-gitinfo.txt"
    "/root/punica/build/fastertransformer/_deps/fastertransformer-subbuild/fastertransformer-populate-prefix/src/fastertransformer-populate-stamp/fastertransformer-populate-gitclone-lastrun.txt"
  RESULT_VARIABLE error_code
  )
if(error_code)
  message(FATAL_ERROR "Failed to copy script-last-run stamp file: '/root/punica/build/fastertransformer/_deps/fastertransformer-subbuild/fastertransformer-populate-prefix/src/fastertransformer-populate-stamp/fastertransformer-populate-gitclone-lastrun.txt'")
endif()

