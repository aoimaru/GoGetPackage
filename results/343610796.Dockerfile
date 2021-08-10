[app/sources/343610796.Dockerfile]
digraph {
  "sha256:de9f8f617a280b875ca37fc6e35e3c245b8a1083e5ee58904fe13531db8c9299" [label="docker-image://docker.io/plugins/base:amd64" shape="ellipse"];
  "sha256:0b679d59b7d123d17f48c3ea354dbced3dc9bc630e811beb3143848fdd142f0d" [label="/bin/sh -c apk add --no-cache ca-certificates git openssh curl perl &&   rm -rf /var/cache/apk/*" shape="box"];
  "sha256:422533d3adb6a88153b27eab0a98f9ad67080e3c1e68432534f037ac571b0d5a" [label="local://context" shape="ellipse"];
  "sha256:82f055af47b39df4e30a6d8f02ceff53610e72275e73d14b97ff583b58eb7e87" [label="copy{src=/release/linux/arm64/drone-git-push, dest=/bin/}" shape="note"];
  "sha256:c7197096a76530bf628e1fc5c704f4042a9dd445c5457c527c12d21de1740966" [label="sha256:c7197096a76530bf628e1fc5c704f4042a9dd445c5457c527c12d21de1740966" shape="plaintext"];
  "sha256:de9f8f617a280b875ca37fc6e35e3c245b8a1083e5ee58904fe13531db8c9299" -> "sha256:0b679d59b7d123d17f48c3ea354dbced3dc9bc630e811beb3143848fdd142f0d" [label=""];
  "sha256:0b679d59b7d123d17f48c3ea354dbced3dc9bc630e811beb3143848fdd142f0d" -> "sha256:82f055af47b39df4e30a6d8f02ceff53610e72275e73d14b97ff583b58eb7e87" [label=""];
  "sha256:422533d3adb6a88153b27eab0a98f9ad67080e3c1e68432534f037ac571b0d5a" -> "sha256:82f055af47b39df4e30a6d8f02ceff53610e72275e73d14b97ff583b58eb7e87" [label=""];
  "sha256:82f055af47b39df4e30a6d8f02ceff53610e72275e73d14b97ff583b58eb7e87" -> "sha256:c7197096a76530bf628e1fc5c704f4042a9dd445c5457c527c12d21de1740966" [label=""];
}

