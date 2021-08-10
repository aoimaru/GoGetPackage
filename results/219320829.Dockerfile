[app/sources/219320829.Dockerfile]
digraph {
  "sha256:c72b6c855e5a9c758366321a715e67894a23c79c878d2a457f9bf15c55cf0c5a" [label="docker-image://docker.io/library/golang:1.4" shape="ellipse"];
  "sha256:b174e99b43cfb167c1da6a07bd8dd8f8205e2531faa973352c59d91798450dee" [label="mkdir{path=/go/src/github.com/docker/distribution}" shape="note"];
  "sha256:aeda63cdbe4b4582088e54dfe982148dce3d368e16222a10aa3ebe21b9123556" [label="local://context" shape="ellipse"];
  "sha256:73ca4b91982e33e68c37bd4f4c50a49b4bf18cbfae935a3df3f7fc97cf073fc2" [label="copy{src=/, dest=/go/src/github.com/docker/distribution}" shape="note"];
  "sha256:3ec4083ceb748215765f9d445bc1ff7bbe128b5d9ac8b211bf8db9bb2df40a3d" [label="/bin/sh -c make PREFIX=/go clean binaries" shape="box"];
  "sha256:d81c1a57c045b3c76c150a7b80c32b799d8b8c0d59df211239cd89bdd261a1ab" [label="sha256:d81c1a57c045b3c76c150a7b80c32b799d8b8c0d59df211239cd89bdd261a1ab" shape="plaintext"];
  "sha256:c72b6c855e5a9c758366321a715e67894a23c79c878d2a457f9bf15c55cf0c5a" -> "sha256:b174e99b43cfb167c1da6a07bd8dd8f8205e2531faa973352c59d91798450dee" [label=""];
  "sha256:b174e99b43cfb167c1da6a07bd8dd8f8205e2531faa973352c59d91798450dee" -> "sha256:73ca4b91982e33e68c37bd4f4c50a49b4bf18cbfae935a3df3f7fc97cf073fc2" [label=""];
  "sha256:aeda63cdbe4b4582088e54dfe982148dce3d368e16222a10aa3ebe21b9123556" -> "sha256:73ca4b91982e33e68c37bd4f4c50a49b4bf18cbfae935a3df3f7fc97cf073fc2" [label=""];
  "sha256:73ca4b91982e33e68c37bd4f4c50a49b4bf18cbfae935a3df3f7fc97cf073fc2" -> "sha256:3ec4083ceb748215765f9d445bc1ff7bbe128b5d9ac8b211bf8db9bb2df40a3d" [label=""];
  "sha256:3ec4083ceb748215765f9d445bc1ff7bbe128b5d9ac8b211bf8db9bb2df40a3d" -> "sha256:d81c1a57c045b3c76c150a7b80c32b799d8b8c0d59df211239cd89bdd261a1ab" [label=""];
}

