===============
Getting Started
===============
  
Obtain the source code
======================
Library, samples and documentation are kept within separate repositories. The repository ``sick_scan_project`` is a container to bring all of them together. To download the container execute the following commands in folder of your choice:

.. code-block:: console

  git clone https://github.com/SickScan/sick_scan_project.git ssbl-demo
  
Then checkout the sources:

.. code-block:: console
  
  cd ssbl-demo
  python3 CloneRepos.py

**CloneRepos.py** is an alternate way to using GIT submodules. When called, it populates the sub-folder ``src`` using GIT commands. Check its output for *git clone* and *git checkout* or have a look into the file to figure out which versions are bundled at moment (for now, we always want HEAD).

.. code-block:: console

  git clone https://github.com/SickScan/sick_scan_base.git src/ssbl
  Cloning into 'src/ssbl'...
  remote: Enumerating objects: 189, done.
  remote: Counting objects: 100% (189/189), done.
  remote: Compressing objects: 100% (139/139), done.
  remote: Total 189 (delta 42), reused 178 (delta 35), pack-reused 0
  Receiving objects: 100% (189/189), 119.49 KiB | 675.00 KiB/s, done.
  Resolving deltas: 100% (42/42), done.
  git fetch --all
  git clone https://github.com/SickScan/sick_scan_base_examples.git src/examples
  Cloning into 'src/examples'...
  remote: Enumerating objects: 4, done.
  remote: Counting objects: 100% (4/4), done.
  remote: Compressing objects: 100% (3/3), done.
  remote: Total 4 (delta 0), reused 0 (delta 0), pack-reused 0
  Unpacking objects: 100% (4/4), done.
  git fetch --all
  git clone https://github.com/SickScan/sick_scan_documentation.git src/documentation
  Cloning into 'src/documentation'...
  remote: Enumerating objects: 37, done.
  remote: Counting objects: 100% (37/37), done.
  remote: Compressing objects: 100% (28/28), done.
  remote: Total 37 (delta 7), reused 30 (delta 3), pack-reused 0
  Unpacking objects: 100% (37/37), done.
  git fetch --all

Build and Install SSBL
=======================

Building and installing the library involves the following two CMake steps:

1. Configure / Generate the project so that it can be build using your prefered toolchain
2. Build (create binaries for debug and release) and install (copy binaries, headers, other relevant parts to the desired installation directory)




Windows 10
----------

Configure and Generate the Library
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Run one of the following commands...

.. code-block:: console

  # Windows 64 Bit builds
  cmake -G"Visual Studio 16 2019" -A"x64"  ../src/ssbl/src            
  cmake -G"Visual Studio 15 2017 Win64" ../src/ssbl/src       
  cmake -G"Visual Studio 14 2015 Win64" ../src/ssbl/src            
  cmake -G"Visual Studio 16 2019" -A"x64" -T"llvm" ../src/ssbl/src       
  cmake -G"Eclipse CDT4 - MinGW Makefiles" ../src/ssbl/src


.. code-block:: console

  # Windows 32 Bit builds
  cmake -G"Visual Studio 16 2019" -A"Win32" ../src/ssbl/src
  cmake -G"Visual Studio 15 2017" ../src/ssbl/src
  cmake -G"Visual Studio 14 2015" ../src/ssbl/src
  cmake -G"Visual Studio 16 2019" -A"Win32" -T"llvm" ../src/ssbl/src
  cmake -G"Eclipse CDT4 - MinGW Makefiles" -DSSBL_32BIT ../src/ssbl/src

Build and Install the Library
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Build and install the debug and the release target using:

.. code-block:: console

  cmake --build . --target install --config Debug
  cmake --build . --target install --config Release


Linux
-----

Configure, Generate, Build and Install the Debug Configuration
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. code-block:: console

  cmake -G"Eclipse CDT4 - Ninja" -DCMAKE_BUILD_TYPE=Debug ../src
  cmake --build . --target install --config Debug


Configure, Generate, Build and Install the Release Configuration
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. code-block:: console

  cmake -G"Eclipse CDT4 - Ninja" -DCMAKE_BUILD_TYPE=Release ../src
  cmake --build . --target install --config Release


Additional Build Flags
----------------------

The installation directory can be changed by adding:

.. code-block:: console

  -DSSBL_INSTALL_DIR="your preferd installation directory"



Build the Samples
=================




