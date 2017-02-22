#!/bin/bash

LOCAL_DIR=$( pwd )/Cluster
CHART=/
NF_MIDAS_DIR=${LOCAL_DIR%$CHART*}
BINFOLDER=${NF_MIDAS_DIR}/bin

##### Put correct folder paths
configdir=${HOME}/.MIDAS
configfile=${configdir}/pathsNF
echo "BINFOLDER=${BINFOLDER}/" > ${configfile}
echo "PFDIR=${LOCAL_DIR}/" >> ${configfile}
echo "SWIFTDIR=${HOME}/.MIDAS/swift/bin/" >> ${configfile}
echo "MACHINE_NAME=${1}" >> ${configfile}
ln -s ${LOCAL_DIR}/runSingleLayer.sh ${configdir}/MIDAS_V4_NearFieldSingleLayer
ln -s ${LOCAL_DIR}/runMultipleLayers.sh ${configdir}/MIDAS_V4_NearFieldMultipleLayers
ln -s ${LOCAL_DIR}/runNFParameters.sh ${configdir}/MIDAS_V4_NearFieldParameters

echo "Congratulations, you can now use MIDAS to run NeField analysis"
echo "Go to ${HOME}/.MIDAS folder, there is MIDAS_V4_NearField.....sh files for running analysis"
