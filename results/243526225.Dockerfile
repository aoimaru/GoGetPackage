[app/sources/243526225.Dockerfile]
digraph {
  "sha256:407f5d379a92852f20e056009913fcf2a955d195bc8504850031c23329884955" [label="docker-image://docker.io/library/golang:latest" shape="ellipse"];
  "sha256:b8c691a52b315cc8bbbe422286510e4fde26960a4fe7ec78c200b3c54335c855" [label="/bin/sh -c apt-get update && apt-get install -y git &&     rm -rf /var/cache/apt/archives" shape="box"];
  "sha256:394058fdd75cb6a0e10918f82cd0f699f8586830464d109de526fb29d098294f" [label="docker-image://gcr.io/compute-image-tools-test/wrapper:latest" shape="ellipse"];
  "sha256:c6fc86e5292fbf04a906f3917a25342d2d6fb8f920cd9d7f45fe07963eb3e428" [label="copy{src=/wrapper, dest=/wrapper}" shape="note"];
  "sha256:ccfc5fe53d640ed0b4c535663c7e02068162c9f5fb9bbc9829db821d8827e79e" [label="local://context" shape="ellipse"];
  "sha256:b587e4886b62befc75c7fa44ed405b40cdc6a752b65ff806eca6302a7e29e7d0" [label="copy{src=/main.sh, dest=/main.sh}" shape="note"];
  "sha256:e913721539fe2fb778d789f6ed157e6c1cab194954d8b0bff2effa74f59978ed" [label="sha256:e913721539fe2fb778d789f6ed157e6c1cab194954d8b0bff2effa74f59978ed" shape="plaintext"];
  "sha256:407f5d379a92852f20e056009913fcf2a955d195bc8504850031c23329884955" -> "sha256:b8c691a52b315cc8bbbe422286510e4fde26960a4fe7ec78c200b3c54335c855" [label=""];
  "sha256:b8c691a52b315cc8bbbe422286510e4fde26960a4fe7ec78c200b3c54335c855" -> "sha256:c6fc86e5292fbf04a906f3917a25342d2d6fb8f920cd9d7f45fe07963eb3e428" [label=""];
  "sha256:394058fdd75cb6a0e10918f82cd0f699f8586830464d109de526fb29d098294f" -> "sha256:c6fc86e5292fbf04a906f3917a25342d2d6fb8f920cd9d7f45fe07963eb3e428" [label=""];
  "sha256:c6fc86e5292fbf04a906f3917a25342d2d6fb8f920cd9d7f45fe07963eb3e428" -> "sha256:b587e4886b62befc75c7fa44ed405b40cdc6a752b65ff806eca6302a7e29e7d0" [label=""];
  "sha256:ccfc5fe53d640ed0b4c535663c7e02068162c9f5fb9bbc9829db821d8827e79e" -> "sha256:b587e4886b62befc75c7fa44ed405b40cdc6a752b65ff806eca6302a7e29e7d0" [label=""];
  "sha256:b587e4886b62befc75c7fa44ed405b40cdc6a752b65ff806eca6302a7e29e7d0" -> "sha256:e913721539fe2fb778d789f6ed157e6c1cab194954d8b0bff2effa74f59978ed" [label=""];
}

