[app/sources/460608210.Dockerfile]
digraph {
  "sha256:d4d422ecb6f7f1344bacb52b169c47d2fcd4a638b3a55c865d258fcb1545207d" [label="local://context" shape="ellipse"];
  "sha256:5045d46e15358f34ea7fff145af304a1fa3a317561e9c609f4ae17c0bd3359df" [label="docker-image://docker.io/library/node:latest" shape="ellipse"];
  "sha256:8ca134a9eb54bc273438df5212e2b3fc5c54c05abe7a819c2ee3a7e7eb656b28" [label="copy{src=/package.json, dest=/app/package.json}" shape="note"];
  "sha256:c55e56c189645b0ca04e281a22f4fae72611e85c1c0dbc030a3aa0748d29cb3f" [label="mkdir{path=/app}" shape="note"];
  "sha256:cc376561a6bce6d971b193c1cf90efd9450b812a056a716e8c97bd8a302708be" [label="/bin/sh -c npm install" shape="box"];
  "sha256:9524e61deee858fd818df902b41ff169468be3d58a4e9c2c68e300b50b6b3e8c" [label="copy{src=/, dest=/app}" shape="note"];
  "sha256:7ba54c8e2d3c8c96f0d9c4ab3eec531e2fd455db5658e2a9c436721d43d65b87" [label="copy{src=/docker/run, dest=/usr/bin/k8s-watcher}" shape="note"];
  "sha256:622eb3eec4df47b30e22dd3dfd98ab8cef9605bd305ef4500becdb87271d298c" [label="sha256:622eb3eec4df47b30e22dd3dfd98ab8cef9605bd305ef4500becdb87271d298c" shape="plaintext"];
  "sha256:5045d46e15358f34ea7fff145af304a1fa3a317561e9c609f4ae17c0bd3359df" -> "sha256:8ca134a9eb54bc273438df5212e2b3fc5c54c05abe7a819c2ee3a7e7eb656b28" [label=""];
  "sha256:d4d422ecb6f7f1344bacb52b169c47d2fcd4a638b3a55c865d258fcb1545207d" -> "sha256:8ca134a9eb54bc273438df5212e2b3fc5c54c05abe7a819c2ee3a7e7eb656b28" [label=""];
  "sha256:8ca134a9eb54bc273438df5212e2b3fc5c54c05abe7a819c2ee3a7e7eb656b28" -> "sha256:c55e56c189645b0ca04e281a22f4fae72611e85c1c0dbc030a3aa0748d29cb3f" [label=""];
  "sha256:c55e56c189645b0ca04e281a22f4fae72611e85c1c0dbc030a3aa0748d29cb3f" -> "sha256:cc376561a6bce6d971b193c1cf90efd9450b812a056a716e8c97bd8a302708be" [label=""];
  "sha256:cc376561a6bce6d971b193c1cf90efd9450b812a056a716e8c97bd8a302708be" -> "sha256:9524e61deee858fd818df902b41ff169468be3d58a4e9c2c68e300b50b6b3e8c" [label=""];
  "sha256:d4d422ecb6f7f1344bacb52b169c47d2fcd4a638b3a55c865d258fcb1545207d" -> "sha256:9524e61deee858fd818df902b41ff169468be3d58a4e9c2c68e300b50b6b3e8c" [label=""];
  "sha256:9524e61deee858fd818df902b41ff169468be3d58a4e9c2c68e300b50b6b3e8c" -> "sha256:7ba54c8e2d3c8c96f0d9c4ab3eec531e2fd455db5658e2a9c436721d43d65b87" [label=""];
  "sha256:d4d422ecb6f7f1344bacb52b169c47d2fcd4a638b3a55c865d258fcb1545207d" -> "sha256:7ba54c8e2d3c8c96f0d9c4ab3eec531e2fd455db5658e2a9c436721d43d65b87" [label=""];
  "sha256:7ba54c8e2d3c8c96f0d9c4ab3eec531e2fd455db5658e2a9c436721d43d65b87" -> "sha256:622eb3eec4df47b30e22dd3dfd98ab8cef9605bd305ef4500becdb87271d298c" [label=""];
}

