#!/usr/bin/env bash
set -e -u
set -o pipefail
mkdir -p ${PACKAGES}
cd ${PACKAGES}

# xz
echoerr 'building xz'
tar xf xz-5.0.3.tar.bz2
cd xz-5.0.3
./configure --prefix=${BUILD}
$MAKE -j$JOBS
$MAKE install
cd ${PACKAGES}

# nose
#tar xf nose-1.2.1.tar.gz
#cd nose-1.2.1
#sudo python3.3 setup.py install
# sudo will hang script
#sudo python setup.py install
#cd ${PACKAGES}
