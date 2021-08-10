[app/sources/341654141.Dockerfile]
digraph {
  "sha256:e55bb8697ac0d30aafbb140ba44c3b69cf1e09dd3f7e247913717be7ad4812af" [label="local://context" shape="ellipse"];
  "sha256:627f61c0abc70b2535a38a0ec362dc0bbe7cb5abf70fb34443f7d541793ef24d" [label="copy{src=/bin/pause-, dest=/pause}" shape="note"];
  "sha256:618421d379e2f26512e1ca7cd48d4e78fdd48a12661579cc231da223f62a6a0a" [label="sha256:618421d379e2f26512e1ca7cd48d4e78fdd48a12661579cc231da223f62a6a0a" shape="plaintext"];
  "sha256:e55bb8697ac0d30aafbb140ba44c3b69cf1e09dd3f7e247913717be7ad4812af" -> "sha256:627f61c0abc70b2535a38a0ec362dc0bbe7cb5abf70fb34443f7d541793ef24d" [label=""];
  "sha256:627f61c0abc70b2535a38a0ec362dc0bbe7cb5abf70fb34443f7d541793ef24d" -> "sha256:618421d379e2f26512e1ca7cd48d4e78fdd48a12661579cc231da223f62a6a0a" [label=""];
}

