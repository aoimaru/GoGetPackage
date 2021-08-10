[app/sources/345378570.Dockerfile]
digraph {
  "sha256:db55d101ed77674735a1129d539f223366bfc61131db57fce4945f43658b9e52" [label="docker-image://docker.io/i386/alpine:edge" shape="ellipse"];
  "sha256:794a35672a287d87f13b328772a4a3a7dc883855dffd041ba35718b440037d3f" [label="/bin/sh -c apk add --no-cache   bash   ca-certificates   curl   dbus   findutils   tar   udev   gnupg   && echo $'#!/bin/sh\\nset -e\\nset -u\\nn=0\\nmax=2\\nuntil [ $n -gt $max ]; do\\n  set +e\\n  (\\n    apk add --no-cache \"$@\"\\n  )\\n  CODE=$?\\n  set -e\\n  if [ $CODE -eq 0 ]; then\\n    break\\n  fi\\n  if [ $n -eq $max ]; then\\n    exit $CODE\\n  fi\\n  echo \"apk failed, retrying\"\\n  n=$(($n + 1))\\ndone' > /usr/sbin/install_packages   && chmod 0755 \"/usr/sbin/install_packages\"" shape="box"];
  "sha256:b30f380c4bded91565f825c67f6efd6ebe6dff07c8bf1eb41d1f22979130410f" [label="/bin/sh -c apk add --update \t\tbzr \t\tgit \t\tmercurial \t\topenssh-client \t\tsubversion \t\tca-certificates \t\tcurl \t\twget \t\tautoconf \t\tbuild-base \t\timagemagick \t\tlibbz2 \t\tlibevent-dev \t\tlibffi-dev \t\tglib-dev \t\tjpeg-dev \t\timagemagick-dev \t\tncurses5-libs \t\tlibpq \t\treadline-dev \t\tsqlite-dev \t\topenssl-dev \t\tlibxml2-dev \t\tlibxslt-dev \t\tyaml-dev \t\tzlib-dev \t\txz \t&& rm -rf /var/cache/apk/*" shape="box"];
  "sha256:637f5e2f6f71ce9dbda85ddc87b0f3ba1fc3ba8aac7597f552ef8a9d0e121ac5" [label="/bin/sh -c curl -SLO \"http://resin-packages.s3.amazonaws.com/resin-xbuild/v1.0.0/resin-xbuild1.0.0.tar.gz\"   && echo \"1eb099bc3176ed078aa93bd5852dbab9219738d16434c87fc9af499368423437  resin-xbuild1.0.0.tar.gz\" | sha256sum -c -   && tar -xzf \"resin-xbuild1.0.0.tar.gz\"   && rm \"resin-xbuild1.0.0.tar.gz\"   && chmod +x resin-xbuild   && mv resin-xbuild /usr/bin   && ln -s resin-xbuild /usr/bin/cross-build-start   && ln -s resin-xbuild /usr/bin/cross-build-end" shape="box"];
  "sha256:8afe0292b40d31bffa2f98a2c114bfc7ad6a627ae1b36bd132b2aae2f4846a6f" [label="local://context" shape="ellipse"];
  "sha256:e3b5d1a8a634398fc8b296b260a31e7c44340bba2656eb400f9ba1d6ea28f0b2" [label="copy{src=/entry.sh, dest=/usr/bin/entry.sh}" shape="note"];
  "sha256:bcb3e7a580bf2467ddb69fe4a0eb16e2d9b11e3b247fe73567c0a16bfb58cc2d" [label="sha256:bcb3e7a580bf2467ddb69fe4a0eb16e2d9b11e3b247fe73567c0a16bfb58cc2d" shape="plaintext"];
  "sha256:db55d101ed77674735a1129d539f223366bfc61131db57fce4945f43658b9e52" -> "sha256:794a35672a287d87f13b328772a4a3a7dc883855dffd041ba35718b440037d3f" [label=""];
  "sha256:794a35672a287d87f13b328772a4a3a7dc883855dffd041ba35718b440037d3f" -> "sha256:b30f380c4bded91565f825c67f6efd6ebe6dff07c8bf1eb41d1f22979130410f" [label=""];
  "sha256:b30f380c4bded91565f825c67f6efd6ebe6dff07c8bf1eb41d1f22979130410f" -> "sha256:637f5e2f6f71ce9dbda85ddc87b0f3ba1fc3ba8aac7597f552ef8a9d0e121ac5" [label=""];
  "sha256:637f5e2f6f71ce9dbda85ddc87b0f3ba1fc3ba8aac7597f552ef8a9d0e121ac5" -> "sha256:e3b5d1a8a634398fc8b296b260a31e7c44340bba2656eb400f9ba1d6ea28f0b2" [label=""];
  "sha256:8afe0292b40d31bffa2f98a2c114bfc7ad6a627ae1b36bd132b2aae2f4846a6f" -> "sha256:e3b5d1a8a634398fc8b296b260a31e7c44340bba2656eb400f9ba1d6ea28f0b2" [label=""];
  "sha256:e3b5d1a8a634398fc8b296b260a31e7c44340bba2656eb400f9ba1d6ea28f0b2" -> "sha256:bcb3e7a580bf2467ddb69fe4a0eb16e2d9b11e3b247fe73567c0a16bfb58cc2d" [label=""];
}

