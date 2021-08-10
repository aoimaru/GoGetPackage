[app/sources/471463494.Dockerfile]
digraph {
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" [label="docker-image://docker.io/library/ubuntu:latest" shape="ellipse"];
  "sha256:382bb82886a3bc78964f9555c3cf5ad31e0879b4ea9e6052494acef3e08f404d" [label="/bin/sh -c apt update &&    export DEBIAN_FRONTEND=noninteractive;apt install -yqq easy-rsa openvpn openvpn-auth-ldap iptables net-tools&&    rm -rf /tmp/*  /var/cache/*" shape="box"];
  "sha256:7150112ee580e7c734612f70f0cf3a160201390cfe830e8c8f8be55b84b152c3" [label="mkdir{path=/etc/openvpn}" shape="note"];
  "sha256:096f48c3ed0b3cf128c1a7311391976b9a208235323077d84e3ed3cd80e89a8e" [label="sha256:096f48c3ed0b3cf128c1a7311391976b9a208235323077d84e3ed3cd80e89a8e" shape="plaintext"];
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" -> "sha256:382bb82886a3bc78964f9555c3cf5ad31e0879b4ea9e6052494acef3e08f404d" [label=""];
  "sha256:382bb82886a3bc78964f9555c3cf5ad31e0879b4ea9e6052494acef3e08f404d" -> "sha256:7150112ee580e7c734612f70f0cf3a160201390cfe830e8c8f8be55b84b152c3" [label=""];
  "sha256:7150112ee580e7c734612f70f0cf3a160201390cfe830e8c8f8be55b84b152c3" -> "sha256:096f48c3ed0b3cf128c1a7311391976b9a208235323077d84e3ed3cd80e89a8e" [label=""];
}

