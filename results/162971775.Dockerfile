[app/sources/162971775.Dockerfile]
digraph {
  "sha256:379c10e85a3146372159b6b067b9c8a2b2b74a6ca1e8b320639183a834a31503" [label="docker-image://docker.io/problemtools/icpc:develop@sha256:bfa3fcdb7e2ff951c2e4fd4a6fa87df2eded9d7b1f74231e7e050c42cdfedc6e" shape="ellipse"];
  "sha256:01509124a8eb646ac7c592c853b2ab7f8899d2570b69dafa1fdec9f3991ca687" [label="/bin/sh -c apt-get update &&     apt-get install -y             mono-complete             ghc haskell-platform             libmozjs-52-dev             gccgo             fp-compiler             php-cli             swi-prolog             scala             sbcl             ocaml-nox             rustc    ;" shape="box"];
  "sha256:d812d8b096a47c0c59bb26a5cc60ca8d0004395f9bf73e7d5fc7008fe073cbaa" [label="sha256:d812d8b096a47c0c59bb26a5cc60ca8d0004395f9bf73e7d5fc7008fe073cbaa" shape="plaintext"];
  "sha256:379c10e85a3146372159b6b067b9c8a2b2b74a6ca1e8b320639183a834a31503" -> "sha256:01509124a8eb646ac7c592c853b2ab7f8899d2570b69dafa1fdec9f3991ca687" [label=""];
  "sha256:01509124a8eb646ac7c592c853b2ab7f8899d2570b69dafa1fdec9f3991ca687" -> "sha256:d812d8b096a47c0c59bb26a5cc60ca8d0004395f9bf73e7d5fc7008fe073cbaa" [label=""];
}

