#!/usr/bin/env bash
set -v
export my_dir=`dirname $0`
echo $my_dir
export files=$@
echo files are $@
echo PWD 
pwd
CMD="flatpak run org.eclipse.Java -noSplash -application org.eclipse.jdt.core.JavaCodeFormatter -verbose -config ${my_dir}/Eclipse_builtin.xml"
echo $CMD
if [ -z "$files" ]
then
  export files='.'
else
  echo files were $filesba
fi
echo $CMD $files
$CMD $files
