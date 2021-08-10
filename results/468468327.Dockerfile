[app/sources/468468327.Dockerfile]
digraph {
  "sha256:806ad15c180fdb91f314fd07be8193a98fd2f9e815ecd111fdb2ca3535331581" [label="docker-image://docker.io/library/node:10.15" shape="ellipse"];
  "sha256:a1919682a930d3bbf8f8cfb6398f4bc183eae8ca50490a2635e28c2c3133359f" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:ef0bff44ecb79b3493fdcdab1c6a52b4f83cfb0dd2f8252c600f459890e715b7" [label="local://context" shape="ellipse"];
  "sha256:1539c8cd31b841a3b3bb8b9021ba44e55ed704cf4217a8eac9207379ce72e799" [label="copy{src=/package*.json, dest=/usr/src/app/}" shape="note"];
  "sha256:7f008089c43c4afc576fc005703ea051479fe4bdc2daccc2996532df814e2508" [label="/bin/sh -c npm install" shape="box"];
  "sha256:b74480813898ab9030563785d0d6f10e4f82501522bb876a8efb166528b6049f" [label="copy{src=/, dest=/usr/src/app/}" shape="note"];
  "sha256:0fb69f4f7ea3e23b8fda6a0e47b046656c67cb52536903aadff0f0fb1283ddde" [label="sha256:0fb69f4f7ea3e23b8fda6a0e47b046656c67cb52536903aadff0f0fb1283ddde" shape="plaintext"];
  "sha256:806ad15c180fdb91f314fd07be8193a98fd2f9e815ecd111fdb2ca3535331581" -> "sha256:a1919682a930d3bbf8f8cfb6398f4bc183eae8ca50490a2635e28c2c3133359f" [label=""];
  "sha256:a1919682a930d3bbf8f8cfb6398f4bc183eae8ca50490a2635e28c2c3133359f" -> "sha256:1539c8cd31b841a3b3bb8b9021ba44e55ed704cf4217a8eac9207379ce72e799" [label=""];
  "sha256:ef0bff44ecb79b3493fdcdab1c6a52b4f83cfb0dd2f8252c600f459890e715b7" -> "sha256:1539c8cd31b841a3b3bb8b9021ba44e55ed704cf4217a8eac9207379ce72e799" [label=""];
  "sha256:1539c8cd31b841a3b3bb8b9021ba44e55ed704cf4217a8eac9207379ce72e799" -> "sha256:7f008089c43c4afc576fc005703ea051479fe4bdc2daccc2996532df814e2508" [label=""];
  "sha256:7f008089c43c4afc576fc005703ea051479fe4bdc2daccc2996532df814e2508" -> "sha256:b74480813898ab9030563785d0d6f10e4f82501522bb876a8efb166528b6049f" [label=""];
  "sha256:ef0bff44ecb79b3493fdcdab1c6a52b4f83cfb0dd2f8252c600f459890e715b7" -> "sha256:b74480813898ab9030563785d0d6f10e4f82501522bb876a8efb166528b6049f" [label=""];
  "sha256:b74480813898ab9030563785d0d6f10e4f82501522bb876a8efb166528b6049f" -> "sha256:0fb69f4f7ea3e23b8fda6a0e47b046656c67cb52536903aadff0f0fb1283ddde" [label=""];
}

