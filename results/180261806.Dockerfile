[app/sources/180261806.Dockerfile]
digraph {
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" [label="docker-image://docker.io/library/debian:jessie" shape="ellipse"];
  "sha256:73a3aa8fc7c1dd19682d10ec99955c66d941c5a02268d21b285967faa5d65a0d" [label="/bin/sh -c apt-get update &&     apt-get install -y --force-yes --no-install-recommends openjdk-7-jdk mongodb &&     apt-get clean &&     rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:c88f345f3c8c32a67449185bcdd5085e371f2506a867075421b101673d1d8523" [label="/bin/sh -c mkdir -p /data/db" shape="box"];
  "sha256:ac651d081b2b9c2165ce649105656f8529ea921f59e776f941d4dd01bc97514d" [label="local://context" shape="ellipse"];
  "sha256:96ccc96beee22b0f9fc5d7278f09f70bc5dab4ae1f9fec12f0314fa2ef2d6d56" [label="copy{src=/target/scala-2.10/books-service-assembly-1.0.jar, dest=/bs.jar}" shape="note"];
  "sha256:dd1978f9a17f512c16cbd188e04e6e1adbb1c8a51bbd257495dda629647ed463" [label="copy{src=/client/components, dest=/client/components}" shape="note"];
  "sha256:126c0787e0ddd06676e38f055b25f317b8bb11223b2ff55ab7b8cd104fd06935" [label="copy{src=/run.sh, dest=/run.sh}" shape="note"];
  "sha256:5ce154d5c8041e8daca990f3295ac4347ccc42d21bc0e0fb3b8f38ba710f4aa2" [label="/bin/sh -c chmod +x /run.sh" shape="box"];
  "sha256:825c1d62d97576fea69e1df9a3f4cb921642f95942700400bf31c4305e76779a" [label="sha256:825c1d62d97576fea69e1df9a3f4cb921642f95942700400bf31c4305e76779a" shape="plaintext"];
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" -> "sha256:73a3aa8fc7c1dd19682d10ec99955c66d941c5a02268d21b285967faa5d65a0d" [label=""];
  "sha256:73a3aa8fc7c1dd19682d10ec99955c66d941c5a02268d21b285967faa5d65a0d" -> "sha256:c88f345f3c8c32a67449185bcdd5085e371f2506a867075421b101673d1d8523" [label=""];
  "sha256:c88f345f3c8c32a67449185bcdd5085e371f2506a867075421b101673d1d8523" -> "sha256:96ccc96beee22b0f9fc5d7278f09f70bc5dab4ae1f9fec12f0314fa2ef2d6d56" [label=""];
  "sha256:ac651d081b2b9c2165ce649105656f8529ea921f59e776f941d4dd01bc97514d" -> "sha256:96ccc96beee22b0f9fc5d7278f09f70bc5dab4ae1f9fec12f0314fa2ef2d6d56" [label=""];
  "sha256:96ccc96beee22b0f9fc5d7278f09f70bc5dab4ae1f9fec12f0314fa2ef2d6d56" -> "sha256:dd1978f9a17f512c16cbd188e04e6e1adbb1c8a51bbd257495dda629647ed463" [label=""];
  "sha256:ac651d081b2b9c2165ce649105656f8529ea921f59e776f941d4dd01bc97514d" -> "sha256:dd1978f9a17f512c16cbd188e04e6e1adbb1c8a51bbd257495dda629647ed463" [label=""];
  "sha256:dd1978f9a17f512c16cbd188e04e6e1adbb1c8a51bbd257495dda629647ed463" -> "sha256:126c0787e0ddd06676e38f055b25f317b8bb11223b2ff55ab7b8cd104fd06935" [label=""];
  "sha256:ac651d081b2b9c2165ce649105656f8529ea921f59e776f941d4dd01bc97514d" -> "sha256:126c0787e0ddd06676e38f055b25f317b8bb11223b2ff55ab7b8cd104fd06935" [label=""];
  "sha256:126c0787e0ddd06676e38f055b25f317b8bb11223b2ff55ab7b8cd104fd06935" -> "sha256:5ce154d5c8041e8daca990f3295ac4347ccc42d21bc0e0fb3b8f38ba710f4aa2" [label=""];
  "sha256:5ce154d5c8041e8daca990f3295ac4347ccc42d21bc0e0fb3b8f38ba710f4aa2" -> "sha256:825c1d62d97576fea69e1df9a3f4cb921642f95942700400bf31c4305e76779a" [label=""];
}

