[app/sources/470534564.Dockerfile]
digraph {
  "sha256:fed2184a60800ca1bd93dcf7ac166be9b08716b025fbdc6df3b78b77ff931305" [label="docker-image://docker.io/openshift/origin:latest" shape="ellipse"];
  "sha256:d6ef23f2fb812c0e46fd5807ebdf4c2c448afec0f4b08fbfc9ad08d3b5e95d0f" [label="local://context" shape="ellipse"];
  "sha256:caa9145f04f3186c55a9ce873d038071c42bd9e357c1de0c078060f0892676ad" [label="copy{src=/scripts/*, dest=/usr/local/bin/}" shape="note"];
  "sha256:815d9cf4f4086a383791309fef8eeed7e3b7c3225039f0d3bd29c4dd8d50aa87" [label="/bin/sh -c INSTALL_PKGS=\"origin-sdn-ovs libmnl libnetfilter_conntrack openvswitch       libnfnetlink iptables iproute bridge-utils procps-ng ethtool socat openssl       binutils xz kmod-libs kmod sysvinit-tools device-mapper-libs dbus       ceph-common iscsi-initiator-utils\" &&     yum install -y $INSTALL_PKGS &&     rpm -V $INSTALL_PKGS &&     yum clean all &&     mkdir -p /usr/lib/systemd/system/origin-node.service.d /usr/lib/systemd/system/docker.service.d &&     chmod +x /usr/local/bin/* /usr/bin/openshift-*" shape="box"];
  "sha256:6e94aa140f7bd385c6f34f71ed37a8501ced60c6f6645f22175598ef961af633" [label="sha256:6e94aa140f7bd385c6f34f71ed37a8501ced60c6f6645f22175598ef961af633" shape="plaintext"];
  "sha256:fed2184a60800ca1bd93dcf7ac166be9b08716b025fbdc6df3b78b77ff931305" -> "sha256:caa9145f04f3186c55a9ce873d038071c42bd9e357c1de0c078060f0892676ad" [label=""];
  "sha256:d6ef23f2fb812c0e46fd5807ebdf4c2c448afec0f4b08fbfc9ad08d3b5e95d0f" -> "sha256:caa9145f04f3186c55a9ce873d038071c42bd9e357c1de0c078060f0892676ad" [label=""];
  "sha256:caa9145f04f3186c55a9ce873d038071c42bd9e357c1de0c078060f0892676ad" -> "sha256:815d9cf4f4086a383791309fef8eeed7e3b7c3225039f0d3bd29c4dd8d50aa87" [label=""];
  "sha256:815d9cf4f4086a383791309fef8eeed7e3b7c3225039f0d3bd29c4dd8d50aa87" -> "sha256:6e94aa140f7bd385c6f34f71ed37a8501ced60c6f6645f22175598ef961af633" [label=""];
}

