#!/bin/bash
export JAVA_HOME=/usr/lib/jvm/java-6-openjdk-amd64/


INSTALL_DIR="$HOME/domsgui"

export TMPDIR=$HOME/tmp
mkdir -p $TMPDIR

installer="/target/guitestbed-*-testbed.tar.gz"

echo "Getting doms from $installer"

tar -xzf $installer
rm -rf $INSTALL_DIR
installerDir=$(find * -maxdepth 0 -type d -name 'guitestbed-*' | head -1)
echo $installerDir

echo "FEDORASERVERNAME=doms-testbed" >> $installerDir/bin/setenv.sh
echo "GUISERVERNAME=localhost" >> $installerDir/bin/setenv.sh

$installerDir/bin/install.sh $INSTALL_DIR

rm -r $installerDir