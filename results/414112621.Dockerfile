[app/sources/414112621.Dockerfile]
digraph {
  "sha256:20d9854c73b93e253d2f60126a913c2d7ec1720860ebdb3f1e75626c954ea1de" [label="local://context" shape="ellipse"];
  "sha256:3a10f558748c1cb22051bc4d06a144b7bd92d6b82418210ed05556abf0ecb942" [label="docker-image://docker.io/library/ubuntu:precise" shape="ellipse"];
  "sha256:7ede3773d879a26586056a4f1f690376bf9cd6ebff2cd41e147bd77eefe7562f" [label="/bin/sh -c echo deb http://archive.ubuntu.com/ubuntu/ precise main universe > /etc/apt/sources.list.d/precise.list" shape="box"];
  "sha256:46d6b9b48a88428238284bdf59224eee8e1b6cd7a5cc5082b286d3d93893a564" [label="/bin/sh -c apt-get update -q" shape="box"];
  "sha256:1d566c7a78a5c281cb4086f38f92cf71e155d220c12427e784b2feb6fac54023" [label="/bin/sh -c apt-get install -qy openvpn iptables socat curl" shape="box"];
  "sha256:53a97e1567f4de0b1483ee8c857da6047acbcec3b28587c82b5cf4c3816932e3" [label="copy{src=/bin, dest=/usr/local/sbin}" shape="note"];
  "sha256:2ae2ccaf2213fa592aafc219c5074756906706bbd4f20aa37a9e3e5edbb9d058" [label="sha256:2ae2ccaf2213fa592aafc219c5074756906706bbd4f20aa37a9e3e5edbb9d058" shape="plaintext"];
  "sha256:3a10f558748c1cb22051bc4d06a144b7bd92d6b82418210ed05556abf0ecb942" -> "sha256:7ede3773d879a26586056a4f1f690376bf9cd6ebff2cd41e147bd77eefe7562f" [label=""];
  "sha256:7ede3773d879a26586056a4f1f690376bf9cd6ebff2cd41e147bd77eefe7562f" -> "sha256:46d6b9b48a88428238284bdf59224eee8e1b6cd7a5cc5082b286d3d93893a564" [label=""];
  "sha256:46d6b9b48a88428238284bdf59224eee8e1b6cd7a5cc5082b286d3d93893a564" -> "sha256:1d566c7a78a5c281cb4086f38f92cf71e155d220c12427e784b2feb6fac54023" [label=""];
  "sha256:1d566c7a78a5c281cb4086f38f92cf71e155d220c12427e784b2feb6fac54023" -> "sha256:53a97e1567f4de0b1483ee8c857da6047acbcec3b28587c82b5cf4c3816932e3" [label=""];
  "sha256:20d9854c73b93e253d2f60126a913c2d7ec1720860ebdb3f1e75626c954ea1de" -> "sha256:53a97e1567f4de0b1483ee8c857da6047acbcec3b28587c82b5cf4c3816932e3" [label=""];
  "sha256:53a97e1567f4de0b1483ee8c857da6047acbcec3b28587c82b5cf4c3816932e3" -> "sha256:2ae2ccaf2213fa592aafc219c5074756906706bbd4f20aa37a9e3e5edbb9d058" [label=""];
}

