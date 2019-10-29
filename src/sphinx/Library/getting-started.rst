.. _GettingStarted:

===============
Getting Started
===============

After working through this chapter should be able to build the base library SSBL and run the examples. 
Skip this chapter if you are rather interested in `ROS / ROS2 <RosFramework>`_  or `NVIDIA Isaac <IsaacFramework>`_.


Obtain the Source Code
======================
Checkout the main repository ``sick_scan_base`` in a folder of your choice by issuing:

.. code-block:: console

  git clone https://github.com/SickScan/sick_scan_base.git 
  
which will give you something like:

.. code-block:: console
  
  Cloning into 'sick_scan_base'...
  remote: Enumerating objects: 18, done.
  remote: Counting objects: 100% (18/18), done.
  remote: Compressing objects: 100% (16/16), done.
  Rremote: Total 808 (delta 4), reused 12 (delta 2), pack-reused 790eceiving objects:  9
  Receiving objects: 100% (808/808), 892.05 KiB | 2.05 MiB/s, done.
  Resolving deltas: 100% (342/342), done.

Now create build directory and ``cd`` into it:

.. code-block:: console

  cd sick_scan_base
  mkdir build
  cd build


Configure, Build and Install
============================
CMake is a meta-build system to generate native build system files (MSBuild, ninja, make, etc.). Building CMake projects usually involves two to three steps:

1. A configuration step, in which CMake generates build files for the native build system
2. A build step, in which the native build system is called and the binaries are created
3. An optional installation step in which binaries, headers and other files are copied to a user defined installation directory

Unfortunatelly, CMake is not able to fully abstract the underlying native build system. Therefore, configuration parameters and steps vary slightly between OS / Build System / Compiler. The following sequences will build a static and a shared version of the library in debug and release mode and install the library in ``sick_scan_base/build/install``.

Windows, Visual Studio 2015,17,19 IDE, MSBuild, and Visual C++ or LLVM Compiler
-------------------------------------------------------------------------------

1. Configure the project, architecture is set up at configuration time

.. code-block:: console

  # 64 Bit builds
  cmake -G"Visual Studio 16 2019" -A"x64"            -DCMAKE_INSTALL_PREFIX=./install ..
  cmake -G"Visual Studio 15 2017 Win64"              -DCMAKE_INSTALL_PREFIX=./install ..
  cmake -G"Visual Studio 14 2015 Win64"              -DCMAKE_INSTALL_PREFIX=./install ..
  cmake -G"Visual Studio 16 2019" -A"x64" -T"llvm"   -DCMAKE_INSTALL_PREFIX=./install ..  

  # 32 Bit builds
  cmake -G"Visual Studio 16 2019" -A"Win32"          -DCMAKE_INSTALL_PREFIX=./install ..
  cmake -G"Visual Studio 15 2017"                    -DCMAKE_INSTALL_PREFIX=./install ..
  cmake -G"Visual Studio 14 2015"                    -DCMAKE_INSTALL_PREFIX=./install ..
  cmake -G"Visual Studio 16 2019" -A"Win32" -T"llvm" -DCMAKE_INSTALL_PREFIX=./install ..


2. Build and install the library in debug and release mode

.. code-block:: console

  cmake --build . --target install --config Debug
  cmake --build . --target install --config Release


Linux, No IDE, Ninja, GCC
-------------------------

1. Configure the project, architecture and build mode is set up at configuration time

.. code-block:: console

  # 64 Bit builds
  cmake -G"Ninja" -DCMAKE_BUILD_TYPE=Debug -DCMAKE_INSTALL_PREFIX=./install ..
  
  # 32 Bit builds
  cmake -G"Ninja" -DSSBL_32BIT=1 -DCMAKE_BUILD_TYPE=Debug -DCMAKE_INSTALL_PREFIX=./install ..  

2. Build and install the library

.. code-block:: console

  cmake --build . --target install

3. Reconfigure the project to be build in release mode

.. code-block:: console

  # 64 Bit builds
  cmake -G"Ninja" -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX=./install ..
  # 32 Bit builds
  cmake -G"Ninja" -DSSBL_32BIT -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX=./install ..  

4. Build and install the library

.. code-block:: console

  cmake --build . --target install


Additional CMake Command Line Arguments
=======================================

The are a few CMake variables which can be set to adjust the build process when configuring the project.




.. code-block:: console

  -DVARIABLE"value"








