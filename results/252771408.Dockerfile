[app/sources/252771408.Dockerfile]
digraph {
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" [label="docker-image://docker.io/library/alpine:latest" shape="ellipse"];
  "sha256:4be9bfc6e5d09dac69ea196a8383dfb28ad7c6f18fbee72d3a9b8b071842de3a" [label="/bin/sh -c apk update" shape="box"];
  "sha256:df7bf1561ea4f6d5e595131895417ea1f48c3e3e5ba2abef493cc6178a3fb529" [label="/bin/sh -c apk add iptables" shape="box"];
  "sha256:47663f158b6a44eed2bdbe5aab77de2afd26de8319656c4fd7a39e987db7c6e0" [label="/bin/sh -c apk add ip6tables" shape="box"];
  "sha256:20341047b43e4b199111f39d39861ff54b6dbadae72cc990e1c3a7c6b3ebaa41" [label="/bin/sh -c apk add iptables-doc" shape="box"];
  "sha256:59e185047fdbfc482968b8e2f4446b81677f308b8696d2e6bb403cb9f77e70c0" [label="/bin/sh -c apk add iproute2" shape="box"];
  "sha256:f0f4ad98c73f1846a3896dbaa610ffb9f56a008778efad739ac9bbce21159624" [label="/bin/sh -c apk add drill" shape="box"];
  "sha256:c9c49fab4abfd89a32f48eec69691b80ed792fb1f2ac1255169e16ba61c20ed6" [label="/bin/sh -c apk add iputils" shape="box"];
  "sha256:769a5987a22b4d4c8e771b0df58465178e6b74686f069e75120016c0ec89b39a" [label="/bin/sh -c apk add bash" shape="box"];
  "sha256:9274780e4b5c22f8d0e31cb468884e78265e624b4bd6e17ff1bfb44706f52760" [label="/bin/sh -c apk add tcpdump" shape="box"];
  "sha256:7b4b445f4e82e8b59b079ad941eec2e293ff1513478bda627c22606585c59223" [label="/bin/sh -c apk add dialog" shape="box"];
  "sha256:bfd15b8a16bd54767f36e1217fe31d29b19587a15e32be59348e72fdef489261" [label="/bin/sh -c apk add nano" shape="box"];
  "sha256:90764697e9115286f050bdf000731db4153211e552008fea229a26574c6c117f" [label="/bin/sh -c apk add --update dnsmasq && rm -rf /var/cache/apk/*" shape="box"];
  "sha256:cef36cb2128426de22f2266c8bf9db06afe954d3caf29afb349a4556babb4291" [label="local://context" shape="ellipse"];
  "sha256:03ec63222689c03a931a9bf18cfa2c2d1b1d121e828066071331241b3526a093" [label="copy{src=/nat.sh, dest=/data/nat.sh}" shape="note"];
  "sha256:d9e5bd52c7231217868394c4666f049ff2f324411909174362ebf11b3dadd2f0" [label="sha256:d9e5bd52c7231217868394c4666f049ff2f324411909174362ebf11b3dadd2f0" shape="plaintext"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" -> "sha256:4be9bfc6e5d09dac69ea196a8383dfb28ad7c6f18fbee72d3a9b8b071842de3a" [label=""];
  "sha256:4be9bfc6e5d09dac69ea196a8383dfb28ad7c6f18fbee72d3a9b8b071842de3a" -> "sha256:df7bf1561ea4f6d5e595131895417ea1f48c3e3e5ba2abef493cc6178a3fb529" [label=""];
  "sha256:df7bf1561ea4f6d5e595131895417ea1f48c3e3e5ba2abef493cc6178a3fb529" -> "sha256:47663f158b6a44eed2bdbe5aab77de2afd26de8319656c4fd7a39e987db7c6e0" [label=""];
  "sha256:47663f158b6a44eed2bdbe5aab77de2afd26de8319656c4fd7a39e987db7c6e0" -> "sha256:20341047b43e4b199111f39d39861ff54b6dbadae72cc990e1c3a7c6b3ebaa41" [label=""];
  "sha256:20341047b43e4b199111f39d39861ff54b6dbadae72cc990e1c3a7c6b3ebaa41" -> "sha256:59e185047fdbfc482968b8e2f4446b81677f308b8696d2e6bb403cb9f77e70c0" [label=""];
  "sha256:59e185047fdbfc482968b8e2f4446b81677f308b8696d2e6bb403cb9f77e70c0" -> "sha256:f0f4ad98c73f1846a3896dbaa610ffb9f56a008778efad739ac9bbce21159624" [label=""];
  "sha256:f0f4ad98c73f1846a3896dbaa610ffb9f56a008778efad739ac9bbce21159624" -> "sha256:c9c49fab4abfd89a32f48eec69691b80ed792fb1f2ac1255169e16ba61c20ed6" [label=""];
  "sha256:c9c49fab4abfd89a32f48eec69691b80ed792fb1f2ac1255169e16ba61c20ed6" -> "sha256:769a5987a22b4d4c8e771b0df58465178e6b74686f069e75120016c0ec89b39a" [label=""];
  "sha256:769a5987a22b4d4c8e771b0df58465178e6b74686f069e75120016c0ec89b39a" -> "sha256:9274780e4b5c22f8d0e31cb468884e78265e624b4bd6e17ff1bfb44706f52760" [label=""];
  "sha256:9274780e4b5c22f8d0e31cb468884e78265e624b4bd6e17ff1bfb44706f52760" -> "sha256:7b4b445f4e82e8b59b079ad941eec2e293ff1513478bda627c22606585c59223" [label=""];
  "sha256:7b4b445f4e82e8b59b079ad941eec2e293ff1513478bda627c22606585c59223" -> "sha256:bfd15b8a16bd54767f36e1217fe31d29b19587a15e32be59348e72fdef489261" [label=""];
  "sha256:bfd15b8a16bd54767f36e1217fe31d29b19587a15e32be59348e72fdef489261" -> "sha256:90764697e9115286f050bdf000731db4153211e552008fea229a26574c6c117f" [label=""];
  "sha256:90764697e9115286f050bdf000731db4153211e552008fea229a26574c6c117f" -> "sha256:03ec63222689c03a931a9bf18cfa2c2d1b1d121e828066071331241b3526a093" [label=""];
  "sha256:cef36cb2128426de22f2266c8bf9db06afe954d3caf29afb349a4556babb4291" -> "sha256:03ec63222689c03a931a9bf18cfa2c2d1b1d121e828066071331241b3526a093" [label=""];
  "sha256:03ec63222689c03a931a9bf18cfa2c2d1b1d121e828066071331241b3526a093" -> "sha256:d9e5bd52c7231217868394c4666f049ff2f324411909174362ebf11b3dadd2f0" [label=""];
}

