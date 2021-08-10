[app/sources/249394101.Dockerfile]
digraph {
  "sha256:be7f72d58225eb22e4de98811a40f2894475aa1a36444806f38addb93cf47938" [label="docker-image://docker.io/library/node:8-slim" shape="ellipse"];
  "sha256:19deb613c55d9bcfde6ee979c00123f108786f0fa4745c2e8f2f9b820c4b3b14" [label="/bin/sh -c npm install --global snyk-broker" shape="box"];
  "sha256:7748d7afc982c584290badbfbad49d2655c84e3da0bf8fa3f86bd404e1a4fe4d" [label="mkdir{path=/home/node}" shape="note"];
  "sha256:a5f1742854f160a37e62acc4df46b27d914f377c42bf9f11d6ced87a9456214f" [label="/bin/sh -c broker init github-enterprise" shape="box"];
  "sha256:9c75ee9e2a496ecf71ce4f13434dad3794db0379bd6fad68e0318b488a0aa2ab" [label="sha256:9c75ee9e2a496ecf71ce4f13434dad3794db0379bd6fad68e0318b488a0aa2ab" shape="plaintext"];
  "sha256:be7f72d58225eb22e4de98811a40f2894475aa1a36444806f38addb93cf47938" -> "sha256:19deb613c55d9bcfde6ee979c00123f108786f0fa4745c2e8f2f9b820c4b3b14" [label=""];
  "sha256:19deb613c55d9bcfde6ee979c00123f108786f0fa4745c2e8f2f9b820c4b3b14" -> "sha256:7748d7afc982c584290badbfbad49d2655c84e3da0bf8fa3f86bd404e1a4fe4d" [label=""];
  "sha256:7748d7afc982c584290badbfbad49d2655c84e3da0bf8fa3f86bd404e1a4fe4d" -> "sha256:a5f1742854f160a37e62acc4df46b27d914f377c42bf9f11d6ced87a9456214f" [label=""];
  "sha256:a5f1742854f160a37e62acc4df46b27d914f377c42bf9f11d6ced87a9456214f" -> "sha256:9c75ee9e2a496ecf71ce4f13434dad3794db0379bd6fad68e0318b488a0aa2ab" [label=""];
}

