#######################################################################################################
# Boilerplate for CMake
#######################################################################################################


#######################################################################################################
# GenerateDocumentation()
#######################################################################################################
function(GenerateDocumentation)
  
  set_property(GLOBAL PROPERTY USE_FOLDERS ON)
  
  find_package(Doxygen)
  if (DOXYGEN_FOUND)
    set(DOXYGEN_IN ${CMAKE_CURRENT_SOURCE_DIR}/doxygen/Doxyfile.in)
    set(DOXYGEN_OUT ${CMAKE_CURRENT_BINARY_DIR}/Doxyfile)
    configure_file(${DOXYGEN_IN} ${DOXYGEN_OUT} @ONLY)
    add_custom_target( RunDoxygen
      DEPENDS SSBL-Download
      COMMAND ${DOXYGEN_EXECUTABLE} ${DOXYGEN_OUT}
      WORKING_DIRECTORY ${CMAKE_CURRENT_BINARY_DIR}
      VERBATIM )
    set_target_properties (RunDoxygen PROPERTIES FOLDER Documentation)
      
  else ()
    message(STATUS "GenerateDocumentation: Doxygen was not found")
    message(STATUS "GenerateDocumentation: Not creating target GenerateDoxygenDocumentation")
  endif ()


  find_package(Sphinx)
  if (SPHINX_FOUND)
    set(SPHINX_SOURCE ${CMAKE_CURRENT_SOURCE_DIR}/sphinx)
    set(SPHINX_BUILD ${CMAKE_CURRENT_BINARY_DIR}/sphinx)

    add_custom_target(RunSphinx ALL
                      COMMAND
                      ${SPHINX_EXECUTABLE} -b html
                      -Dbreathe_projects.SSBL=${SPHINX_BUILD}/../doxygen/xml
                      ${SPHINX_SOURCE} ${SPHINX_BUILD}
                      WORKING_DIRECTORY ${CMAKE_CURRENT_BINARY_DIR}
                      DEPENDS  RunDoxygen)
    set_target_properties (RunSphinx PROPERTIES FOLDER Documentation)
  else ()
    message(STATUS "GenerateDocumentation: Sphinx was not found")
    message(STATUS "GenerateDocumentation: Not creating target Sphinx")
  endif ()
endfunction()


