#!/bin/sh
# update existing repo (-d deletes packages removed from source repo, -n syncs newest packages only)

yum-config-manager --disable \*
yum-config-manager --enable epel
reposync -gdlm --download-metadata -p /data/repos/epel --repoid=epel
yum-config-manager --disable epel
yum-config-manager --enable base extras updates
