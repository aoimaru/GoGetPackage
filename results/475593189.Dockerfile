[app/sources/475593189.Dockerfile]
digraph {
  "sha256:bcc8fa33ee7ea22336f7cf39b67d53c63c7e6a1e510b5d32713acadc6c3b76e0" [label="docker-image://docker.io/library/golang:1.5.2" shape="ellipse"];
  "sha256:2c37a2bed794669051841d0fd2eac910acb38f521e6e47a6e331a92094856c18" [label="/bin/sh -c git clone https://github.com/Masterminds/glide.git $GOPATH/src/github.com/Masterminds/glide &&     cd $GOPATH/src/github.com/Masterminds/glide &&     make bootstrap &&     make build &&     cp ./glide /usr/bin" shape="box"];
  "sha256:a1dfae20a6083b7f7ae62ebfcdffae7341ccbd40251ea07a6c1d1dedc517d937" [label="local://context" shape="ellipse"];
  "sha256:71a79d734265281f2a2ed1ae79289120d168b9c9b66df8a46bc49f449d46560b" [label="copy{src=/, dest=/src/github.com/buehler/twitterbeat}" shape="note"];
  "sha256:ef7e6297ecc4dcb7f9411cacec26e9448716b06b5d9a1546c13eeef93c19fae0" [label="/bin/sh -c cd /go/src/github.com/buehler/twitterbeat &&     make build-docker" shape="box"];
  "sha256:3b5c68e1cec5a3260ef46e44489acbd4f5562b50e05b36cd3d5ff74a44bb44ec" [label="/bin/sh -c mkdir -p /etc/twitterbeat/ /var/twitterbeat/data /var/twitterbeat/config &&     cp /go/src/github.com/buehler/twitterbeat/twitterbeat /etc/twitterbeat/ &&     cp /go/src/github.com/buehler/twitterbeat/etc/twitterbeat.yml /var/twitterbeat/config/twitterbeat.yml" shape="box"];
  "sha256:d62eca070321b9d9a0c15e8d8ad4e8691a92599f17050670036387e63d2832b1" [label="/bin/sh -c rm -rf /go" shape="box"];
  "sha256:db83955baa206896da7133d6bb018b7ec9fae8e91c52d83f30b8147b22623241" [label="mkdir{path=/etc/twitterbeat}" shape="note"];
  "sha256:860a10bd46933b80a41d636104b88835d929cc1d615550055e44524a7f20541f" [label="sha256:860a10bd46933b80a41d636104b88835d929cc1d615550055e44524a7f20541f" shape="plaintext"];
  "sha256:bcc8fa33ee7ea22336f7cf39b67d53c63c7e6a1e510b5d32713acadc6c3b76e0" -> "sha256:2c37a2bed794669051841d0fd2eac910acb38f521e6e47a6e331a92094856c18" [label=""];
  "sha256:2c37a2bed794669051841d0fd2eac910acb38f521e6e47a6e331a92094856c18" -> "sha256:71a79d734265281f2a2ed1ae79289120d168b9c9b66df8a46bc49f449d46560b" [label=""];
  "sha256:a1dfae20a6083b7f7ae62ebfcdffae7341ccbd40251ea07a6c1d1dedc517d937" -> "sha256:71a79d734265281f2a2ed1ae79289120d168b9c9b66df8a46bc49f449d46560b" [label=""];
  "sha256:71a79d734265281f2a2ed1ae79289120d168b9c9b66df8a46bc49f449d46560b" -> "sha256:ef7e6297ecc4dcb7f9411cacec26e9448716b06b5d9a1546c13eeef93c19fae0" [label=""];
  "sha256:ef7e6297ecc4dcb7f9411cacec26e9448716b06b5d9a1546c13eeef93c19fae0" -> "sha256:3b5c68e1cec5a3260ef46e44489acbd4f5562b50e05b36cd3d5ff74a44bb44ec" [label=""];
  "sha256:3b5c68e1cec5a3260ef46e44489acbd4f5562b50e05b36cd3d5ff74a44bb44ec" -> "sha256:d62eca070321b9d9a0c15e8d8ad4e8691a92599f17050670036387e63d2832b1" [label=""];
  "sha256:d62eca070321b9d9a0c15e8d8ad4e8691a92599f17050670036387e63d2832b1" -> "sha256:db83955baa206896da7133d6bb018b7ec9fae8e91c52d83f30b8147b22623241" [label=""];
  "sha256:db83955baa206896da7133d6bb018b7ec9fae8e91c52d83f30b8147b22623241" -> "sha256:860a10bd46933b80a41d636104b88835d929cc1d615550055e44524a7f20541f" [label=""];
}

