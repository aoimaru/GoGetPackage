[app/sources/351408334.Dockerfile]
digraph {
  "sha256:a81b8422334bb6f5709e35b29f348667295fbdf2b6099b9419aaa2b4f29b097f" [label="docker-image://docker.io/library/fedora24:latest" shape="ellipse"];
  "sha256:46437c22a889d640359785c5ef2442755d302b9a7e22997a4464eccc115cd654" [label="/bin/sh -c dnf -qy upgrade && dnf -qy install   autoconf   automake   bc   binutils-devel   gcc   git   m4   make   redhat-lsb   rsync   tar   unzip   which   java-1.8.0-openjdk   java-1.8.0-openjdk-devel && dnf -q clean all" shape="box"];
  "sha256:a82c2e6e5160fc931af5223eb251426df2f65e0f45e7e55a69e7fa161c48cbe3" [label="sha256:a82c2e6e5160fc931af5223eb251426df2f65e0f45e7e55a69e7fa161c48cbe3" shape="plaintext"];
  "sha256:a81b8422334bb6f5709e35b29f348667295fbdf2b6099b9419aaa2b4f29b097f" -> "sha256:46437c22a889d640359785c5ef2442755d302b9a7e22997a4464eccc115cd654" [label=""];
  "sha256:46437c22a889d640359785c5ef2442755d302b9a7e22997a4464eccc115cd654" -> "sha256:a82c2e6e5160fc931af5223eb251426df2f65e0f45e7e55a69e7fa161c48cbe3" [label=""];
}

