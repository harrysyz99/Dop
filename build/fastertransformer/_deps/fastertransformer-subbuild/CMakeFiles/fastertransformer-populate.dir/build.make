# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /root/punica/build/fastertransformer/_deps/fastertransformer-subbuild

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /root/punica/build/fastertransformer/_deps/fastertransformer-subbuild

# Utility rule file for fastertransformer-populate.

# Include any custom commands dependencies for this target.
include CMakeFiles/fastertransformer-populate.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/fastertransformer-populate.dir/progress.make

CMakeFiles/fastertransformer-populate: CMakeFiles/fastertransformer-populate-complete

CMakeFiles/fastertransformer-populate-complete: fastertransformer-populate-prefix/src/fastertransformer-populate-stamp/fastertransformer-populate-install
CMakeFiles/fastertransformer-populate-complete: fastertransformer-populate-prefix/src/fastertransformer-populate-stamp/fastertransformer-populate-mkdir
CMakeFiles/fastertransformer-populate-complete: fastertransformer-populate-prefix/src/fastertransformer-populate-stamp/fastertransformer-populate-download
CMakeFiles/fastertransformer-populate-complete: fastertransformer-populate-prefix/src/fastertransformer-populate-stamp/fastertransformer-populate-update
CMakeFiles/fastertransformer-populate-complete: fastertransformer-populate-prefix/src/fastertransformer-populate-stamp/fastertransformer-populate-patch
CMakeFiles/fastertransformer-populate-complete: fastertransformer-populate-prefix/src/fastertransformer-populate-stamp/fastertransformer-populate-configure
CMakeFiles/fastertransformer-populate-complete: fastertransformer-populate-prefix/src/fastertransformer-populate-stamp/fastertransformer-populate-build
CMakeFiles/fastertransformer-populate-complete: fastertransformer-populate-prefix/src/fastertransformer-populate-stamp/fastertransformer-populate-install
CMakeFiles/fastertransformer-populate-complete: fastertransformer-populate-prefix/src/fastertransformer-populate-stamp/fastertransformer-populate-test
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/root/punica/build/fastertransformer/_deps/fastertransformer-subbuild/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Completed 'fastertransformer-populate'"
	/usr/bin/cmake -E make_directory /root/punica/build/fastertransformer/_deps/fastertransformer-subbuild/CMakeFiles
	/usr/bin/cmake -E touch /root/punica/build/fastertransformer/_deps/fastertransformer-subbuild/CMakeFiles/fastertransformer-populate-complete
	/usr/bin/cmake -E touch /root/punica/build/fastertransformer/_deps/fastertransformer-subbuild/fastertransformer-populate-prefix/src/fastertransformer-populate-stamp/fastertransformer-populate-done

fastertransformer-populate-prefix/src/fastertransformer-populate-stamp/fastertransformer-populate-update:
.PHONY : fastertransformer-populate-prefix/src/fastertransformer-populate-stamp/fastertransformer-populate-update

fastertransformer-populate-prefix/src/fastertransformer-populate-stamp/fastertransformer-populate-build: fastertransformer-populate-prefix/src/fastertransformer-populate-stamp/fastertransformer-populate-configure
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/root/punica/build/fastertransformer/_deps/fastertransformer-subbuild/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "No build step for 'fastertransformer-populate'"
	cd /root/punica/build/fastertransformer/_deps/fastertransformer-build && /usr/bin/cmake -E echo_append
	cd /root/punica/build/fastertransformer/_deps/fastertransformer-build && /usr/bin/cmake -E touch /root/punica/build/fastertransformer/_deps/fastertransformer-subbuild/fastertransformer-populate-prefix/src/fastertransformer-populate-stamp/fastertransformer-populate-build

fastertransformer-populate-prefix/src/fastertransformer-populate-stamp/fastertransformer-populate-configure: fastertransformer-populate-prefix/tmp/fastertransformer-populate-cfgcmd.txt
fastertransformer-populate-prefix/src/fastertransformer-populate-stamp/fastertransformer-populate-configure: fastertransformer-populate-prefix/src/fastertransformer-populate-stamp/fastertransformer-populate-patch
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/root/punica/build/fastertransformer/_deps/fastertransformer-subbuild/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "No configure step for 'fastertransformer-populate'"
	cd /root/punica/build/fastertransformer/_deps/fastertransformer-build && /usr/bin/cmake -E echo_append
	cd /root/punica/build/fastertransformer/_deps/fastertransformer-build && /usr/bin/cmake -E touch /root/punica/build/fastertransformer/_deps/fastertransformer-subbuild/fastertransformer-populate-prefix/src/fastertransformer-populate-stamp/fastertransformer-populate-configure

