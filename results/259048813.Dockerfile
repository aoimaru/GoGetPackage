[app/sources/259048813.Dockerfile]
digraph {
  "sha256:236ae56fc83254f4f61704bf1c3c0daed434f7cfcf9fe076ff5b5075c2839fef" [label="docker-image://docker.io/library/ubuntu:14.04.3" shape="ellipse"];
  "sha256:db9f33a8a674a0ee5ee012d1c11a2fbf7a8097470062eff33fadcf198ac37040" [label="/bin/sh -c apt-get update && \tapt-get clean  && \tapt-get install libnet1 libpcap0.8  && \tapt-get clean  && \tapt-get install -y libnet1-dev libpcap0.8-dev && \tapt-get clean  &&     apt-get install -y git squid3 && \tapt-get clean  &&     mv /etc/squid3/squid.conf /etc/squid3/squid.conf.dist &&     apt-get clean" shape="box"];
  "sha256:556ccbec1651ec0b0784214f11e88c7c1c42aac110ae7c6835b9f4e0708bbba2" [label="local://context" shape="ellipse"];
  "sha256:7f761e9982389a925fbc378d0043d1157486e375e422318cc41665c0d9345f32" [label="copy{src=/squid.conf, dest=/etc/squid3/squid.conf}" shape="note"];
  "sha256:df7edbdc198ac92a0ca28334d997e48d3d23fcc41693d5f6f399814455f6caaf" [label="/bin/sh -c mkdir /var/cache/squid" shape="box"];
  "sha256:a0c2c63bc557e781f59fbcb53c8cba26b6a82d45455aca7913ad273cf053ed1b" [label="/bin/sh -c chown -R proxy:proxy /var/cache/squid" shape="box"];
  "sha256:b6ce822101292ba7c8fa0fd6b6599238a8a9e7275ede59004d45c730d846246a" [label="/bin/sh -c /usr/sbin/squid3 -N -z -F" shape="box"];
  "sha256:0826c131eed98d12a225db9da1c649f2d48c5e4564587cc084d59bcdfee2ac46" [label="/bin/sh -c git clone https://github.com/snooda/net-speeder.git net-speeder" shape="box"];
  "sha256:b86de1ee30c1a5281d42372855d314e3cc6782f4ce61b34f9f8e752d7b02ac38" [label="mkdir{path=/net-speeder}" shape="note"];
  "sha256:923d6d7188bb2985c05db1a8ad9b6d093775030beea517df70431ddc7f93fb1c" [label="/bin/sh -c sh build.sh" shape="box"];
  "sha256:4e559e45233e915d457fc65319b6cca9cbd1608570108b23d51911b8594715c4" [label="/bin/sh -c mv net_speeder /usr/local/bin/" shape="box"];
  "sha256:0c2b7976b265a357d5550b055741134312b94cb2fdb72301bac360d9691211b6" [label="copy{src=/entrypoint.sh, dest=/usr/local/bin/}" shape="note"];
  "sha256:c155563d2303f9c83a9ac7de1c313b4833d69ff59eb2c507a7c0e65134d8f4ee" [label="/bin/sh -c chmod +x /usr/local/bin/entrypoint.sh" shape="box"];
  "sha256:63e5b7c6311fd368a67085488b45cef569834a64e6d62522abe05760682eac26" [label="/bin/sh -c chmod +x /usr/local/bin/net_speeder" shape="box"];
  "sha256:a30580548e32e2155fa51322cb59fcc3310af4c257a15d5bc6bbaefe3f24973a" [label="sha256:a30580548e32e2155fa51322cb59fcc3310af4c257a15d5bc6bbaefe3f24973a" shape="plaintext"];
  "sha256:236ae56fc83254f4f61704bf1c3c0daed434f7cfcf9fe076ff5b5075c2839fef" -> "sha256:db9f33a8a674a0ee5ee012d1c11a2fbf7a8097470062eff33fadcf198ac37040" [label=""];
  "sha256:db9f33a8a674a0ee5ee012d1c11a2fbf7a8097470062eff33fadcf198ac37040" -> "sha256:7f761e9982389a925fbc378d0043d1157486e375e422318cc41665c0d9345f32" [label=""];
  "sha256:556ccbec1651ec0b0784214f11e88c7c1c42aac110ae7c6835b9f4e0708bbba2" -> "sha256:7f761e9982389a925fbc378d0043d1157486e375e422318cc41665c0d9345f32" [label=""];
  "sha256:7f761e9982389a925fbc378d0043d1157486e375e422318cc41665c0d9345f32" -> "sha256:df7edbdc198ac92a0ca28334d997e48d3d23fcc41693d5f6f399814455f6caaf" [label=""];
  "sha256:df7edbdc198ac92a0ca28334d997e48d3d23fcc41693d5f6f399814455f6caaf" -> "sha256:a0c2c63bc557e781f59fbcb53c8cba26b6a82d45455aca7913ad273cf053ed1b" [label=""];
  "sha256:a0c2c63bc557e781f59fbcb53c8cba26b6a82d45455aca7913ad273cf053ed1b" -> "sha256:b6ce822101292ba7c8fa0fd6b6599238a8a9e7275ede59004d45c730d846246a" [label=""];
  "sha256:b6ce822101292ba7c8fa0fd6b6599238a8a9e7275ede59004d45c730d846246a" -> "sha256:0826c131eed98d12a225db9da1c649f2d48c5e4564587cc084d59bcdfee2ac46" [label=""];
  "sha256:0826c131eed98d12a225db9da1c649f2d48c5e4564587cc084d59bcdfee2ac46" -> "sha256:b86de1ee30c1a5281d42372855d314e3cc6782f4ce61b34f9f8e752d7b02ac38" [label=""];
  "sha256:b86de1ee30c1a5281d42372855d314e3cc6782f4ce61b34f9f8e752d7b02ac38" -> "sha256:923d6d7188bb2985c05db1a8ad9b6d093775030beea517df70431ddc7f93fb1c" [label=""];
  "sha256:923d6d7188bb2985c05db1a8ad9b6d093775030beea517df70431ddc7f93fb1c" -> "sha256:4e559e45233e915d457fc65319b6cca9cbd1608570108b23d51911b8594715c4" [label=""];
  "sha256:4e559e45233e915d457fc65319b6cca9cbd1608570108b23d51911b8594715c4" -> "sha256:0c2b7976b265a357d5550b055741134312b94cb2fdb72301bac360d9691211b6" [label=""];
  "sha256:556ccbec1651ec0b0784214f11e88c7c1c42aac110ae7c6835b9f4e0708bbba2" -> "sha256:0c2b7976b265a357d5550b055741134312b94cb2fdb72301bac360d9691211b6" [label=""];
  "sha256:0c2b7976b265a357d5550b055741134312b94cb2fdb72301bac360d9691211b6" -> "sha256:c155563d2303f9c83a9ac7de1c313b4833d69ff59eb2c507a7c0e65134d8f4ee" [label=""];
  "sha256:c155563d2303f9c83a9ac7de1c313b4833d69ff59eb2c507a7c0e65134d8f4ee" -> "sha256:63e5b7c6311fd368a67085488b45cef569834a64e6d62522abe05760682eac26" [label=""];
  "sha256:63e5b7c6311fd368a67085488b45cef569834a64e6d62522abe05760682eac26" -> "sha256:a30580548e32e2155fa51322cb59fcc3310af4c257a15d5bc6bbaefe3f24973a" [label=""];
}

