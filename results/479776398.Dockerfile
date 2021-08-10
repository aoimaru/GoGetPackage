[app/sources/479776398.Dockerfile]
digraph {
  "sha256:d2ee5802ef4e66d369c54e82b95249fae39b2901680b3bf23f2a3f73eba58df0" [label="docker-image://docker.io/library/java:8" shape="ellipse"];
  "sha256:73c569d4a9d5f6dc1500d0686d6ee2eaacdde7ed99978a3eb4bc773a69648a4d" [label="local://context" shape="ellipse"];
  "sha256:7f301ce65440fff8b1063565ba8b903a40f78255b6e72436a1961b9142bc7d01" [label="copy{src=/spring-doge/target/*.jar, dest=/usr/src/spring-doge/spring-doge.jar}" shape="note"];
  "sha256:8682ba68b8ab70c132ce39e64808bf8f2087b249a7a63c8ee67c7c506b6eb396" [label="mkdir{path=/usr/src/spring-doge}" shape="note"];
  "sha256:3756575022840ec212f46c45d3a2a97c461be3c5cee7eef7324cc9b733522e67" [label="sha256:3756575022840ec212f46c45d3a2a97c461be3c5cee7eef7324cc9b733522e67" shape="plaintext"];
  "sha256:d2ee5802ef4e66d369c54e82b95249fae39b2901680b3bf23f2a3f73eba58df0" -> "sha256:7f301ce65440fff8b1063565ba8b903a40f78255b6e72436a1961b9142bc7d01" [label=""];
  "sha256:73c569d4a9d5f6dc1500d0686d6ee2eaacdde7ed99978a3eb4bc773a69648a4d" -> "sha256:7f301ce65440fff8b1063565ba8b903a40f78255b6e72436a1961b9142bc7d01" [label=""];
  "sha256:7f301ce65440fff8b1063565ba8b903a40f78255b6e72436a1961b9142bc7d01" -> "sha256:8682ba68b8ab70c132ce39e64808bf8f2087b249a7a63c8ee67c7c506b6eb396" [label=""];
  "sha256:8682ba68b8ab70c132ce39e64808bf8f2087b249a7a63c8ee67c7c506b6eb396" -> "sha256:3756575022840ec212f46c45d3a2a97c461be3c5cee7eef7324cc9b733522e67" [label=""];
}

