.. _Licensing:

=========
Licensing
=========

The `SickScan <https://github.com/SickScan>`_ repositories: 

- `SICK Scan Base Library (SSBL) <https://github.com/SickScan/sick_scan_base>`_
- `SICK Scan Base Library Link Example <https://github.com/SickScan/sick_scan_base_link_example>`_
- `NVIDIA Isaac Integration Layer <https://github.com/SickScan/sick_scan_nvidia_isaac>`_
- `ROS Integration Layer <https://github.com/SickScan/sick_scan_ros>`_
- `Documentation <https://github.com/SickScan/sick_scan_documentation>`_

are licensed under the permissive Apache License V2.0. 

The base libray `SSBL <https://github.com/SickScan/sick_scan_base>`_ will require an application to link against standard libraries (ws_32.lib, pthread) to which you presumably have to link anyway. 

The examples within `SSBL <https://github.com/SickScan/sick_scan_base>`_ link against:

- TinyXML (`ZLib license <https://en.wikipedia.org/wiki/Zlib_License>`_)
- TooJpeg (`ZLib license <https://en.wikipedia.org/wiki/Zlib_License>`_)

The source code of these libraries is included within the repository of `SSBL <https://github.com/SickScan/sick_scan_base>`_, but they 
are build as separart libraries and only linked by the examples - not the base library itself.

Efforts have been made to mention the authors of code snippets that have been found online and integrated into SSBL. 
Please create an issue if you feel that your work has not been mentioned appropriately.