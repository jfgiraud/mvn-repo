#!/bin/bash

file=$1

if [[ -z "$file" ]]; then
    echo "jar a specifier"
    exit 1
fi

file=$(readlink -f $file)

here=$(dirname $(readlink -f $0))


cd $(dirname $file)/..

echo $file

version=$(echo $file | sed -e 's/.*temmental-//' -e 's/.jar//')

echo $version

mvn deploy:deploy-file -Durl=file://$here/repository -Dfile=$file -DgroupId=com.github.jfgiraud -DartifactId=temmental -Dpackaging=jar -Dversion=$version
