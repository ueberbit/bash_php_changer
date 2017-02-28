#!/bin/bash

array_contains () { 
  local array="$1[@]"
  local seeking=$2
  local in=1
  for element in "${!array}"; do
    if [[ $element == $seeking ]]; then
      in=0
      break
    fi
    done
  return $in
}

#declare -a versions; update-alternatives --list php | while read version; do versions+=${version: -3}; done
#versions=($(update-alternatives --list php | while read version; do echo -n ${version: -3}; echo -n " "; done; echo))
#echo $versions

if [ ${#versions[@]} -eq 0 ]; then
  echo -n "Could not get versions from update-alternatives - using default versions: "
  versions=(5.5 5.6 7.0)
else
  echo -n "Found the following available php-versions: "
fi
echo ${versions[*]}

if array_contains versions $1; then
  sudo a2dismod php7.1
  sudo a2dismod php7.0
  sudo a2dismod php5.6
  sudo a2enmod php$1
  sudo service apache2 restart
  sudo ln -sfn /usr/bin/php$1 /etc/alternatives/php
else
  echo "Version not supported"
fi
