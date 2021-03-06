#!/bin/sh -l

# Exit immediately if a command exits with a non-zero status.
set -e

hemttPath='hemtt'

$hemttPath --version

$hemttPath build --release --force

# $hemttPath zip {{name}}_{{version}}
$hemttPath zip mod

# set outputs
# zipName=`$hemttPath template {{name}}_{{version}}`
zipName='mod'
zipPath="releases/$zipName.zip"
echo ::set-output name=zip_name::$zipName
echo ::set-output name=zip_path::$zipPath
