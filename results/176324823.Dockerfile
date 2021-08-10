[app/sources/176324823.Dockerfile]
digraph {
  "sha256:7503277ec2ca6c42314f0a3b080e6031ec7dd02d2cdb3bc32f81bf0daef611d5" [label="docker-image://docker.io/library/node:0.10" shape="ellipse"];
  "sha256:6d036fea0eaef39b20010182f1fbfee5007cd08a20f99050804f397dc82e834c" [label="local://context" shape="ellipse"];
  "sha256:32637c660c8e80de00045e574ab7e60e968901e2bcb4883c9cad10c0a4a9535a" [label="copy{src=/meteor-installer.patch, dest=/tmp/meteor/meteor-installer.patch}" shape="note"];
  "sha256:58a32a82233267166b6b92d25ca598290fca3685365e65936f8fa5f5116f9118" [label="copy{src=/vboxsf-shim.sh, dest=/usr/local/bin/vboxsf-shim}" shape="note"];
  "sha256:c6967ae8a642c4a13eff47828adb1029abd16286b69de367139e8797a4a170fd" [label="/bin/sh -c curl -SL https://install.meteor.com/ -o /tmp/meteor/inst     && sed -e \"s/^RELEASE=.*/RELEASE=\\\"\\$METEOR_VERSION\\\"/\" /tmp/meteor/inst > /tmp/meteor/inst-canonical     && echo $METEOR_INSTALLER_SHA256 /tmp/meteor/inst-canonical | sha256sum -c     && patch /tmp/meteor/inst /tmp/meteor/meteor-installer.patch     && chmod +x /tmp/meteor/inst     && /tmp/meteor/inst     && rm -rf /tmp/meteor" shape="box"];
  "sha256:6c5b22ecb302dc6c02e797b34e95ea2c6b76213f9b42d88c99b5faf141c02ad7" [label="mkdir{path=/app}" shape="note"];
  "sha256:059d910c9e40ea0a96201f89f821649b08ade3771ecaafe37aab225e83d32f76" [label="sha256:059d910c9e40ea0a96201f89f821649b08ade3771ecaafe37aab225e83d32f76" shape="plaintext"];
  "sha256:7503277ec2ca6c42314f0a3b080e6031ec7dd02d2cdb3bc32f81bf0daef611d5" -> "sha256:32637c660c8e80de00045e574ab7e60e968901e2bcb4883c9cad10c0a4a9535a" [label=""];
  "sha256:6d036fea0eaef39b20010182f1fbfee5007cd08a20f99050804f397dc82e834c" -> "sha256:32637c660c8e80de00045e574ab7e60e968901e2bcb4883c9cad10c0a4a9535a" [label=""];
  "sha256:32637c660c8e80de00045e574ab7e60e968901e2bcb4883c9cad10c0a4a9535a" -> "sha256:58a32a82233267166b6b92d25ca598290fca3685365e65936f8fa5f5116f9118" [label=""];
  "sha256:6d036fea0eaef39b20010182f1fbfee5007cd08a20f99050804f397dc82e834c" -> "sha256:58a32a82233267166b6b92d25ca598290fca3685365e65936f8fa5f5116f9118" [label=""];
  "sha256:58a32a82233267166b6b92d25ca598290fca3685365e65936f8fa5f5116f9118" -> "sha256:c6967ae8a642c4a13eff47828adb1029abd16286b69de367139e8797a4a170fd" [label=""];
  "sha256:c6967ae8a642c4a13eff47828adb1029abd16286b69de367139e8797a4a170fd" -> "sha256:6c5b22ecb302dc6c02e797b34e95ea2c6b76213f9b42d88c99b5faf141c02ad7" [label=""];
  "sha256:6c5b22ecb302dc6c02e797b34e95ea2c6b76213f9b42d88c99b5faf141c02ad7" -> "sha256:059d910c9e40ea0a96201f89f821649b08ade3771ecaafe37aab225e83d32f76" [label=""];
}

