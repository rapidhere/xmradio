find_program(COMPILE_SCHEMA glib-compile-schemas)
if (COMPILE_SCHEMA)
	message(STATUS "Compiling schemas...")
	execute_process(COMMAND ${COMPILE_SCHEMA} "${CMAKE_INSTALL_PREFIX}/share/glib-2.0/schemas")
else(COMPILE_SCHEMA)
	message(WARNING "Not found glib-compile-schemas")
endif()