fastertransformer-populate-prefix/src/fastertransformer-populate-stamp/fastertransformer-populate-download: fastertransformer-populate-prefix/src/fastertransformer-populate-stamp/fastertransformer-populate-gitinfo.txt
fastertransformer-populate-prefix/src/fastertransformer-populate-stamp/fastertransformer-populate-download: fastertransformer-populate-prefix/src/fastertransformer-populate-stamp/fastertransformer-populate-mkdir
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/root/punica/build/fastertransformer/_deps/fastertransformer-subbuild/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Performing download step (git clone) for 'fastertransformer-populate'"
	cd /root/punica/build/fastertransformer/_deps && /usr/bin/cmake -P /root/punica/build/fastertransformer/_deps/fastertransformer-subbuild/fastertransformer-populate-prefix/tmp/fastertransformer-populate-gitclone.cmake
	cd /root/punica/build/fastertransformer/_deps && /usr/bin/cmake -E touch /root/punica/build/fastertransformer/_deps/fastertransformer-subbuild/fastertransformer-populate-prefix/src/fastertransformer-populate-stamp/fastertransformer-populate-download

fastertransformer-populate-prefix/src/fastertransformer-populate-stamp/fastertransformer-populate-install: fastertransformer-populate-prefix/src/fastertransformer-populate-stamp/fastertransformer-populate-build
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/root/punica/build/fastertransformer/_deps/fastertransformer-subbuild/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "No install step for 'fastertransformer-populate'"
	cd /root/punica/build/fastertransformer/_deps/fastertransformer-build && /usr/bin/cmake -E echo_append
	cd /root/punica/build/fastertransformer/_deps/fastertransformer-build && /usr/bin/cmake -E touch /root/punica/build/fastertransformer/_deps/fastertransformer-subbuild/fastertransformer-populate-prefix/src/fastertransformer-populate-stamp/fastertransformer-populate-install

fastertransformer-populate-prefix/src/fastertransformer-populate-stamp/fastertransformer-populate-mkdir:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/root/punica/build/fastertransformer/_deps/fastertransformer-subbuild/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Creating directories for 'fastertransformer-populate'"
	/usr/bin/cmake -E make_directory /root/punica/build/fastertransformer/_deps/fastertransformer-src
	/usr/bin/cmake -E make_directory /root/punica/build/fastertransformer/_deps/fastertransformer-build
	/usr/bin/cmake -E make_directory /root/punica/build/fastertransformer/_deps/fastertransformer-subbuild/fastertransformer-populate-prefix
	/usr/bin/cmake -E make_directory /root/punica/build/fastertransformer/_deps/fastertransformer-subbuild/fastertransformer-populate-prefix/tmp
	/usr/bin/cmake -E make_directory /root/punica/build/fastertransformer/_deps/fastertransformer-subbuild/fastertransformer-populate-prefix/src/fastertransformer-populate-stamp
	/usr/bin/cmake -E make_directory /root/punica/build/fastertransformer/_deps/fastertransformer-subbuild/fastertransformer-populate-prefix/src
	/usr/bin/cmake -E make_directory /root/punica/build/fastertransformer/_deps/fastertransformer-subbuild/fastertransformer-populate-prefix/src/fastertransformer-populate-stamp
	/usr/bin/cmake -E touch /root/punica/build/fastertransformer/_deps/fastertransformer-subbuild/fastertransformer-populate-prefix/src/fastertransformer-populate-stamp/fastertransformer-populate-mkdir

fastertransformer-populate-prefix/src/fastertransformer-populate-stamp/fastertransformer-populate-patch: fastertransformer-populate-prefix/src/fastertransformer-populate-stamp/fastertransformer-populate-update
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/root/punica/build/fastertransformer/_deps/fastertransformer-subbuild/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "No patch step for 'fastertransformer-populate'"
	/usr/bin/cmake -E echo_append
	/usr/bin/cmake -E touch /root/punica/build/fastertransformer/_deps/fastertransformer-subbuild/fastertransformer-populate-prefix/src/fastertransformer-populate-stamp/fastertransformer-populate-patch

