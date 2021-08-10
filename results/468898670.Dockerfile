[app/sources/468898670.Dockerfile]
digraph {
  "sha256:26a4dac754815cd2b8d451e93aefb0336042c076936bbd229330830ea6420111" [label="docker-image://registry.access.redhat.com/openshift3/jenkins-slave-base-rhel7:latest" shape="ellipse"];
  "sha256:ee37ec9c736f583a0e5192fa20818ffd042c83c9a59c7296ab62c6b5b793bfea" [label="/bin/sh -c subscription-manager register --org=$RH_ORG_ID --activationkey=$RH_ACTIVATIONKEY --name=temp-containerbuild-$(date +\"%s\")  &&     subscription-manager attach --pool=$RH_POOL_ID ;    subscription-manager repos --disable=* &&     subscription-manager repos --enable=rhel-7-server-rpms         --enable=rhel-7-server-extras-rpms         --enable=rhel-7-server-ose-3.11-rpms         --enable=rhel-7-server-ansible-2.6-rpms         --enable=rhel-7-server-openstack-14-rpms     &&     yum install -y  openshift-ansible python2-openstacksdk.noarch                     python2-shade.noarch python2-openstackclient.noarch                     telnet &&     subscription-manager unregister" shape="box"];
  "sha256:ef53da81bf3139c9a6a12aafce3f5eff8dd2b3e96435350e43ba40e3881b08d0" [label="sha256:ef53da81bf3139c9a6a12aafce3f5eff8dd2b3e96435350e43ba40e3881b08d0" shape="plaintext"];
  "sha256:26a4dac754815cd2b8d451e93aefb0336042c076936bbd229330830ea6420111" -> "sha256:ee37ec9c736f583a0e5192fa20818ffd042c83c9a59c7296ab62c6b5b793bfea" [label=""];
  "sha256:ee37ec9c736f583a0e5192fa20818ffd042c83c9a59c7296ab62c6b5b793bfea" -> "sha256:ef53da81bf3139c9a6a12aafce3f5eff8dd2b3e96435350e43ba40e3881b08d0" [label=""];
}

