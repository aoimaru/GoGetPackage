[app/sources/279727804.Dockerfile]
digraph {
  "sha256:eccdc23ae33ff032265281cdcd61b6bcb08837a6e55df3e7dcb5aef332534337" [label="docker-image://docker.io/library/centos:7" shape="ellipse"];
  "sha256:78266ef0dfdef8a99542f0a8b1f5b2ab3a4fac54115fb98ebcadadaad5cfe034" [label="/bin/sh -c yum install -y build-essential golang" shape="box"];
  "sha256:73697aabf55bea3dcd746ef135c2a0ed48901ed0db026eb6e238f554d14131ee" [label="local://context" shape="ellipse"];
  "sha256:a1633ce82a21aac334ea2c1affef07530aebad8bde5e4d4216bfd814687cae44" [label="copy{src=/, dest=/go/src/tastes/shared-library}" shape="note"];
  "sha256:18e792afc6a45ff61970077cf99d605746d9d788d212dec32533c54d931f43d9" [label="/bin/sh -c cd /go/src/tastes/shared-library && \tgo build -buildmode=c-shared -o /nautilus.so nautilus.go && \tgcc -o /wale wale.c /nautilus.so" shape="box"];
  "sha256:9f899a1a2e2fe4d76df3afbc7109d9a5cd53637ae73d526eedc8f6a3be98249f" [label="/bin/sh -c /wale" shape="box"];
  "sha256:c03621871927c54907721ae20ef5f0ab318d2ddce86e1168050ae3ee0fefed7e" [label="sha256:c03621871927c54907721ae20ef5f0ab318d2ddce86e1168050ae3ee0fefed7e" shape="plaintext"];
  "sha256:eccdc23ae33ff032265281cdcd61b6bcb08837a6e55df3e7dcb5aef332534337" -> "sha256:78266ef0dfdef8a99542f0a8b1f5b2ab3a4fac54115fb98ebcadadaad5cfe034" [label=""];
  "sha256:78266ef0dfdef8a99542f0a8b1f5b2ab3a4fac54115fb98ebcadadaad5cfe034" -> "sha256:a1633ce82a21aac334ea2c1affef07530aebad8bde5e4d4216bfd814687cae44" [label=""];
  "sha256:73697aabf55bea3dcd746ef135c2a0ed48901ed0db026eb6e238f554d14131ee" -> "sha256:a1633ce82a21aac334ea2c1affef07530aebad8bde5e4d4216bfd814687cae44" [label=""];
  "sha256:a1633ce82a21aac334ea2c1affef07530aebad8bde5e4d4216bfd814687cae44" -> "sha256:18e792afc6a45ff61970077cf99d605746d9d788d212dec32533c54d931f43d9" [label=""];
  "sha256:18e792afc6a45ff61970077cf99d605746d9d788d212dec32533c54d931f43d9" -> "sha256:9f899a1a2e2fe4d76df3afbc7109d9a5cd53637ae73d526eedc8f6a3be98249f" [label=""];
  "sha256:9f899a1a2e2fe4d76df3afbc7109d9a5cd53637ae73d526eedc8f6a3be98249f" -> "sha256:c03621871927c54907721ae20ef5f0ab318d2ddce86e1168050ae3ee0fefed7e" [label=""];
}

