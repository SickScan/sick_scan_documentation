=====
Setup
=====

System Requirements
===================

- OS

  - Windows 10 
  - Ubuntu 18.04

- Required Tools

  - `GIT <https://git-scm.com/downloads>`_
  - `CMake (>= V3.10) <https://cmake.org/download>`_ 
  - `Python (>= V3.7) <https://www.python.org/downloads/>`_ (optional)
  - `Ninja <https://ninja-build.org>`_ (Linux)
  
.. note::
  You are not required to add the tools to your system's path, but throughout the documentation we assume that they are.
    
On Linux you can simply type:

.. code-block:: console

  sudo apt-get install cmake git python3



Pick your IDE / Compiler
========================
Throughout the samples we will use `Visual Studio Code <https://code.visualstudio.com/>`_ as it is available
on Linux and Windows. In case you are not familiar with it, there is a brief `tutorial here <https://code.visualstudio.com/docs/languages/cpp/>`_.

.. raw:: html

  <embed>
    <style type="text/css">
      .tg  {border-collapse:collapse;border-spacing:0;}
      .tg td{font-family:Arial, sans-serif;font-size:14px;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;border-color:black;}
      .tg th{font-family:Arial, sans-serif;font-size:14px;font-weight:normal;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;border-color:black;}
      .tg .tg-cly1green{text-align:center;vertical-align:middle;background:#4dff4d}
      .tg .tg-cly1{text-align:center;vertical-align:middle;background:LightGray}
      .tg .tg-0lax{text-align:left;vertical-align:top}
      .tg .tg-0laxh{text-align:center;vertical-align:top}
      .tg .tg-jpc1{font-size:10px;text-align:left;vertical-align:top}

      </style>
      <table class="tg">
        <tr>
          <th class="tg-0lax" style="border:none"></th>
          <th class="tg-0lax" style="border:none"></th>
          <th class="tg-0lax" colspan="6" style="text-align:center"><span style="font-weight:600">Compiler</span></th>
        </tr>
        <tr>
          <td class="tg-0lax" style="border:none"></td>
          <td class="tg-0lax" style="border:none"></td>
          <td class="tg-0lax" colspan="5" style="text-align:center"><span style="font-weight:600">Windows</span></td>
          <td class="tg-0lax" style="text-align:center"><span style="font-weight:600">Linux</span></td>
        </tr>
        
        <tr>
          <td class="tg-0lax" style="border:none"></td>
          <td class="tg-0lax" style="border:none"></td>
          <td class="tg-0laxh"><span style="font-weight:600">Visual C++<br>14.2</span></td>
          <td class="tg-0laxh"><span style="font-weight:600">Visual C++<br>14.1</span></td>
          <td class="tg-0laxh"><span style="font-weight:600">Visual C++<br>14.0</span></td>
          <td class="tg-0laxh"><a href="https://llvm.org"><span style="font-weight:600">LLVM <br> 8.x</span></td>
          
          <td class="tg-0laxh"><a href="https://mingw-w64.org/doku.php"><span style="font-weight:600">Mingw-w64</span></a></td>

         
          <td class="tg-0laxh"> <span style="font-weight:600">GCC <br> 7.4.0</span></td>
        </tr>
        <tr>
          <td rowspan="5">IDE</td>
          <td class="tg-0lax"><a href="https://visualstudio.microsoft.com"> <span style="font-weight:600">Visual Studio 2019<br> Community Edition</span></td>
          <td class="tg-cly1green">Extension</td>
          <td class="tg-cly1green">Extension</td>
          <td class="tg-cly1green">Extension</td>
          <td class="tg-cly1green">Extension</td>
          <td class="tg-cly1"></td>
          <td class="tg-cly1"></td>
        </tr>
        <tr>
          <td class="tg-0lax"><a href="https://visualstudio.microsoft.com"> <span style="font-weight:600">Visual Studio 2017<br> Community Edition</span></td>
          <td class="tg-cly1"></td>
          <td class="tg-cly1green">Extension</td>
          <td class="tg-cly1green">Extension</td>
          <td class="tg-cly1green"><a href="https://marketplace.visualstudio.com/items?itemName=LLVMExtensions.llvm-toolchain"><span> Plugin</span></td>
          <td class="tg-cly1"></td>
          <td class="tg-cly1"></td>
        </tr>
        <tr>
          <td class="tg-0lax"><a href="https://visualstudio.microsoft.com"> <span style="font-weight:600">Visual Studio 2015<br> Community Edition</span></td>
          <td class="tg-cly1"></td>
          <td class="tg-cly1"></td>
          <td class="tg-cly1green">Extension</td>
          <td class="tg-cly1"></td>
          <td class="tg-cly1"></td>
          <td class="tg-cly1"></td>
        </tr>
        <tr>
          <td class="tg-0lax"><a href="https://code.visualstudio.com"><span style="font-weight:600">Visual Studio Code</span></td>
          <td class="tg-cly1green">Requires <br> Visual Studio 2019</td>
          <td class="tg-cly1green">Requires <br> Visual Studio 2017</td>
          <td class="tg-cly1green">Requires <br> Visual Studio 2015</td>
          <td class="tg-cly1green">x</td>
          <td class="tg-cly1green">x</td>
          <td class="tg-cly1green">x</td>
        </tr>
        <tr>
          <td class="tg-0lax"><a href="https://www.eclipse.org/downloads"><span style="font-weight:600">Eclipse for C++</span></td>
          <td class="tg-cly1"></td>
          <td class="tg-cly1"></td>
          <td class="tg-cly1"></td>
          <td class="tg-cly1"></td>
          <td class="tg-cly1green">x</td>
          <td class="tg-cly1green">x</td>
        </tr>
      </table>
      <br>
  </embed>
.. note::
  When using a Visual Compiler Framework make sure to install not only the Visual Studio IDE but also the C++ Development Tools (enable them during installation or afterwards by running the installer once again).

.. note::
  | The table above provides a list of combinations we have tested. To get an exhaustive list of all project generators provided by CMake type: 
  
  .. code-block:: console
  
      cmake -G
      
  | If asked for a **recommendation**:  
  | On **Windows**, we would go with plain VS2019 and it's built-in Visual C++ 14.2 compiler.
  | On **Linux**, we would go with VS Code and GCC.