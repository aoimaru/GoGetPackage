[app/sources/350090629.Dockerfile]
digraph {
  "sha256:fed2184a60800ca1bd93dcf7ac166be9b08716b025fbdc6df3b78b77ff931305" [label="docker-image://docker.io/openshift/origin:latest" shape="ellipse"];
  "sha256:4dc6294b40c6a04559b92afe27d1bf2b3ee4ca7d0bfc371f719bf24e677da8d9" [label="/bin/sh -c INSTALL_PKGS=\"kmod keepalived iproute psmisc nmap-ncat net-tools\" &&     yum install -y $INSTALL_PKGS &&     rpm -V $INSTALL_PKGS &&     yum clean all" shape="box"];
  "sha256:850f5a9f15862da5d747b3fa5436752946c64a608d3d5e19a0f228a4ea91864b" [label="local://context" shape="ellipse"];
  "sha256:0e8f9aab19a79d91ceaa02f336afe483a7592a7e3253af3003c3bbedcf24bc35" [label="copy{src=/, dest=/var/lib/ipfailover/keepalived/}" shape="note"];
  "sha256:1a199084f365c55762ce774277a1cb0872a03235617099c70d1c5c62c813595d" [label="mkdir{path=/var/lib/ipfailover}" shape="note"];
  "sha256:f6f9840f026f4d74e7d61e91e9852405c640ac0a5d85c24b46981f8ebe4517fd" [label="sha256:f6f9840f026f4d74e7d61e91e9852405c640ac0a5d85c24b46981f8ebe4517fd" shape="plaintext"];
  "sha256:fed2184a60800ca1bd93dcf7ac166be9b08716b025fbdc6df3b78b77ff931305" -> "sha256:4dc6294b40c6a04559b92afe27d1bf2b3ee4ca7d0bfc371f719bf24e677da8d9" [label=""];
  "sha256:4dc6294b40c6a04559b92afe27d1bf2b3ee4ca7d0bfc371f719bf24e677da8d9" -> "sha256:0e8f9aab19a79d91ceaa02f336afe483a7592a7e3253af3003c3bbedcf24bc35" [label=""];
  "sha256:850f5a9f15862da5d747b3fa5436752946c64a608d3d5e19a0f228a4ea91864b" -> "sha256:0e8f9aab19a79d91ceaa02f336afe483a7592a7e3253af3003c3bbedcf24bc35" [label=""];
  "sha256:0e8f9aab19a79d91ceaa02f336afe483a7592a7e3253af3003c3bbedcf24bc35" -> "sha256:1a199084f365c55762ce774277a1cb0872a03235617099c70d1c5c62c813595d" [label=""];
  "sha256:1a199084f365c55762ce774277a1cb0872a03235617099c70d1c5c62c813595d" -> "sha256:f6f9840f026f4d74e7d61e91e9852405c640ac0a5d85c24b46981f8ebe4517fd" [label=""];
}

