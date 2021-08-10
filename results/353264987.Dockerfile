[app/sources/353264987.Dockerfile]
digraph {
  "sha256:7e9e8e8c069d134c696d4a147b0d4ca35340d29a9495af977c06b2ab2defb47d" [label="docker-image://docker.io/tudorg/xgo-deb6-base:latest" shape="ellipse"];
  "sha256:8c718cff92537908726a345a4e321e3bef40dfd5ddc1cd373620610e72a70a9a" [label="/bin/sh -c export ROOT_DIST=\"https://storage.googleapis.com/golang/go1.7.linux-amd64.tar.gz\" &&   export ROOT_DIST_SHA1=\"a744e29da97fc3aadad1ee0d7d89b0d899645e50\" &&     $BOOTSTRAP_PURE" shape="box"];
  "sha256:b0c9a338362221b31a74914d4de172cc7096f0bb30346ee3f4ebf2bdf6e93400" [label="sha256:b0c9a338362221b31a74914d4de172cc7096f0bb30346ee3f4ebf2bdf6e93400" shape="plaintext"];
  "sha256:7e9e8e8c069d134c696d4a147b0d4ca35340d29a9495af977c06b2ab2defb47d" -> "sha256:8c718cff92537908726a345a4e321e3bef40dfd5ddc1cd373620610e72a70a9a" [label=""];
  "sha256:8c718cff92537908726a345a4e321e3bef40dfd5ddc1cd373620610e72a70a9a" -> "sha256:b0c9a338362221b31a74914d4de172cc7096f0bb30346ee3f4ebf2bdf6e93400" [label=""];
}

