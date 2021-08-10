[app/sources/308369783.Dockerfile]
digraph {
  "sha256:0bbe7a7f775257c810ebcd36361326abae8c24523729fefbcbc748474cfc163b" [label="docker-image://docker.io/library/python:3.6" shape="ellipse"];
  "sha256:63745824985577975640fba47404cde632990c1dc5963f64863121eee1de0acb" [label="/bin/sh -c curl -LO https://storage.googleapis.com/kubernetes-release/release/v1.9.0/bin/linux/amd64/kubectl" shape="box"];
  "sha256:c6b06b6d2d47d9ac81c5cf0f8de3e39ef1b033902fb527ac09416880882290df" [label="/bin/sh -c mv ./kubectl /usr/local/bin/kubectl && chmod +x /usr/local/bin/kubectl" shape="box"];
  "sha256:4c45421bfcc867acbce8501fdc31d2cf1c5f90d843fe585fa736bf010cd3a992" [label="local://context" shape="ellipse"];
  "sha256:fa4b23b106fd5f366d800a4f0f0b90134bfcf168979b9dcca2835f31d0ed225c" [label="copy{src=/, dest=/experiments}" shape="note"];
  "sha256:3c2e78cbc6310705dd7f8c9be88e295973dd70d87d06790a27b8f0e0081dabd1" [label="mkdir{path=/experiments}" shape="note"];
  "sha256:8848bfa62afb3a5c1b2284f8709d096fdfa5ce83adee25bb4aff43fb9f3fdd46" [label="/bin/sh -c make deps && make lint" shape="box"];
  "sha256:22565caaf67375e9d7516fed41575d44912d6a67e8b4df7727c9a14eedb100ce" [label="sha256:22565caaf67375e9d7516fed41575d44912d6a67e8b4df7727c9a14eedb100ce" shape="plaintext"];
  "sha256:0bbe7a7f775257c810ebcd36361326abae8c24523729fefbcbc748474cfc163b" -> "sha256:63745824985577975640fba47404cde632990c1dc5963f64863121eee1de0acb" [label=""];
  "sha256:63745824985577975640fba47404cde632990c1dc5963f64863121eee1de0acb" -> "sha256:c6b06b6d2d47d9ac81c5cf0f8de3e39ef1b033902fb527ac09416880882290df" [label=""];
  "sha256:c6b06b6d2d47d9ac81c5cf0f8de3e39ef1b033902fb527ac09416880882290df" -> "sha256:fa4b23b106fd5f366d800a4f0f0b90134bfcf168979b9dcca2835f31d0ed225c" [label=""];
  "sha256:4c45421bfcc867acbce8501fdc31d2cf1c5f90d843fe585fa736bf010cd3a992" -> "sha256:fa4b23b106fd5f366d800a4f0f0b90134bfcf168979b9dcca2835f31d0ed225c" [label=""];
  "sha256:fa4b23b106fd5f366d800a4f0f0b90134bfcf168979b9dcca2835f31d0ed225c" -> "sha256:3c2e78cbc6310705dd7f8c9be88e295973dd70d87d06790a27b8f0e0081dabd1" [label=""];
  "sha256:3c2e78cbc6310705dd7f8c9be88e295973dd70d87d06790a27b8f0e0081dabd1" -> "sha256:8848bfa62afb3a5c1b2284f8709d096fdfa5ce83adee25bb4aff43fb9f3fdd46" [label=""];
  "sha256:8848bfa62afb3a5c1b2284f8709d096fdfa5ce83adee25bb4aff43fb9f3fdd46" -> "sha256:22565caaf67375e9d7516fed41575d44912d6a67e8b4df7727c9a14eedb100ce" [label=""];
}

