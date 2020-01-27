#!/bin/sh

KEXT_PATHS=("../OpenCore/EFI/OC/Kexts/" \
    "../Clover/10.13.6/EFI/CLOVER/kexts/Other/" \
    "../Clover/10.14.6/EFI/CLOVER/kexts/Other/")

if [ "$#" -eq 0 ]
then
  echo "Usage: $(basename $0) [file.kext]"
  echo "Example:"
  echo "  $(basename $0) /User/user/Downloads/MyKext.kext"
  exit 1
fi

FILENAME=$(basename ${1})
for PATH in ${KEXT_PATHS[@]}; do
  echo "Updating ${1} on ${PATH}"

  if [ -d "${PATH}/${FILENAME}" ]
  then
    echo "Old kext exists, removing..."
    /bin/rm -rf ${PATH}/${FILENAME}
  fi
  echo "Copying ${1} to ${PATH}"
  /bin/cp -R ${1} ${PATH}

  echo "Done for ${x}"
  echo ""

done