[app/sources/345355434.Dockerfile]
digraph {
  "sha256:08956c44df1272b17a0c19741b0c720b88ff35e612daf46f69f13fbe8a304331" [label="local://context" shape="ellipse"];
  "sha256:ae17dfd2743f1888b0d43be2cd517c5121409abfaa443dde533f5ccf62312ac2" [label="docker-image://docker.io/arm64v8/ubuntu:xenial" shape="ellipse"];
  "sha256:6a1ecb88d372a8a43bcb65650baa4707885b4fb4193ee4233da5f5e0fb5f9b64" [label="copy{src=/qemu-aarch64-static, dest=/usr/bin}" shape="note"];
  "sha256:5c57bea58111a075cf0132e80c05a24abd195e6ba46a0543cba237de37dd3f27" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends   sudo   ca-certificates   findutils   gnupg   dirmngr   inetutils-ping   netbase   curl   udev   $(       if apt-cache show 'iproute' 2>/dev/null | grep -q '^Version:'; then         echo 'iproute';       else         echo 'iproute2';       fi   )   && rm -rf /var/lib/apt/lists/*   && echo '#!/bin/sh\\nset -e\\nset -u\\nexport DEBIAN_FRONTEND=noninteractive\\nn=0\\nmax=2\\nuntil [ $n -gt $max ]; do\\n  set +e\\n  (\\n    apt-get update -qq &&\\n    apt-get install -y --no-install-recommends \"$@\"\\n  )\\n  CODE=$?\\n  set -e\\n  if [ $CODE -eq 0 ]; then\\n    break\\n  fi\\n  if [ $n -eq $max ]; then\\n    exit $CODE\\n  fi\\n  echo \"apt failed, retrying\"\\n  n=$(($n + 1))\\ndone\\nrm -r /var/lib/apt/lists/*' > /usr/sbin/install_packages   && chmod 0755 \"/usr/sbin/install_packages\"" shape="box"];
  "sha256:fb9d9bb9dc0b816e4f2645c58c28fa75af30e53c2c38e093c2f13d8580d13a87" [label="/bin/sh -c curl -SLO \"http://resin-packages.s3.amazonaws.com/resin-xbuild/v1.0.0/resin-xbuild1.0.0.tar.gz\"   && echo \"1eb099bc3176ed078aa93bd5852dbab9219738d16434c87fc9af499368423437  resin-xbuild1.0.0.tar.gz\" | sha256sum -c -   && tar -xzf \"resin-xbuild1.0.0.tar.gz\"   && rm \"resin-xbuild1.0.0.tar.gz\"   && chmod +x resin-xbuild   && mv resin-xbuild /usr/bin   && ln -s resin-xbuild /usr/bin/cross-build-start   && ln -s resin-xbuild /usr/bin/cross-build-end" shape="box"];
  "sha256:9d769488715f4f8a090c54a5329fe2ff4cbc3a59a3499600795f04a2a1db024d" [label="/bin/sh -c mkdir -p /usr/share/man/man1" shape="box"];
  "sha256:19e2957aa9e4c32deff663e7d2e29e826c5af412879a14027b213c3eaff9e960" [label="copy{src=/entry.sh, dest=/usr/bin/entry.sh}" shape="note"];
  "sha256:91b9f8f1cbf2741ffc8d56bed19a6e56d99eaeeda25717fb7d18d019617e117c" [label="sha256:91b9f8f1cbf2741ffc8d56bed19a6e56d99eaeeda25717fb7d18d019617e117c" shape="plaintext"];
  "sha256:ae17dfd2743f1888b0d43be2cd517c5121409abfaa443dde533f5ccf62312ac2" -> "sha256:6a1ecb88d372a8a43bcb65650baa4707885b4fb4193ee4233da5f5e0fb5f9b64" [label=""];
  "sha256:08956c44df1272b17a0c19741b0c720b88ff35e612daf46f69f13fbe8a304331" -> "sha256:6a1ecb88d372a8a43bcb65650baa4707885b4fb4193ee4233da5f5e0fb5f9b64" [label=""];
  "sha256:6a1ecb88d372a8a43bcb65650baa4707885b4fb4193ee4233da5f5e0fb5f9b64" -> "sha256:5c57bea58111a075cf0132e80c05a24abd195e6ba46a0543cba237de37dd3f27" [label=""];
  "sha256:5c57bea58111a075cf0132e80c05a24abd195e6ba46a0543cba237de37dd3f27" -> "sha256:fb9d9bb9dc0b816e4f2645c58c28fa75af30e53c2c38e093c2f13d8580d13a87" [label=""];
  "sha256:fb9d9bb9dc0b816e4f2645c58c28fa75af30e53c2c38e093c2f13d8580d13a87" -> "sha256:9d769488715f4f8a090c54a5329fe2ff4cbc3a59a3499600795f04a2a1db024d" [label=""];
  "sha256:9d769488715f4f8a090c54a5329fe2ff4cbc3a59a3499600795f04a2a1db024d" -> "sha256:19e2957aa9e4c32deff663e7d2e29e826c5af412879a14027b213c3eaff9e960" [label=""];
  "sha256:08956c44df1272b17a0c19741b0c720b88ff35e612daf46f69f13fbe8a304331" -> "sha256:19e2957aa9e4c32deff663e7d2e29e826c5af412879a14027b213c3eaff9e960" [label=""];
  "sha256:19e2957aa9e4c32deff663e7d2e29e826c5af412879a14027b213c3eaff9e960" -> "sha256:91b9f8f1cbf2741ffc8d56bed19a6e56d99eaeeda25717fb7d18d019617e117c" [label=""];
}