fastertransformer-populate-prefix/src/fastertransformer-populate-stamp/fastertransformer-populate-update:
.PHONY : fastertransformer-populate-prefix/src/fastertransformer-populate-stamp/fastertransformer-populate-update

fastertransformer-populate-prefix/src/fastertransformer-populate-stamp/fastertransformer-populate-test: fastertransformer-populate-prefix/src/fastertransformer-populate-stamp/fastertransformer-populate-install
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/root/punica/build/fastertransformer/_deps/fastertransformer-subbuild/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "No test step for 'fastertransformer-populate'"
	cd /root/punica/build/fastertransformer/_deps/fastertransformer-build && /usr/bin/cmake -E echo_append
	cd /root/punica/build/fastertransformer/_deps/fastertransformer-build && /usr/bin/cmake -E touch /root/punica/build/fastertransformer/_deps/fastertransformer-subbuild/fastertransformer-populate-prefix/src/fastertransformer-populate-stamp/fastertransformer-populate-test

fastertransformer-populate-prefix/src/fastertransformer-populate-stamp/fastertransformer-populate-update: fastertransformer-populate-prefix/src/fastertransformer-populate-stamp/fastertransformer-populate-download
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/root/punica/build/fastertransformer/_deps/fastertransformer-subbuild/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Performing update step for 'fastertransformer-populate'"
	cd /root/punica/build/fastertransformer/_deps/fastertransformer-src && /usr/bin/cmake -P /root/punica/build/fastertransformer/_deps/fastertransformer-subbuild/fastertransformer-populate-prefix/tmp/fastertransformer-populate-gitupdate.cmake

fastertransformer-populate: CMakeFiles/fastertransformer-populate
fastertransformer-populate: CMakeFiles/fastertransformer-populate-complete
fastertransformer-populate: fastertransformer-populate-prefix/src/fastertransformer-populate-stamp/fastertransformer-populate-build
fastertransformer-populate: fastertransformer-populate-prefix/src/fastertransformer-populate-stamp/fastertransformer-populate-configure
fastertransformer-populate: fastertransformer-populate-prefix/src/fastertransformer-populate-stamp/fastertransformer-populate-download
fastertransformer-populate: fastertransformer-populate-prefix/src/fastertransformer-populate-stamp/fastertransformer-populate-install
fastertransformer-populate: fastertransformer-populate-prefix/src/fastertransformer-populate-stamp/fastertransformer-populate-mkdir
fastertransformer-populate: fastertransformer-populate-prefix/src/fastertransformer-populate-stamp/fastertransformer-populate-patch
fastertransformer-populate: fastertransformer-populate-prefix/src/fastertransformer-populate-stamp/fastertransformer-populate-test
fastertransformer-populate: fastertransformer-populate-prefix/src/fastertransformer-populate-stamp/fastertransformer-populate-update
fastertransformer-populate: CMakeFiles/fastertransformer-populate.dir/build.make
.PHONY : fastertransformer-populate

# Rule to build all files generated by this target.
CMakeFiles/fastertransformer-populate.dir/build: fastertransformer-populate
.PHONY : CMakeFiles/fastertransformer-populate.dir/build

CMakeFiles/fastertransformer-populate.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/fastertransformer-populate.dir/cmake_clean.cmake
.PHONY : CMakeFiles/fastertransformer-populate.dir/clean

CMakeFiles/fastertransformer-populate.dir/depend:
	cd /root/punica/build/fastertransformer/_deps/fastertransformer-subbuild && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /root/punica/build/fastertransformer/_deps/fastertransformer-subbuild /root/punica/build/fastertransformer/_deps/fastertransformer-subbuild /root/punica/build/fastertransformer/_deps/fastertransformer-subbuild /root/punica/build/fastertransformer/_deps/fastertransformer-subbuild /root/punica/build/fastertransformer/_deps/fastertransformer-subbuild/CMakeFiles/fastertransformer-populate.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/fastertransformer-populate.dir/depend

