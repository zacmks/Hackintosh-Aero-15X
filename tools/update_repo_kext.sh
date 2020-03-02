#!/bin/sh
# encoding: utf-8
#
# Copyright 2020 Isaac Saito.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

#KEXT_PATHS=("../OpenCore/EFI/OC/Kexts/" \
#    "../Clover/10.13.6/EFI/CLOVER/kexts/Other/" \
#    "../Clover/10.14.6/EFI/CLOVER/kexts/Other/")
KEXT_PATHS=("../OpenCore/EFI/OC/Kexts/)

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