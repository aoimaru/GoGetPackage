[app/sources/368374415.Dockerfile]
digraph {
  "sha256:4e309f33652b816e4105239f71985b77cdd817b5c8f69b4d3fb476e67fb58c0f" [label="local://context" shape="ellipse"];
  "sha256:9905f37d7e4c8214bdfafd0d495c4866ef9fce385bd249836da9a369e4ce0ac0" [label="docker-image://docker.io/gliderlabs/alpine:latest" shape="ellipse"];
  "sha256:6974c10f879e78eb9078499b339f34e2e1b051d0957f983fffc48b3c2d0ce992" [label="/bin/sh -c apk --update add haproxy iptables supervisor irqbalance" shape="box"];
  "sha256:7fec71bd1bfa21d75322ab3538cf840c7a2e20288ff006565a2b690bc7a4f7e4" [label="copy{src=/haproxy.cfg, dest=/etc/haproxy/haproxy.cfg}" shape="note"];
  "sha256:b5331fe5f057c9611875104795b1031ad679d0d4e5779546d763d0e0b5bd2c12" [label="copy{src=/haproxy.sh, dest=/haproxy.sh}" shape="note"];
  "sha256:3d1b290928a6064ccd5a82bd62c30af38281a6d279d4f17389c82cdabea5892c" [label="copy{src=/supervisord.conf, dest=/etc/supervisord.conf}" shape="note"];
  "sha256:63b9bda005cad2ee2c0ad946e5656adf458bfb3d168d9de2a4dacbee785d3cae" [label="/bin/sh -c chmod a+x /haproxy.sh" shape="box"];
  "sha256:af8411d9ae4d374b1dae185bf5b3da4324f06c1ea582cfe11f1c1c95f561fc9a" [label="/bin/sh -c mkdir -p /var/run/haproxy /var/lib/haproxy" shape="box"];
  "sha256:54df51c2c8ba526e8c324df9de4d03550c74d0bcdf15eeb3f77b6a8ff1bfe595" [label="/bin/sh -c chown -R haproxy:haproxy /var/run/haproxy /var/lib/haproxy" shape="box"];
  "sha256:3ef64d2bad0e302a1c0d2ded81bae94697b7dbd5a4bbe5d128aa66be3d778114" [label="sha256:3ef64d2bad0e302a1c0d2ded81bae94697b7dbd5a4bbe5d128aa66be3d778114" shape="plaintext"];
  "sha256:9905f37d7e4c8214bdfafd0d495c4866ef9fce385bd249836da9a369e4ce0ac0" -> "sha256:6974c10f879e78eb9078499b339f34e2e1b051d0957f983fffc48b3c2d0ce992" [label=""];
  "sha256:6974c10f879e78eb9078499b339f34e2e1b051d0957f983fffc48b3c2d0ce992" -> "sha256:7fec71bd1bfa21d75322ab3538cf840c7a2e20288ff006565a2b690bc7a4f7e4" [label=""];
  "sha256:4e309f33652b816e4105239f71985b77cdd817b5c8f69b4d3fb476e67fb58c0f" -> "sha256:7fec71bd1bfa21d75322ab3538cf840c7a2e20288ff006565a2b690bc7a4f7e4" [label=""];
  "sha256:7fec71bd1bfa21d75322ab3538cf840c7a2e20288ff006565a2b690bc7a4f7e4" -> "sha256:b5331fe5f057c9611875104795b1031ad679d0d4e5779546d763d0e0b5bd2c12" [label=""];
  "sha256:4e309f33652b816e4105239f71985b77cdd817b5c8f69b4d3fb476e67fb58c0f" -> "sha256:b5331fe5f057c9611875104795b1031ad679d0d4e5779546d763d0e0b5bd2c12" [label=""];
  "sha256:b5331fe5f057c9611875104795b1031ad679d0d4e5779546d763d0e0b5bd2c12" -> "sha256:3d1b290928a6064ccd5a82bd62c30af38281a6d279d4f17389c82cdabea5892c" [label=""];
  "sha256:4e309f33652b816e4105239f71985b77cdd817b5c8f69b4d3fb476e67fb58c0f" -> "sha256:3d1b290928a6064ccd5a82bd62c30af38281a6d279d4f17389c82cdabea5892c" [label=""];
  "sha256:3d1b290928a6064ccd5a82bd62c30af38281a6d279d4f17389c82cdabea5892c" -> "sha256:63b9bda005cad2ee2c0ad946e5656adf458bfb3d168d9de2a4dacbee785d3cae" [label=""];
  "sha256:63b9bda005cad2ee2c0ad946e5656adf458bfb3d168d9de2a4dacbee785d3cae" -> "sha256:af8411d9ae4d374b1dae185bf5b3da4324f06c1ea582cfe11f1c1c95f561fc9a" [label=""];
  "sha256:af8411d9ae4d374b1dae185bf5b3da4324f06c1ea582cfe11f1c1c95f561fc9a" -> "sha256:54df51c2c8ba526e8c324df9de4d03550c74d0bcdf15eeb3f77b6a8ff1bfe595" [label=""];
  "sha256:54df51c2c8ba526e8c324df9de4d03550c74d0bcdf15eeb3f77b6a8ff1bfe595" -> "sha256:3ef64d2bad0e302a1c0d2ded81bae94697b7dbd5a4bbe5d128aa66be3d778114" [label=""];
}

