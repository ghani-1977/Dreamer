#!/bin/bash
echo ""
echo "meta-dream by Hains, Persian Prince and MastaG"
echo ""
echo "https://github.com/DMM-PLi"
echo ""
echo "pyro branch, Compatible rev: 87c3ea9a844819315d724d11bc09fe6cc9d67bd4"
echo ""
echo "You must run this script only once!"
echo ""
rm -rf meta-dream
git clone -b pyro https://github.com/DMM-PLi/meta-dream.git
rm -f meta-openpli/recipes-openpli/enigma2-plugins/enigma2-plugin-extensions-openwebif.bbappend
rm -f meta-openpli/recipes-connectivity/autossh/autossh_1.4c.bb
rm -f meta-openpli/recipes-filesystems/smbnetfs/smbnetfs_git.bbappend
cp -R meta-dream/recipes-daemons/vsftpd/ meta-openpli/recipes-daemons/
cp -f meta-dream/recipes-connectivity/inadyn-mt/inadyn-mt.bb meta-openpli/recipes-connectivity/inadyn-mt/inadyn-mt.bb
