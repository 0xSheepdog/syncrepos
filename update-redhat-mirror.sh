/#!/bin/sh
reposync -gdlmnq --download-metadata -p /net/host11.spde.local/data/repos/redhat
#reposync -gdlmnq --download-metadata -p /net/host11.spde.local/data/repos/redhat --repoid=rhel-7-server-rpms
#reposync -gdlmnq --download-metadata -p /net/host11.spde.local/data/repos/redhat --repoid=rhel-7-server-optional-rpms
#reposync -gdlmnq --download-metadata -p /net/host11.spde.local/data/repos/redhat --repoid=rhel-7-server-extras-rpms
#reposync -gdlmnq --download-metadata -p /net/host11.spde.local/data/repos/redhat --repoid=rhel-7-server-ansible-2-rpms

/bin/createrepo -p -g /data/repos/redhat/rhel-7-server-rpms/comps.xml -o /data/repos/redhat/rhel-7-server-rpms --baseurl=http://mirror.spde.local/redhat/rhel-7-server-rpms /data/repos/redhat/rhel-7-server-rpms
/bin/createrepo -p -g /data/repos/redhat/rhel-7-server-extras-rpms/comps.xml -o /data/repos/redhat/rhel-7-server-extras-rpms --baseurl=http://mirror.spde.local/redhat/rhel-7-server-extras-rpms /data/repos/redhat/rhel-7-server-extras-rpms
/bin/createrepo -p -g /data/repos/redhat/rhel-7-server-optional-rpms/comps.xml -o /data/repos/redhat/rhel-7-server-optional-rpms --baseurl=http://mirror.spde.local/redhat/rhel-7-server-optional-rpms /data/repos/redhat/rhel-7-server-optional-rpms
/bin/createrepo -p -g /data/repos/redhat/rhel-7-server-optional-rpms/comps.xml -o /data/repos/redhat/rhel-7-server-optional-rpms --baseurl=http://mirror.spde.local/redhat/rhel-7-server-optional-rpms /data/repos/redhat/rhel-7-server-optional-rpms
