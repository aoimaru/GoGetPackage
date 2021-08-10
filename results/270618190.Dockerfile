[app/sources/270618190.Dockerfile]
digraph {
  "sha256:07c7ab6b0feaae8d7b19505eaa124f1cbc7cf52ddb48bfa1bae346d678575594" [label="docker-image://docker.io/library/node:slim" shape="ellipse"];
  "sha256:14a971959d72ef2f335c75af10cbf0171408beee22d67289d018a3c941b86071" [label="/bin/sh -c mkdir -p /home/node/service" shape="box"];
  "sha256:4c17cdd16e7d0fe55d2a7f5937d3cd194876fe98c99800cfd2a8f015f97644ac" [label="mkdir{path=/home/node/service}" shape="note"];
  "sha256:3972b0ae3c629a1811290492e8c829eebe15c8e1268d5fd0ec685a865781a29e" [label="local://context" shape="ellipse"];
  "sha256:3ad2e93532deee4e0255ebe3a3ca6112d6ca492bf3911f44c591c88f56f294dc" [label="copy{src=/package.json, dest=/home/node/service}" shape="note"];
  "sha256:b637f0700bb2966956d62779b6654aa1f3f79876a6e2dda2bd6f91b9529c2cce" [label="/bin/sh -c npm install" shape="box"];
  "sha256:2a05232e79d4a67eb4fbf5c43c47b29db17ba0d3fd30187c54e9c035e3266ed7" [label="copy{src=/, dest=/home/node/service}" shape="note"];
  "sha256:602532993006327063ef4a66c9beac4c2804de7974d7469310489f91b7533118" [label="sha256:602532993006327063ef4a66c9beac4c2804de7974d7469310489f91b7533118" shape="plaintext"];
  "sha256:07c7ab6b0feaae8d7b19505eaa124f1cbc7cf52ddb48bfa1bae346d678575594" -> "sha256:14a971959d72ef2f335c75af10cbf0171408beee22d67289d018a3c941b86071" [label=""];
  "sha256:14a971959d72ef2f335c75af10cbf0171408beee22d67289d018a3c941b86071" -> "sha256:4c17cdd16e7d0fe55d2a7f5937d3cd194876fe98c99800cfd2a8f015f97644ac" [label=""];
  "sha256:4c17cdd16e7d0fe55d2a7f5937d3cd194876fe98c99800cfd2a8f015f97644ac" -> "sha256:3ad2e93532deee4e0255ebe3a3ca6112d6ca492bf3911f44c591c88f56f294dc" [label=""];
  "sha256:3972b0ae3c629a1811290492e8c829eebe15c8e1268d5fd0ec685a865781a29e" -> "sha256:3ad2e93532deee4e0255ebe3a3ca6112d6ca492bf3911f44c591c88f56f294dc" [label=""];
  "sha256:3ad2e93532deee4e0255ebe3a3ca6112d6ca492bf3911f44c591c88f56f294dc" -> "sha256:b637f0700bb2966956d62779b6654aa1f3f79876a6e2dda2bd6f91b9529c2cce" [label=""];
  "sha256:b637f0700bb2966956d62779b6654aa1f3f79876a6e2dda2bd6f91b9529c2cce" -> "sha256:2a05232e79d4a67eb4fbf5c43c47b29db17ba0d3fd30187c54e9c035e3266ed7" [label=""];
  "sha256:3972b0ae3c629a1811290492e8c829eebe15c8e1268d5fd0ec685a865781a29e" -> "sha256:2a05232e79d4a67eb4fbf5c43c47b29db17ba0d3fd30187c54e9c035e3266ed7" [label=""];
  "sha256:2a05232e79d4a67eb4fbf5c43c47b29db17ba0d3fd30187c54e9c035e3266ed7" -> "sha256:602532993006327063ef4a66c9beac4c2804de7974d7469310489f91b7533118" [label=""];
}

