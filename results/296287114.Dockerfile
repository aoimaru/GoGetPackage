[app/sources/296287114.Dockerfile]
digraph {
  "sha256:f5fdbbe4e415cc9ae55a4c8b4a0e66315865e2cfd13b0fc731d3b8c6cdd95503" [label="local://context" shape="ellipse"];
  "sha256:14dd403f25ae9e519bd44f27dc17af7ce80f5a4f9f48ca88108364e67ec5d360" [label="docker-image://docker.io/library/ubuntu:xenial" shape="ellipse"];
  "sha256:07772853b48fec416e61b4bb9a714a6539b503972dce989de687050b6c57b47e" [label="/bin/sh -c apt-get update && apt-get install -y xinetd gcc ucspi-tcp lua5.2" shape="box"];
  "sha256:1eb67317f6bc43b2716acea9bf88c02d525728d6a434686f27bc2379261b00fd" [label="/bin/sh -c adduser --disabled-password --gecos '' ctf" shape="box"];
  "sha256:418447654ea285f79ef91bdff265a37f64e7a9a7b742f52ab9d7b8cb0b2e7ba6" [label="mkdir{path=/home/ctf}" shape="note"];
  "sha256:00e4ead11944ffb3f925b456dc1d686b3aa97c191c29f5c42b45fd1a41015f29" [label="copy{src=/byteme.lua, dest=/home/ctf/}" shape="note"];
  "sha256:1e61b0d159f13e0616184dcd82b077e251a87d74b7690ddf7b3de3bc5d5d0ef9" [label="copy{src=/byteme.xinetd, dest=/etc/xinetd.d/byteme}" shape="note"];
  "sha256:a76c2cb888b3c1cad5bfd707d337ba54390aedb5572b0e44b5eb1d70f7627fa7" [label="/bin/sh -c service xinetd restart" shape="box"];
  "sha256:0ac3d8eab899b89495a0127a0d6d268eaf863c410d983be0a66bbd70214c6fd7" [label="/bin/sh -c chown -R root:root ." shape="box"];
  "sha256:808e851d890d7f0ed4798fd9d2a67448c3363d5d0d78bf31a729a320ad2e5891" [label="sha256:808e851d890d7f0ed4798fd9d2a67448c3363d5d0d78bf31a729a320ad2e5891" shape="plaintext"];
  "sha256:14dd403f25ae9e519bd44f27dc17af7ce80f5a4f9f48ca88108364e67ec5d360" -> "sha256:07772853b48fec416e61b4bb9a714a6539b503972dce989de687050b6c57b47e" [label=""];
  "sha256:07772853b48fec416e61b4bb9a714a6539b503972dce989de687050b6c57b47e" -> "sha256:1eb67317f6bc43b2716acea9bf88c02d525728d6a434686f27bc2379261b00fd" [label=""];
  "sha256:1eb67317f6bc43b2716acea9bf88c02d525728d6a434686f27bc2379261b00fd" -> "sha256:418447654ea285f79ef91bdff265a37f64e7a9a7b742f52ab9d7b8cb0b2e7ba6" [label=""];
  "sha256:418447654ea285f79ef91bdff265a37f64e7a9a7b742f52ab9d7b8cb0b2e7ba6" -> "sha256:00e4ead11944ffb3f925b456dc1d686b3aa97c191c29f5c42b45fd1a41015f29" [label=""];
  "sha256:f5fdbbe4e415cc9ae55a4c8b4a0e66315865e2cfd13b0fc731d3b8c6cdd95503" -> "sha256:00e4ead11944ffb3f925b456dc1d686b3aa97c191c29f5c42b45fd1a41015f29" [label=""];
  "sha256:00e4ead11944ffb3f925b456dc1d686b3aa97c191c29f5c42b45fd1a41015f29" -> "sha256:1e61b0d159f13e0616184dcd82b077e251a87d74b7690ddf7b3de3bc5d5d0ef9" [label=""];
  "sha256:f5fdbbe4e415cc9ae55a4c8b4a0e66315865e2cfd13b0fc731d3b8c6cdd95503" -> "sha256:1e61b0d159f13e0616184dcd82b077e251a87d74b7690ddf7b3de3bc5d5d0ef9" [label=""];
  "sha256:1e61b0d159f13e0616184dcd82b077e251a87d74b7690ddf7b3de3bc5d5d0ef9" -> "sha256:a76c2cb888b3c1cad5bfd707d337ba54390aedb5572b0e44b5eb1d70f7627fa7" [label=""];
  "sha256:a76c2cb888b3c1cad5bfd707d337ba54390aedb5572b0e44b5eb1d70f7627fa7" -> "sha256:0ac3d8eab899b89495a0127a0d6d268eaf863c410d983be0a66bbd70214c6fd7" [label=""];
  "sha256:0ac3d8eab899b89495a0127a0d6d268eaf863c410d983be0a66bbd70214c6fd7" -> "sha256:808e851d890d7f0ed4798fd9d2a67448c3363d5d0d78bf31a729a320ad2e5891" [label=""];
}

