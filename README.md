# SICK AG Scan Base Documentation Build

## Prerequisites
1. [CMake > 3.10](https://cmake.org/download/)
2. [Doxygen](http://www.doxygen.nl/download.html) and [Graphviz](https://graphviz.gitlab.io/download/) (add the bin folder of Graphviz to your system path)
3. [Python 3.7](https://www.python.org/downloads) and the extensions (install them via pip3)
    * Sphinx
    * Breathe
    * Exhale
    * sphinx_rtd_theme

    ```console
    pip3 install sphinx breathe exhale sphinx_rtd_theme
    ```

## Build

Obtain the source:
```console
git clone https://github.com/SickScan/sick_scan_documentation.git
cd sick_scan_documentation
mkdir build
cd build
```
Configure the project:
```console
cmake -G"<<< Your preferred Generator >>>" ..

    Example: VS2019
    cmake -G"Visual Studio 16 2019" ..
```
Build the project:
```console
cmake --build .
```

Open the index.html within ``build\src\sphinx`` to view the documentation.
