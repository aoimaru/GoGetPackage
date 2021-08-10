[app/sources/252789385.Dockerfile]
digraph {
  "sha256:276c76862cb2f5a434af8ed1a44d408ac79a3c25c2a9f6f21d89d8f5b28f4eb2" [label="docker-image://docker.io/duffqiu/golang:latest" shape="ellipse"];
  "sha256:9325335ae3df1ce8ebd6897a955e978f2486042b71567f3e26f3a0aefc83e3d5" [label="/bin/sh -c go get github.com/skynetservices/skydns" shape="box"];
  "sha256:c692de0c2f764ce930ea79e64823695e76c7d3c68860f8bd0a228910b9ba22a4" [label="mkdir{path=/src/github.com/skynetservices/skydns}" shape="note"];
  "sha256:150bac040303487e6db0124e40b366ce7c75e75ff2a1813a723c7e11dad38f8f" [label="/bin/sh -c go build -v" shape="box"];
  "sha256:2a874ff1f5515782e99b0f8e469487d9e21a4a740e137adac17b78db1181b865" [label="sha256:2a874ff1f5515782e99b0f8e469487d9e21a4a740e137adac17b78db1181b865" shape="plaintext"];
  "sha256:276c76862cb2f5a434af8ed1a44d408ac79a3c25c2a9f6f21d89d8f5b28f4eb2" -> "sha256:9325335ae3df1ce8ebd6897a955e978f2486042b71567f3e26f3a0aefc83e3d5" [label=""];
  "sha256:9325335ae3df1ce8ebd6897a955e978f2486042b71567f3e26f3a0aefc83e3d5" -> "sha256:c692de0c2f764ce930ea79e64823695e76c7d3c68860f8bd0a228910b9ba22a4" [label=""];
  "sha256:c692de0c2f764ce930ea79e64823695e76c7d3c68860f8bd0a228910b9ba22a4" -> "sha256:150bac040303487e6db0124e40b366ce7c75e75ff2a1813a723c7e11dad38f8f" [label=""];
  "sha256:150bac040303487e6db0124e40b366ce7c75e75ff2a1813a723c7e11dad38f8f" -> "sha256:2a874ff1f5515782e99b0f8e469487d9e21a4a740e137adac17b78db1181b865" [label=""];
}

