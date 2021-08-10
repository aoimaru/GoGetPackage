[app/sources/193477234.Dockerfile]
digraph {
  "sha256:939b140a123def81e15a1f181240baeed32ba9aa8810faface6d333e37eed8dd" [label="docker-image://docker.io/library/debian:stretch-slim" shape="ellipse"];
  "sha256:9f92d61743304554c9d840a33993bf861d0bd48949a43d1ab0062e6953479c12" [label="/bin/sh -c set -ex  && apt-get update  && DEBIAN_FRONTEND=noninteractive apt-get install -y         curl         dumb-init         gcc         gnupg         gstreamer1.0-alsa         gstreamer1.0-plugins-bad         python-crypto  && curl -L https://apt.mopidy.com/mopidy.gpg | apt-key add -  && curl -L https://apt.mopidy.com/mopidy.list -o /etc/apt/sources.list.d/mopidy.list  && apt-get update  && DEBIAN_FRONTEND=noninteractive apt-get install -y         mopidy         mopidy-soundcloud         mopidy-spotify  && curl -L https://bootstrap.pypa.io/get-pip.py | python -  && pip install -U six pyasn1 requests[security] cryptography  && pip install         Mopidy-Iris         Mopidy-Moped         Mopidy-GMusic         Mopidy-Pandora         Mopidy-YouTube         pyopenssl         youtube-dl  && mkdir -p /var/lib/mopidy/.config  && ln -s /config /var/lib/mopidy/.config/mopidy  && apt-get purge --auto-remove -y         curl         gcc  && apt-get clean  && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* ~/.cache" shape="box"];
  "sha256:b82b1fc9463274a33e8a46d65d33925e79fb847cce2e0f16095a94a378341b20" [label="local://context" shape="ellipse"];
  "sha256:3808010b967a96aad0ef0fccffcd19db3847f94b0f071d67985f2da2f7d19930" [label="copy{src=/entrypoint.sh, dest=/entrypoint.sh}" shape="note"];
  "sha256:e73e5d6c2779f9c26b4ca25fef95ad9ca61eac1e0dc0220846ebf4a3feae3bfb" [label="copy{src=/mopidy.conf, dest=/config/mopidy.conf}" shape="note"];
  "sha256:8f517fb76832ecaea29e2b37252aaa7da885acbfea33c6d3b0f9c561d2940d72" [label="copy{src=/pulse-client.conf, dest=/etc/pulse/client.conf}" shape="note"];
  "sha256:a1f28ded455ed6146bf43ed3c3addcb3b888cc3081f7cb39d8620404af9de58b" [label="/bin/sh -c set -ex  && usermod -G audio,sudo mopidy  && chown mopidy:audio -R $HOME /entrypoint.sh  && chmod go+rwx -R $HOME /entrypoint.sh" shape="box"];
  "sha256:6100b0577dc05125bd56be28b0f58d584912acfc5b14e6ae643360d2074f8706" [label="sha256:6100b0577dc05125bd56be28b0f58d584912acfc5b14e6ae643360d2074f8706" shape="plaintext"];
  "sha256:939b140a123def81e15a1f181240baeed32ba9aa8810faface6d333e37eed8dd" -> "sha256:9f92d61743304554c9d840a33993bf861d0bd48949a43d1ab0062e6953479c12" [label=""];
  "sha256:9f92d61743304554c9d840a33993bf861d0bd48949a43d1ab0062e6953479c12" -> "sha256:3808010b967a96aad0ef0fccffcd19db3847f94b0f071d67985f2da2f7d19930" [label=""];
  "sha256:b82b1fc9463274a33e8a46d65d33925e79fb847cce2e0f16095a94a378341b20" -> "sha256:3808010b967a96aad0ef0fccffcd19db3847f94b0f071d67985f2da2f7d19930" [label=""];
  "sha256:3808010b967a96aad0ef0fccffcd19db3847f94b0f071d67985f2da2f7d19930" -> "sha256:e73e5d6c2779f9c26b4ca25fef95ad9ca61eac1e0dc0220846ebf4a3feae3bfb" [label=""];
  "sha256:b82b1fc9463274a33e8a46d65d33925e79fb847cce2e0f16095a94a378341b20" -> "sha256:e73e5d6c2779f9c26b4ca25fef95ad9ca61eac1e0dc0220846ebf4a3feae3bfb" [label=""];
  "sha256:e73e5d6c2779f9c26b4ca25fef95ad9ca61eac1e0dc0220846ebf4a3feae3bfb" -> "sha256:8f517fb76832ecaea29e2b37252aaa7da885acbfea33c6d3b0f9c561d2940d72" [label=""];
  "sha256:b82b1fc9463274a33e8a46d65d33925e79fb847cce2e0f16095a94a378341b20" -> "sha256:8f517fb76832ecaea29e2b37252aaa7da885acbfea33c6d3b0f9c561d2940d72" [label=""];
  "sha256:8f517fb76832ecaea29e2b37252aaa7da885acbfea33c6d3b0f9c561d2940d72" -> "sha256:a1f28ded455ed6146bf43ed3c3addcb3b888cc3081f7cb39d8620404af9de58b" [label=""];
  "sha256:a1f28ded455ed6146bf43ed3c3addcb3b888cc3081f7cb39d8620404af9de58b" -> "sha256:6100b0577dc05125bd56be28b0f58d584912acfc5b14e6ae643360d2074f8706" [label=""];
}

