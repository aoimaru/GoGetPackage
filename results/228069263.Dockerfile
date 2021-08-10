[app/sources/228069263.Dockerfile]
digraph {
  "sha256:7e8c688afd08094f8f9517a9e016e0d3c11526cb454cbbe2febc298acf1bbad3" [label="docker-image://docker.io/library/golang:1.7" shape="ellipse"];
  "sha256:949c50ea02247b7de206575f32038eb6796608018a29d595dfd13278ad630f98" [label="/bin/sh -c go get github.com/onsi/ginkgo/ginkgo" shape="box"];
  "sha256:1a68593339907de372aab21bf20eff3d12519efd3d0d07ede0e93a53d7aab46f" [label="sha256:1a68593339907de372aab21bf20eff3d12519efd3d0d07ede0e93a53d7aab46f" shape="plaintext"];
  "sha256:7e8c688afd08094f8f9517a9e016e0d3c11526cb454cbbe2febc298acf1bbad3" -> "sha256:949c50ea02247b7de206575f32038eb6796608018a29d595dfd13278ad630f98" [label=""];
  "sha256:949c50ea02247b7de206575f32038eb6796608018a29d595dfd13278ad630f98" -> "sha256:1a68593339907de372aab21bf20eff3d12519efd3d0d07ede0e93a53d7aab46f" [label=""];
}

