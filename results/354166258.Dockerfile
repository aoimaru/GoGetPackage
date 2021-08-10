[app/sources/354166258.Dockerfile]
digraph {
  "sha256:eccdc23ae33ff032265281cdcd61b6bcb08837a6e55df3e7dcb5aef332534337" [label="docker-image://docker.io/library/centos:7" shape="ellipse"];
  "sha256:a6b8c0e005c1e51379687b5ffa13ad553c25c3876c6b085901fde7b7fec21693" [label="/bin/sh -c yum install -y wget &&     wget http://dl.fedoraproject.org/pub/epel/7/x86_64/e/epel-release-7-5.noarch.rpm &&     rpm -ivh epel-release-7-5.noarch.rpm &&     wget -P /etc/yum.repos.d http://download.gluster.org/pub/gluster/glusterfs/LATEST/EPEL.repo/glusterfs-epel.repo &&     yum install -y glusterfs-server glusterfs glusterfs-fuse jq curl &&     mv /var/lib/glusterd/hooks/1/set/post/S30samba-set.sh /var/lib/glusterd/hooks/1/set/post/dS30samba-set.sh &&     mv /var/lib/glusterd/hooks/1/start/post/S30samba-start.sh /var/lib/glusterd/hooks/1/start/post/dS30samba-start.sh &&     mv /var/lib/glusterd/hooks/1/stop/pre/S30samba-stop.sh /var/lib/glusterd/hooks/1/stop/pre/dS30samba-stop.sh" shape="box"];
  "sha256:a15b588deb276b7700a346fe341ff352bae68e36056304bd9c64869d13b63beb" [label="local://context" shape="ellipse"];
  "sha256:ef63c17b75547f73dbe046f2ce3198952dd1d38b6dc7d0916c1f5661a5948dbd" [label="copy{src=/*.sh, dest=/opt/rancher/}" shape="note"];
  "sha256:49be86558f033311ed140ce08762cd0223d2ab0167a24ac9852c3e7debc27385" [label="https://github.com/cloudnautique/giddyup/releases/download/v0.8.0/giddyup" shape="ellipse"];
  "sha256:b2abf9470df9fca82bc4993ed8de936ff4362897e6e682785b051a08e63da96f" [label="copy{src=/giddyup, dest=/usr/local/bin/giddyup}" shape="note"];
  "sha256:8a110e59cce6bb7b98c92d15a4fbaa820a03aa3b724b716c24e85ddfeaf9cd99" [label="/bin/sh -c chmod +x /usr/local/bin/giddyup" shape="box"];
  "sha256:a6807c8887250303a61dfc35331a3812a3da5c780f51cdb7d336bfa9bd7f7ad3" [label="sha256:a6807c8887250303a61dfc35331a3812a3da5c780f51cdb7d336bfa9bd7f7ad3" shape="plaintext"];
  "sha256:eccdc23ae33ff032265281cdcd61b6bcb08837a6e55df3e7dcb5aef332534337" -> "sha256:a6b8c0e005c1e51379687b5ffa13ad553c25c3876c6b085901fde7b7fec21693" [label=""];
  "sha256:a6b8c0e005c1e51379687b5ffa13ad553c25c3876c6b085901fde7b7fec21693" -> "sha256:ef63c17b75547f73dbe046f2ce3198952dd1d38b6dc7d0916c1f5661a5948dbd" [label=""];
  "sha256:a15b588deb276b7700a346fe341ff352bae68e36056304bd9c64869d13b63beb" -> "sha256:ef63c17b75547f73dbe046f2ce3198952dd1d38b6dc7d0916c1f5661a5948dbd" [label=""];
  "sha256:ef63c17b75547f73dbe046f2ce3198952dd1d38b6dc7d0916c1f5661a5948dbd" -> "sha256:b2abf9470df9fca82bc4993ed8de936ff4362897e6e682785b051a08e63da96f" [label=""];
  "sha256:49be86558f033311ed140ce08762cd0223d2ab0167a24ac9852c3e7debc27385" -> "sha256:b2abf9470df9fca82bc4993ed8de936ff4362897e6e682785b051a08e63da96f" [label=""];
  "sha256:b2abf9470df9fca82bc4993ed8de936ff4362897e6e682785b051a08e63da96f" -> "sha256:8a110e59cce6bb7b98c92d15a4fbaa820a03aa3b724b716c24e85ddfeaf9cd99" [label=""];
  "sha256:8a110e59cce6bb7b98c92d15a4fbaa820a03aa3b724b716c24e85ddfeaf9cd99" -> "sha256:a6807c8887250303a61dfc35331a3812a3da5c780f51cdb7d336bfa9bd7f7ad3" [label=""];
}

