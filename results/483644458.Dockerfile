[app/sources/483644458.Dockerfile]
digraph {
  "sha256:6642b79a8e48682e4afee5ef57460e24dc5b368ab1856f71ad0ce1f9dd69dc4b" [label="docker-image://docker.io/balenalib/amd64-alpine:latest" shape="ellipse"];
  "sha256:697cc365c11d56685896051e1dafd6378268290043a61a9ea5dd1ae61220d410" [label="/bin/sh -c apk --no-cache --no-progress upgrade &&     apk --no-cache --no-progress add bash curl jq ip6tables iptables openvpn shadow tini tzdata &&     addgroup -S vpn &&     rm -rf /tmp/*" shape="box"];
  "sha256:a1cf95d0305b42de372ba02d20680085ebf52436cec556b1467c54bc49209dac" [label="local://context" shape="ellipse"];
  "sha256:0b27f87eccc3a9449e703eb1a4ecd084a261f0b3737374ec6f36cff75164e89b" [label="copy{src=/nordVpn.sh, dest=/usr/bin}" shape="note"];
  "sha256:e929723185c12fba75c63767ac3309790051515eaec96b91d0a4304b04d72b70" [label="sha256:e929723185c12fba75c63767ac3309790051515eaec96b91d0a4304b04d72b70" shape="plaintext"];
  "sha256:6642b79a8e48682e4afee5ef57460e24dc5b368ab1856f71ad0ce1f9dd69dc4b" -> "sha256:697cc365c11d56685896051e1dafd6378268290043a61a9ea5dd1ae61220d410" [label=""];
  "sha256:697cc365c11d56685896051e1dafd6378268290043a61a9ea5dd1ae61220d410" -> "sha256:0b27f87eccc3a9449e703eb1a4ecd084a261f0b3737374ec6f36cff75164e89b" [label=""];
  "sha256:a1cf95d0305b42de372ba02d20680085ebf52436cec556b1467c54bc49209dac" -> "sha256:0b27f87eccc3a9449e703eb1a4ecd084a261f0b3737374ec6f36cff75164e89b" [label=""];
  "sha256:0b27f87eccc3a9449e703eb1a4ecd084a261f0b3737374ec6f36cff75164e89b" -> "sha256:e929723185c12fba75c63767ac3309790051515eaec96b91d0a4304b04d72b70" [label=""];
}

