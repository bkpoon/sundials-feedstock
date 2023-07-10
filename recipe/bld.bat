mkdir build
cd build

cmake ^
    -G "NMake Makefiles" ^
    -DCMAKE_PREFIX_PATH=%LIBRARY_PREFIX% ^
    -DCMAKE_INSTALL_PREFIX=%LIBRARY_PREFIX% ^
    -DCMAKE_BUILD_TYPE=Release ^
    -DBUILD_FORTRAN_MODULE_INTERFACE=ON ^
    -DBUILD_SHARED_LIBS=OFF ^
    -DBUILD_STATIC_LIBS=ON ^
    -DEXAMPLES_ENABLE_C=ON ^
    -DEXAMPLES_INSTALL=OFF ^
    -DENABLE_OPENMP=OFF ^
    -DENABLE_LAPACK=OFF ^
    ..

nmake
nmake install
