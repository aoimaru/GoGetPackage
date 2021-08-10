[app/sources/160527875.Dockerfile]
digraph {
  "sha256:1f729b82c2678ddc6c22029ba1fddcc4f2a1bc1c11b14fa8b725021d835becd3" [label="docker-image://docker.io/library/golang:1.12.1@sha256:62538d25400afa368551fdeebbeed63f37a388327037438199cdf60b7f465639" shape="ellipse"];
  "sha256:35dbdc9e3afca424e4235297b9ba21815099fea2c6599509e64acec458426100" [label="mkdir{path=/go/src/github.com/cloudflare/cfssl}" shape="note"];
  "sha256:3e53726f1d3cf24e8e48cd4e7d5c17786e6a39c030898002682f5a053eb8c46d" [label="local://context" shape="ellipse"];
  "sha256:ab8d7468e916a77cb934347ba19bcb7dce9cd58a15585fd1e55155d31a75b6e5" [label="copy{src=/, dest=/go/src/github.com/cloudflare/cfssl/}" shape="note"];
  "sha256:5427cff6c5a5dd2b8068bc6be5e42fb2b1985346151d5c1acc5af0c70ff4ac7d" [label="/bin/sh -c go get github.com/cloudflare/cfssl_trust/... &&     go get github.com/GeertJohan/go.rice/rice &&     rice embed-go -i=./cli/serve &&     cp -R /go/src/github.com/cloudflare/cfssl_trust /etc/cfssl &&     go install ./cmd/..." shape="box"];
  "sha256:24b130a648800384ad8fab0a90a156143e72916522777ea8d6bd8ea51265643e" [label="sha256:24b130a648800384ad8fab0a90a156143e72916522777ea8d6bd8ea51265643e" shape="plaintext"];
  "sha256:1f729b82c2678ddc6c22029ba1fddcc4f2a1bc1c11b14fa8b725021d835becd3" -> "sha256:35dbdc9e3afca424e4235297b9ba21815099fea2c6599509e64acec458426100" [label=""];
  "sha256:35dbdc9e3afca424e4235297b9ba21815099fea2c6599509e64acec458426100" -> "sha256:ab8d7468e916a77cb934347ba19bcb7dce9cd58a15585fd1e55155d31a75b6e5" [label=""];
  "sha256:3e53726f1d3cf24e8e48cd4e7d5c17786e6a39c030898002682f5a053eb8c46d" -> "sha256:ab8d7468e916a77cb934347ba19bcb7dce9cd58a15585fd1e55155d31a75b6e5" [label=""];
  "sha256:ab8d7468e916a77cb934347ba19bcb7dce9cd58a15585fd1e55155d31a75b6e5" -> "sha256:5427cff6c5a5dd2b8068bc6be5e42fb2b1985346151d5c1acc5af0c70ff4ac7d" [label=""];
  "sha256:5427cff6c5a5dd2b8068bc6be5e42fb2b1985346151d5c1acc5af0c70ff4ac7d" -> "sha256:24b130a648800384ad8fab0a90a156143e72916522777ea8d6bd8ea51265643e" [label=""];
}

