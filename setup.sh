#!/bin/sh

echo 'Creating temporary directory...'
rm -rf .tmp
mkdir .tmp
cd .tmp

echo 'Downloading vgmstream_cli...'
wget -q https://github.com/vgmstream/vgmstream/releases/download/r1050-3448-g77cc431b/vgmstream_cli.zip
echo 'Extracting and setting permissions...'
7z e -aoa vgmstream_cli.zip -o../libs vgmstream_cli > /dev/null
chmod +x ../libs/vgmstream_cli

echo 'Downloading QuickBMS...'
wget -q https://aluigi.altervista.org/papers/quickbms_linux.zip
echo 'Extracting and setting permissions...'
7z e -aoa quickbms_linux.zip -o../libs quickbms > /dev/null
chmod +x ../libs/quickbms

echo 'Cleaning up...'
cd ..
rm -r .tmp

echo 'Setup complete'
exit 0
