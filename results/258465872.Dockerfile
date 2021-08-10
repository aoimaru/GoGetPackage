[app/sources/258465872.Dockerfile]
digraph {
  "sha256:cd8fee30613b51842b9fed98440a3e3bb6c29862fb9975dc907e0568562e7c1f" [label="docker-image://docker.io/sethmiller/bind:latest" shape="ellipse"];
  "sha256:8a586d3a83c8a3c0de6e3884d9e09b5dcf546830db2040133a5d2f8356444358" [label="mkdir -p /etc/keys" shape="box"];
  "sha256:6616ecb12548468340c3357709232a00aa4cfed0334ae8e52becfdc892a8657c" [label="dnssec-keygen -K /etc/keys -a HMAC-MD5 -b 512 -n USER -r /dev/urandom dnsupdate." shape="box"];
  "sha256:687de639eb56ee2e5d04b975e24c23af110ab32a83bd92ed9c954a7112f2c09e" [label="local://context" shape="ellipse"];
  "sha256:c1854f35bc38774901398b18a9b7dcb6a99e1f7cfac0a9354ab76a7c1a35600f" [label="copy{src=/keys.conf, dest=/etc/bind/}" shape="note"];
  "sha256:0cf06dbd4abee9b4e30db5e058ab5d4153c528b836715ce06aec2c0fad0f8970" [label="/bin/sh -c SECRET_KEY=$(grep '^Key:' /etc/keys/Kdnsupdate.*.private | awk '{print $2}')       && sed -i 's!REPLACE_WITH_SECRET_KEY!'${SECRET_KEY?}'!' /etc/bind/keys.conf" shape="box"];
  "sha256:aa724f8144e355c359c039276ea4ea48eb65255ebe7032c133c6013a19956051" [label="copy{src=/named.conf.custom-zones, dest=/etc/bind/}" shape="note"];
  "sha256:6f9a8d653fcdaa1c69f2a57d44b8b98afe381697dc9cb8cdc1c01317a5c4060b" [label="copy{src=/db.example.com, dest=/etc/bind/}" shape="note"];
  "sha256:924a0b503f8f445c4666b2134695eb31b500e96ea0de5222bcb4bd88388fb86e" [label="copy{src=/db.10.10.10, dest=/etc/bind/}" shape="note"];
  "sha256:6ce62ffac77d1cd1bea59cb370eceafac05e83ef50e7feb6ad192393b311ef66" [label="copy{src=/db.11.11.11, dest=/etc/bind/}" shape="note"];
  "sha256:2ee8fb3abfda1fbb4d8d9b9d71c615deade42960d0b355cbeec07c41d1a8450b" [label="copy{src=/named.conf, dest=/etc/bind/}" shape="note"];
  "sha256:b586aeb819de070c46cdd3e2c5ad625bc96feb1a162e0d189f9859715a97ea15" [label="/bin/sh -c cp /etc/keys/Kdnsupdate.* /etc/bind/" shape="box"];
  "sha256:10317b4d6b89858bcf8831c128849fc204e6f1e83823c97f0edf3145c828beb0" [label="sha256:10317b4d6b89858bcf8831c128849fc204e6f1e83823c97f0edf3145c828beb0" shape="plaintext"];
  "sha256:cd8fee30613b51842b9fed98440a3e3bb6c29862fb9975dc907e0568562e7c1f" -> "sha256:8a586d3a83c8a3c0de6e3884d9e09b5dcf546830db2040133a5d2f8356444358" [label=""];
  "sha256:8a586d3a83c8a3c0de6e3884d9e09b5dcf546830db2040133a5d2f8356444358" -> "sha256:6616ecb12548468340c3357709232a00aa4cfed0334ae8e52becfdc892a8657c" [label=""];
  "sha256:6616ecb12548468340c3357709232a00aa4cfed0334ae8e52becfdc892a8657c" -> "sha256:c1854f35bc38774901398b18a9b7dcb6a99e1f7cfac0a9354ab76a7c1a35600f" [label=""];
  "sha256:687de639eb56ee2e5d04b975e24c23af110ab32a83bd92ed9c954a7112f2c09e" -> "sha256:c1854f35bc38774901398b18a9b7dcb6a99e1f7cfac0a9354ab76a7c1a35600f" [label=""];
  "sha256:c1854f35bc38774901398b18a9b7dcb6a99e1f7cfac0a9354ab76a7c1a35600f" -> "sha256:0cf06dbd4abee9b4e30db5e058ab5d4153c528b836715ce06aec2c0fad0f8970" [label=""];
  "sha256:0cf06dbd4abee9b4e30db5e058ab5d4153c528b836715ce06aec2c0fad0f8970" -> "sha256:aa724f8144e355c359c039276ea4ea48eb65255ebe7032c133c6013a19956051" [label=""];
  "sha256:687de639eb56ee2e5d04b975e24c23af110ab32a83bd92ed9c954a7112f2c09e" -> "sha256:aa724f8144e355c359c039276ea4ea48eb65255ebe7032c133c6013a19956051" [label=""];
  "sha256:aa724f8144e355c359c039276ea4ea48eb65255ebe7032c133c6013a19956051" -> "sha256:6f9a8d653fcdaa1c69f2a57d44b8b98afe381697dc9cb8cdc1c01317a5c4060b" [label=""];
  "sha256:687de639eb56ee2e5d04b975e24c23af110ab32a83bd92ed9c954a7112f2c09e" -> "sha256:6f9a8d653fcdaa1c69f2a57d44b8b98afe381697dc9cb8cdc1c01317a5c4060b" [label=""];
  "sha256:6f9a8d653fcdaa1c69f2a57d44b8b98afe381697dc9cb8cdc1c01317a5c4060b" -> "sha256:924a0b503f8f445c4666b2134695eb31b500e96ea0de5222bcb4bd88388fb86e" [label=""];
  "sha256:687de639eb56ee2e5d04b975e24c23af110ab32a83bd92ed9c954a7112f2c09e" -> "sha256:924a0b503f8f445c4666b2134695eb31b500e96ea0de5222bcb4bd88388fb86e" [label=""];
  "sha256:924a0b503f8f445c4666b2134695eb31b500e96ea0de5222bcb4bd88388fb86e" -> "sha256:6ce62ffac77d1cd1bea59cb370eceafac05e83ef50e7feb6ad192393b311ef66" [label=""];
  "sha256:687de639eb56ee2e5d04b975e24c23af110ab32a83bd92ed9c954a7112f2c09e" -> "sha256:6ce62ffac77d1cd1bea59cb370eceafac05e83ef50e7feb6ad192393b311ef66" [label=""];
  "sha256:6ce62ffac77d1cd1bea59cb370eceafac05e83ef50e7feb6ad192393b311ef66" -> "sha256:2ee8fb3abfda1fbb4d8d9b9d71c615deade42960d0b355cbeec07c41d1a8450b" [label=""];
  "sha256:687de639eb56ee2e5d04b975e24c23af110ab32a83bd92ed9c954a7112f2c09e" -> "sha256:2ee8fb3abfda1fbb4d8d9b9d71c615deade42960d0b355cbeec07c41d1a8450b" [label=""];
  "sha256:2ee8fb3abfda1fbb4d8d9b9d71c615deade42960d0b355cbeec07c41d1a8450b" -> "sha256:b586aeb819de070c46cdd3e2c5ad625bc96feb1a162e0d189f9859715a97ea15" [label=""];
  "sha256:b586aeb819de070c46cdd3e2c5ad625bc96feb1a162e0d189f9859715a97ea15" -> "sha256:10317b4d6b89858bcf8831c128849fc204e6f1e83823c97f0edf3145c828beb0" [label=""];
}

