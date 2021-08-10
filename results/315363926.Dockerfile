[app/sources/315363926.Dockerfile]
digraph {
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" [label="docker-image://docker.io/library/alpine:latest" shape="ellipse"];
  "sha256:f4c66593c5b297baef00582b32dae4061f53bf39c83ad3dd60501b61272f0859" [label="/bin/sh -c echo \"**** install packages ****\" &&     apk --no-cache --no-progress add bash curl unzip tar iptables ip6tables jq openvpn &&     echo \"**** add s6 overlay ****\" &&     curl -o /tmp/s6-overlay.tar.gz -L         \"https://github.com/just-containers/s6-overlay/releases/download/v1.22.0.0/s6-overlay-amd64.tar.gz\" &&     tar xfz /tmp/s6-overlay.tar.gz -C / &&     echo \"**** create folders ****\" &&     mkdir -p /vpn     mkdir -p /ovpn     echo \"**** cleanup ****\" &&     apk del --purge tar &&     rm -rf /tmp/*" shape="box"];
  "sha256:39226d1d2722a2050b50a055724ea6e14589061f7ccadce559d248a285bbf287" [label="local://context" shape="ellipse"];
  "sha256:fce9cefe2c801f59ccb27ef8f3bc6e24ebf1f8e2e439fdfbe4af11186138be9c" [label="copy{src=/root, dest=/}" shape="note"];
  "sha256:7d48657fa68030f5947bbbdb905d46dae98d299ccfd4c918fffccf4a91599ac0" [label="sha256:7d48657fa68030f5947bbbdb905d46dae98d299ccfd4c918fffccf4a91599ac0" shape="plaintext"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" -> "sha256:f4c66593c5b297baef00582b32dae4061f53bf39c83ad3dd60501b61272f0859" [label=""];
  "sha256:f4c66593c5b297baef00582b32dae4061f53bf39c83ad3dd60501b61272f0859" -> "sha256:fce9cefe2c801f59ccb27ef8f3bc6e24ebf1f8e2e439fdfbe4af11186138be9c" [label=""];
  "sha256:39226d1d2722a2050b50a055724ea6e14589061f7ccadce559d248a285bbf287" -> "sha256:fce9cefe2c801f59ccb27ef8f3bc6e24ebf1f8e2e439fdfbe4af11186138be9c" [label=""];
  "sha256:fce9cefe2c801f59ccb27ef8f3bc6e24ebf1f8e2e439fdfbe4af11186138be9c" -> "sha256:7d48657fa68030f5947bbbdb905d46dae98d299ccfd4c918fffccf4a91599ac0" [label=""];
}

