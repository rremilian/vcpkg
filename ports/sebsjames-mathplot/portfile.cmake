set(VCPKG_BUILD_TYPE release)

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO rremilian/mathplot
    REF "feat/use_maths_from_vcpkg"
    SHA512 61f566af8b40beb60499cfe9a04ebe6f713ade0041a26170c08f70195f9b8d3788f4acac71169a63ddcc88fa5ae97f12fbac87de04db09bfbce5e5f836ec5821 
)

vcpkg_cmake_configure(
    SOURCE_PATH "${SOURCE_PATH}"
    OPTIONS
        -DBUILD_EXAMPLES=OFF
	-DBUILD_TESTS=OFF
)
vcpkg_cmake_install()

file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/lib")

vcpkg_install_copyright(FILE_LIST "${SOURCE_PATH}/LICENSE.txt")
