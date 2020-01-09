set(CPACK_GENERATOR "DEB")
set(CPACK_CMAKE_GENERATOR "Unix Makefiles")

set(CPACK_PACKAGE_NAME "cura-libarcus-dev")
set(CPACK_PACKAGE_VENDOR "Ultimaker B.V.")
set(CPACK_PACKAGE_DESCRIPTION "(Cura) libArcus library for amd64 architecture")
set(CPACK_PACKAGE_CONTACT "Lipu Fei <l.fei@ultimaker.com>")
set(CPACK_PACKAGING_INSTALL_PREFIX "/usr")
set(CPACK_PACKAGE_VERSION "4.5.0")
set(CPACK_DEBIAN_PACKAGE_RELEASE 1)
set(CPACK_PACKAGE_FILE_NAME "${CPACK_PACKAGE_NAME}_${CPACK_PACKAGE_VERSION}-${CPACK_DEBIAN_PACKAGE_RELEASE}_amd64")

set(CPACK_DEBIAN_PACKAGE_NAME "${CPACK_PACKAGE_NAME}")
set(CPACK_DEBIAN_PACKAGE_DESCRIPTION "${CPACK_PACKAGE_DESCRIPTION}")
set(CPACK_DEBIAN_PACKAGE_MAINTAINER "${CPACK_PACKAGE_CONTACT}")
set(CPACK_DEBIAN_PACKAGE_VERSION "${CPACK_PACKAGE_VERSION}")
set(CPACK_DEBIAN_FILE_NAME "${CPACK_PACKAGE_FILE_NAME}.deb")
set(CPACK_DEBIAN_PACKAGE_ARCHITECTURE "amd64")
set(CPACK_DEBIAN_PACKAGE_SECTION "devel")
set(CPACK_DEBIAN_PACKAGE_PRIORITY "optional")

set(_arcus_DEB_DEPENDS
  "python3 (>= 3.5.0)"
  "libgcc1 (>= 8.3.0)"
  "libstdc++6 (>= 8.3.0)"
  "libc6 (>= 2.28)"
  "cura-libprotobuf-mingw-w64-dev (>= 3.9.2)"
)
string(REPLACE ";" ", " _arcus_DEB_DEPENDS "${_arcus_DEB_DEPENDS}")
set(CPACK_DEBIAN_PACKAGE_DEPENDS "${_arcus_DEB_DEPENDS}")
