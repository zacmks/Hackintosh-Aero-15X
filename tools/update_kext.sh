#!/bin/sh

MACOS_VERSIONS=("10.13.6" "10.14.6" "10.15.1")

KEXT_PATH="/EFI/CLOVER/kexts/Other"

if [ "$#" -eq 0 ]
then
  echo "Usage: update_kext.sh [file.kext]"
  exit 1
fi

FILENAME=$(basename ${1})
for x in ${MACOS_VERSIONS[@]}; do
  echo "Updating ${1} for Mac OS ${x}..."
  PATH="../${x}${KEXT_PATH}/"

  if [ -d ${PATH}${FILENAME} ]
  then
    echo "Old kext exists, removing..."
    /bin/rm -rf ${PATH}${FILENAME}
  fi
  echo "Copying ${1} to ${PATH}"
  /bin/cp -R ${1} ${PATH}

  echo "Done for Mac OS ${x}"
  echo ""

done