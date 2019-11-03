# *** for Hera (intel) ***
 $rinst && {
   grep -E "(^|:|/)w3emc/" <<< "$LOADEDMODULES" &> /dev/null \
    || module load w3emc/2.3.1
   grep -E "(^|:|/)sigio/" <<< "$LOADEDMODULES" &> /dev/null \
    || module load sigio/2.1.1
   grep -E "(^|:|/)nemsio/" <<< "$LOADEDMODULES" &> /dev/null \
    || module load nemsio/2.2.4
 }

 export CC=icc
 export FC=ifort
 export CPP=cpp
 export OMPCC="$CC -qopenmp"
 export OMPFC="$FC -qopenmp"
 export MPICC=mpiicc
 export MPIFC=mpiifort

 export DEBUG="-g -traceback -O0"
 export CFLAGS="-g -O3 -ftz -traceback -xHOST -axcore-avx512 -fPIC"
 export FFLAGS="-g -O3 -ftz -traceback -fpe0 -xHOST -axcore-avx512 -fPIC"
 export FPPCPP="-cpp"
 export FREEFORM="-free"
 export CPPFLAGS="-P -traditional-cpp"
 export MPICFLAGS="-g -O3 -ftz -traceback -xHOST -axcore-avx512 -fPIC"
 export MPIFFLAGS="-g -O3 -ftz -traceback -fpe0 -xHOST -axcore-avx512 -fPIC"
 export MODPATH="-module "
 export I4R4="-integer-size 32 -real-size 32"
 export I4R8="-integer-size 32 -real-size 64"
 export I8R8="-integer-size 64 -real-size 64"
 export NETCDFPATH="/apps/netcdf/4.3.0-intel"
 export NETCDF_LIB="-L${NETCDFPATH}/lib -lnetcdf -lnetcdff"
 export NETCDF_INC="-I${NETCDFPATH}/include"
 export FCOMP=ifort
 export FFLAGS="-O3"

 export CPPDEFS=""
 export CFLAGSDEFS="-DUNDERSCORE -DLINUX"
 export FFLAGSDEFS=""

 export USECC=""
 export USEFC="YES"
 export DEPS="NEMSIO $NEMSIO_VER, SIGIO $SIGIO_VER"
