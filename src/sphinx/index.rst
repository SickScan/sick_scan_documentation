.. SSBL documentation master file, created by
   sphinx-quickstart on Tue Oct  8 22:46:36 2019.
   You can adapt this file completely to your liking, but it should at least
   contain the root `toctree` directive.

================================
SICK AG Scan Base Library (SSBL)
================================

.. warning::
  **!!! Experimental !!!**

  This documentation accompanies the repositories at `https://github.com/SickScan <https://github.com/SickScan>`_. Everything found here is in an experimental stage and is subject to be changed. 
  If you’re looking for C++ / ROS drivers please consider the released repositories `sick_scan_base <https://github.com/SICKAG/sick_scan_base>`_ or `sick_scan <https://github.com/SICKAG/sick_scan>`_ until we are ready to replace / update them.

.. raw:: html

   <ul class="grid">
      <li class="grid-item">
	      <a href="Introduction/directions.html">
	      <img alt="" src="_static/img/Information.png"/>
	      <h2>Introduction</h2>
	      </a>
	      <p>General Information: Overview, Supported Hardware and Licensing</p>
     </li>
      <li class="grid-item">
	      <a href="Library/prerequisites.html">
	      <img alt="" src="_static/img/Library.png"/>
	      <h2>Scan Base Library</h2>
	      </a>
	      <p>C++ Library: Getting Started, Build Instructions and Samples</p>
     </li>
     <li class="grid-item">
	      <a href="Frameworks/ros/ros.html">
	      <img alt="" src="_static/img/Frameworks.png"/>
	      <h2>Frameworks</h2>
	      </a>
	      <p>Robotic Frameworks: Build Instructions and Documentation</p>
     </li>
  </ul> 

.. toctree::
  :hidden:
  
  self

.. toctree::
  :maxdepth: 2
  :caption: Introduction

  Introduction/directions
  Introduction/contributing
  Introduction/supported_sensors
  Introduction/licensing
  Introduction/faqs
  
.. toctree::
    :maxdepth: 2
    :caption: Scan Base Library

    Library/prerequisites
    Library/getting-started
..   samples-basic
    samples-advanced

.. toctree::
    :maxdepth: 2
    :caption: Framework Integration

    Frameworks/ros/ros
    Frameworks/isaac/isaac


