#!/bin/bash

# Set permissions for all files in libexec/git-core
cd libexec/git-core/
sudo chmod 755 *

# Copy necessary Git binaries to /usr/bin
sudo cp git /usr/bin/
sudo cp git-shell /usr/bin/
sudo cp git-cvsserver /usr/bin/
sudo cp git-upload-pack /usr/bin/
sudo cp git-receive-pack /usr/bin/
sudo cp git-upload-archive /usr/bin/

# Copy git-core to /usr/libexec
cd ..
sudo cp -r git-core/ /usr/libexec/

# Copy git-core, gitweb, and perl5 to /usr/share
cd ../share/
sudo cp -r git-core/ /usr/share/
sudo cp -r gitweb/ /usr/share/
sudo cp -r perl5/ /usr/share/

echo "Git install successfully."
