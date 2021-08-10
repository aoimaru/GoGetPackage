[app/sources/345355356.Dockerfile]
digraph {
  "sha256:2892124b67e18162f71119478dc715b2e553b5a2fe3c9ca54ad798757451cf23" [label="docker-image://docker.io/arm64v8/alpine:edge" shape="ellipse"];
  "sha256:0997d72b4cd5fdfe679ed55f379394cf23fc37cdd577528cce57aeacba7c2e6a" [label="local://context" shape="ellipse"];
  "sha256:c8fce81b5929a63e430f53e94d994734622f6907b5138dc99ff2f9bbe6ff0e2c" [label="copy{src=/qemu-aarch64-static, dest=/usr/bin}" shape="note"];
  "sha256:20e9e98d2e0fc7b3df9bd63a5dd0a361ac558f36dc7338da411976bdaf9f5087" [label="/bin/sh -c apk add --no-cache   bash   ca-certificates   curl   dbus   findutils   tar   udev   gnupg   && echo $'#!/bin/sh\\nset -e\\nset -u\\nn=0\\nmax=2\\nuntil [ $n -gt $max ]; do\\n  set +e\\n  (\\n    apk add --no-cache \"$@\"\\n  )\\n  CODE=$?\\n  set -e\\n  if [ $CODE -eq 0 ]; then\\n    break\\n  fi\\n  if [ $n -eq $max ]; then\\n    exit $CODE\\n  fi\\n  echo \"apk failed, retrying\"\\n  n=$(($n + 1))\\ndone' > /usr/sbin/install_packages   && chmod 0755 \"/usr/sbin/install_packages\"" shape="box"];
  "sha256:c94e0ba49898ab92fc2b97d27e7b51acbd5fa01234e3fe20df57640728764ab0" [label="/bin/sh -c curl -SLO \"http://resin-packages.s3.amazonaws.com/resin-xbuild/v1.0.0/resin-xbuild1.0.0.tar.gz\"   && echo \"1eb099bc3176ed078aa93bd5852dbab9219738d16434c87fc9af499368423437  resin-xbuild1.0.0.tar.gz\" | sha256sum -c -   && tar -xzf \"resin-xbuild1.0.0.tar.gz\"   && rm \"resin-xbuild1.0.0.tar.gz\"   && chmod +x resin-xbuild   && mv resin-xbuild /usr/bin   && ln -s resin-xbuild /usr/bin/cross-build-start   && ln -s resin-xbuild /usr/bin/cross-build-end" shape="box"];
  "sha256:5cd2a16c4477d9448536967b513c6cbda9d873b66a29d0fa334eb689b1f66d8f" [label="copy{src=/entry.sh, dest=/usr/bin/entry.sh}" shape="note"];
  "sha256:335e8ee309cf2138ae233eeb8af14580c135a37181ca806a8ef5d3f6f0556bf0" [label="sha256:335e8ee309cf2138ae233eeb8af14580c135a37181ca806a8ef5d3f6f0556bf0" shape="plaintext"];
  "sha256:2892124b67e18162f71119478dc715b2e553b5a2fe3c9ca54ad798757451cf23" -> "sha256:c8fce81b5929a63e430f53e94d994734622f6907b5138dc99ff2f9bbe6ff0e2c" [label=""];
  "sha256:0997d72b4cd5fdfe679ed55f379394cf23fc37cdd577528cce57aeacba7c2e6a" -> "sha256:c8fce81b5929a63e430f53e94d994734622f6907b5138dc99ff2f9bbe6ff0e2c" [label=""];
  "sha256:c8fce81b5929a63e430f53e94d994734622f6907b5138dc99ff2f9bbe6ff0e2c" -> "sha256:20e9e98d2e0fc7b3df9bd63a5dd0a361ac558f36dc7338da411976bdaf9f5087" [label=""];
  "sha256:20e9e98d2e0fc7b3df9bd63a5dd0a361ac558f36dc7338da411976bdaf9f5087" -> "sha256:c94e0ba49898ab92fc2b97d27e7b51acbd5fa01234e3fe20df57640728764ab0" [label=""];
  "sha256:c94e0ba49898ab92fc2b97d27e7b51acbd5fa01234e3fe20df57640728764ab0" -> "sha256:5cd2a16c4477d9448536967b513c6cbda9d873b66a29d0fa334eb689b1f66d8f" [label=""];
  "sha256:0997d72b4cd5fdfe679ed55f379394cf23fc37cdd577528cce57aeacba7c2e6a" -> "sha256:5cd2a16c4477d9448536967b513c6cbda9d873b66a29d0fa334eb689b1f66d8f" [label=""];
  "sha256:5cd2a16c4477d9448536967b513c6cbda9d873b66a29d0fa334eb689b1f66d8f" -> "sha256:335e8ee309cf2138ae233eeb8af14580c135a37181ca806a8ef5d3f6f0556bf0" [label=""];
}

