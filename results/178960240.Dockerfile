[app/sources/178960240.Dockerfile]
digraph {
  "sha256:1639da42294176f6d359a2ef53ee74cfe5af226e62ed4234423de364b32ce14c" [label="docker-image://docker.io/balenalib/armv7hf-alpine:latest" shape="ellipse"];
  "sha256:8a5dcf868672481c5cb41c8259e54734458ddea07539ce883ee17505e35ab6de" [label="cross-build-start" shape="box"];
  "sha256:24b8db2bd2f81e0eb6d45de2532b45194f1fd19069b74ca661fd51204f6a0b8f" [label="/bin/sh -c apk --no-cache --no-progress upgrade &&     apk --no-cache --no-progress add bash curl ip6tables iptables openvpn                 shadow tini &&     addgroup -S vpn &&     rm -rf /tmp/*" shape="box"];
  "sha256:77b56fb59b12486d249a0b801abb4f3ca4f597b4ea8724be095ee5f44a67afa4" [label="cross-build-end" shape="box"];
  "sha256:9d73368dee4abd659f50759ec0acfcc56730ceefbe52047b5cf77677a0e4682b" [label="local://context" shape="ellipse"];
  "sha256:c491189092bd7b3619a83d032cf73ae99adb69918a479e98f1213b7696bdf96d" [label="copy{src=/openvpn.sh, dest=/usr/bin/}" shape="note"];
  "sha256:14e633be959f8971694b7edf6238e31ba4a3652c5336b4a205516507b30b543f" [label="sha256:14e633be959f8971694b7edf6238e31ba4a3652c5336b4a205516507b30b543f" shape="plaintext"];
  "sha256:1639da42294176f6d359a2ef53ee74cfe5af226e62ed4234423de364b32ce14c" -> "sha256:8a5dcf868672481c5cb41c8259e54734458ddea07539ce883ee17505e35ab6de" [label=""];
  "sha256:8a5dcf868672481c5cb41c8259e54734458ddea07539ce883ee17505e35ab6de" -> "sha256:24b8db2bd2f81e0eb6d45de2532b45194f1fd19069b74ca661fd51204f6a0b8f" [label=""];
  "sha256:24b8db2bd2f81e0eb6d45de2532b45194f1fd19069b74ca661fd51204f6a0b8f" -> "sha256:77b56fb59b12486d249a0b801abb4f3ca4f597b4ea8724be095ee5f44a67afa4" [label=""];
  "sha256:77b56fb59b12486d249a0b801abb4f3ca4f597b4ea8724be095ee5f44a67afa4" -> "sha256:c491189092bd7b3619a83d032cf73ae99adb69918a479e98f1213b7696bdf96d" [label=""];
  "sha256:9d73368dee4abd659f50759ec0acfcc56730ceefbe52047b5cf77677a0e4682b" -> "sha256:c491189092bd7b3619a83d032cf73ae99adb69918a479e98f1213b7696bdf96d" [label=""];
  "sha256:c491189092bd7b3619a83d032cf73ae99adb69918a479e98f1213b7696bdf96d" -> "sha256:14e633be959f8971694b7edf6238e31ba4a3652c5336b4a205516507b30b543f" [label=""];
}

