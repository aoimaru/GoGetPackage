[app/sources/363112953.Dockerfile]
digraph {
  "sha256:9aae067bee489b46529bd1ee67fb60dfa11ba5f91245ece8c85aa1bc28b2f061" [label="docker-image://docker.io/plugins/base:multiarch" shape="ellipse"];
  "sha256:0fe63757185cceb47aaa01d5b2519cb56d1ee719da4b06a4dbe885ee0ded37d7" [label="local://context" shape="ellipse"];
  "sha256:97a40db61bf2dc8b29cc5973e712308dcaae89d9857979702f63335b956aa841" [label="copy{src=/release/linux/arm64/drone-s3-sync, dest=/bin/}" shape="note"];
  "sha256:897c63401af05d9b1a34ac6a85715cd2e433824b6558ec6d13093ea04ead2bab" [label="sha256:897c63401af05d9b1a34ac6a85715cd2e433824b6558ec6d13093ea04ead2bab" shape="plaintext"];
  "sha256:9aae067bee489b46529bd1ee67fb60dfa11ba5f91245ece8c85aa1bc28b2f061" -> "sha256:97a40db61bf2dc8b29cc5973e712308dcaae89d9857979702f63335b956aa841" [label=""];
  "sha256:0fe63757185cceb47aaa01d5b2519cb56d1ee719da4b06a4dbe885ee0ded37d7" -> "sha256:97a40db61bf2dc8b29cc5973e712308dcaae89d9857979702f63335b956aa841" [label=""];
  "sha256:97a40db61bf2dc8b29cc5973e712308dcaae89d9857979702f63335b956aa841" -> "sha256:897c63401af05d9b1a34ac6a85715cd2e433824b6558ec6d13093ea04ead2bab" [label=""];
}

