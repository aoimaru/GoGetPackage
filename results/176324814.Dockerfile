[app/sources/176324814.Dockerfile]
digraph {
  "sha256:7503277ec2ca6c42314f0a3b080e6031ec7dd02d2cdb3bc32f81bf0daef611d5" [label="docker-image://docker.io/library/node:0.10" shape="ellipse"];
  "sha256:ec6d2a0323b4efefa108eb5686c3bb39a3d99ee032ebeae5986bf87cbe6e9773" [label="local://context" shape="ellipse"];
  "sha256:8bcd1039ce8335000d13d2fa0fadbc5be457eca4914fd0a3042c7aaa308932b0" [label="copy{src=/meteor-installer.patch, dest=/tmp/meteor/meteor-installer.patch}" shape="note"];
  "sha256:afc516351307cf1a9b2f5d34098aa2eef27cf398f70a84598884c5e4399c6816" [label="copy{src=/vboxsf-shim.sh, dest=/usr/local/bin/vboxsf-shim}" shape="note"];
  "sha256:bea5a23165ddf8d62007cbf88fb6cd4691d15c1289c1bf82509762c3f87ac6d0" [label="/bin/sh -c curl -SL https://install.meteor.com/ -o /tmp/meteor/inst     && sed -e \"s/^RELEASE=.*/RELEASE=\\\"\\$METEOR_VERSION\\\"/\" /tmp/meteor/inst > /tmp/meteor/inst-canonical     && echo $METEOR_INSTALLER_SHA256 /tmp/meteor/inst-canonical | sha256sum -c     && patch /tmp/meteor/inst /tmp/meteor/meteor-installer.patch     && chmod +x /tmp/meteor/inst     && /tmp/meteor/inst     && rm -rf /tmp/meteor" shape="box"];
  "sha256:7371752bd809fdc8912e89d55402bcff92658b1deb0ae4016401ee3d1b421bbd" [label="mkdir{path=/app}" shape="note"];
  "sha256:047e63b248be2233e281ef41de24a57cdc2e8452b561842799528124b8193727" [label="sha256:047e63b248be2233e281ef41de24a57cdc2e8452b561842799528124b8193727" shape="plaintext"];
  "sha256:7503277ec2ca6c42314f0a3b080e6031ec7dd02d2cdb3bc32f81bf0daef611d5" -> "sha256:8bcd1039ce8335000d13d2fa0fadbc5be457eca4914fd0a3042c7aaa308932b0" [label=""];
  "sha256:ec6d2a0323b4efefa108eb5686c3bb39a3d99ee032ebeae5986bf87cbe6e9773" -> "sha256:8bcd1039ce8335000d13d2fa0fadbc5be457eca4914fd0a3042c7aaa308932b0" [label=""];
  "sha256:8bcd1039ce8335000d13d2fa0fadbc5be457eca4914fd0a3042c7aaa308932b0" -> "sha256:afc516351307cf1a9b2f5d34098aa2eef27cf398f70a84598884c5e4399c6816" [label=""];
  "sha256:ec6d2a0323b4efefa108eb5686c3bb39a3d99ee032ebeae5986bf87cbe6e9773" -> "sha256:afc516351307cf1a9b2f5d34098aa2eef27cf398f70a84598884c5e4399c6816" [label=""];
  "sha256:afc516351307cf1a9b2f5d34098aa2eef27cf398f70a84598884c5e4399c6816" -> "sha256:bea5a23165ddf8d62007cbf88fb6cd4691d15c1289c1bf82509762c3f87ac6d0" [label=""];
  "sha256:bea5a23165ddf8d62007cbf88fb6cd4691d15c1289c1bf82509762c3f87ac6d0" -> "sha256:7371752bd809fdc8912e89d55402bcff92658b1deb0ae4016401ee3d1b421bbd" [label=""];
  "sha256:7371752bd809fdc8912e89d55402bcff92658b1deb0ae4016401ee3d1b421bbd" -> "sha256:047e63b248be2233e281ef41de24a57cdc2e8452b561842799528124b8193727" [label=""];
}

