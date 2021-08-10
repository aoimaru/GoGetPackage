[app/sources/469474926.Dockerfile]
digraph {
  "sha256:73079b2eb57010ad8f653e512710f56fbcef68c723ed1a98218de392a8b40b38" [label="docker-image://docker.io/library/python:2.7-slim" shape="ellipse"];
  "sha256:9951b3a0c5be077713b25db0632ce7e5cc42eb1632445cc446537e204b23aab5" [label="/bin/sh -c pip install requests" shape="box"];
  "sha256:3e4d3a9d9d802ece6e9324b6b24e32f74e4e88bfbac5303f129822aa6efe7293" [label="local://context" shape="ellipse"];
  "sha256:04071a41d79ba65df8bbf355e6faaaee0004f6df93ca601a15ff3f7cf756a2a0" [label="copy{src=/, dest=/dns-frontend}" shape="note"];
  "sha256:a227cd6a7f85ca1d5ff7916f873f01776cda0bde13bfe10464d50e53497ba1c2" [label="mkdir{path=/dns-frontend}" shape="note"];
  "sha256:ff3aee78154a42e0478760f1c58536a932cd017b98a1ff4b37fc2929cdb1e88e" [label="sha256:ff3aee78154a42e0478760f1c58536a932cd017b98a1ff4b37fc2929cdb1e88e" shape="plaintext"];
  "sha256:73079b2eb57010ad8f653e512710f56fbcef68c723ed1a98218de392a8b40b38" -> "sha256:9951b3a0c5be077713b25db0632ce7e5cc42eb1632445cc446537e204b23aab5" [label=""];
  "sha256:9951b3a0c5be077713b25db0632ce7e5cc42eb1632445cc446537e204b23aab5" -> "sha256:04071a41d79ba65df8bbf355e6faaaee0004f6df93ca601a15ff3f7cf756a2a0" [label=""];
  "sha256:3e4d3a9d9d802ece6e9324b6b24e32f74e4e88bfbac5303f129822aa6efe7293" -> "sha256:04071a41d79ba65df8bbf355e6faaaee0004f6df93ca601a15ff3f7cf756a2a0" [label=""];
  "sha256:04071a41d79ba65df8bbf355e6faaaee0004f6df93ca601a15ff3f7cf756a2a0" -> "sha256:a227cd6a7f85ca1d5ff7916f873f01776cda0bde13bfe10464d50e53497ba1c2" [label=""];
  "sha256:a227cd6a7f85ca1d5ff7916f873f01776cda0bde13bfe10464d50e53497ba1c2" -> "sha256:ff3aee78154a42e0478760f1c58536a932cd017b98a1ff4b37fc2929cdb1e88e" [label=""];
}

