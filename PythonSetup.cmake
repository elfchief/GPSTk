#============================================================
#
# Name    = PythonSetup.cmake
# Purpose = Template for Manual Config of Python for SWIG Bindings
# Usage   = add "include( PythonSetup.cmake )" to the appropriate CMakeLists.txt
# Notes   = On systems where the user may have many installations
#           of python, CMake find_package( PythonLibs ) can often 
#           not find matching version numbers for the python library
#           and the python include files, and thus cannot build the
#           typemaps for wrapping the C++ code.
#           The template below helps the user specify explicitly
#           which components of their python install that CMake/SWIG
#           should use.
#============================================================

set( PYTHON "/usr/bin/python" )
set( PYTHON_EXECUTABLE "/usr/bin/python" CACHE FILEPATH "File Path to system python executable" ) 
set( PYTHON_LIBRARY "/usr/lib/libpython2.7.so" CACHE FILEPATH "File Path to system python shared object library" )
set( PYTHON_LIBRARIES "/usr/lib/libpython2.7.so" CACHE FILEPATH "File Path to system python shared object library" )  
set( PYTHON_INCLUDE_DIR "/usr/include/python2.7" CACHE PATH "Directory Path to system python includes" )
set( PYTHON_VERSION "2.7.6" CACHE VERSION "System Python version number" ) 

set( PYTHON_FOUND "TRUE" )
set( PYTHONLIBS_FOUND "TRUE" )

set( PYTHON_INSTALL_PREFIX $CMAKE_INSTALL_PREFIX )

if( DEBUG_SWITCH )
    message( STATUS "DEBUG: PythonConfig.cmake: PYTHON_FOUND             = ${PYTHON_FOUND}" )
    message( STATUS "DEBUG: PythonConfig.cmake: PYTHONLIBS_FOUND         = ${PYTHONLIBS_FOUND}" )
    message( STATUS "DEBUG: PythonConfig.cmake: PYTHON_VERSION           = ${PYTHON_VERSION}" )
    message( STATUS "DEBUG: PythonConfig.cmake: PYTHON                   = ${PYTHON}" )
    message( STATUS "DEBUG: PythonConfig.cmake: PYTHON_EXECUTABLE        = ${PYTHON_EXECUTABLE}" )
    message( STATUS "DEBUG: PythonConfig.cmake: PYTHON_LIBRARIES         = ${PYTHON_LIBRARIES}" )
    message( STATUS "DEBUG: PythonConfig.cmake: PYTHON_LIBRARY           = ${PYTHON_LIBRARY}" )
    message( STATUS "DEBUG: PythonConfig.cmake: PYTHON_INCLUDE_DIR       = ${PYTHON_INCLUDE_DIR}" )
    message( STATUS "DEBUG: PythonConfig.cmake: PYTHON_INSTALL_PREFIX    = ${PYTHON_INSTALL_PREFIX}" ) 
enif()

#============================================================
# The End
#============================================================