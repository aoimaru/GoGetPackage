[app/sources/147397262.Dockerfile]
digraph {
  "sha256:5045d46e15358f34ea7fff145af304a1fa3a317561e9c609f4ae17c0bd3359df" [label="docker-image://docker.io/library/node:latest" shape="ellipse"];
  "sha256:6b935e82e6fb875dc9a723c187f8874a84abc02e6106583a21debe7a39c285be" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:f043e09387414b3c2d3fed3166788dd6fc0a73612c2aaafe49bc90abf6498d3d" [label="local://context" shape="ellipse"];
  "sha256:f4864e20128e5e5eea45365964a7e917abac7b1c049285369fff68e6a1be6e4f" [label="copy{src=/package.json, dest=/usr/src/app/}" shape="note"];
  "sha256:bb3d0f7a8aad3d7a9199e46c007de8d3c0cb7faf0a9cbd849a0f25700d733445" [label="/bin/sh -c npm install --silent --no-cache" shape="box"];
  "sha256:8c4a95572fad38d817de96422abaab1d908980cc2a43783a8efb9b33a3d0297b" [label="copy{src=/, dest=/usr/src/app/}" shape="note"];
  "sha256:b13ef310aabb8ef9bda75a240b79a0c7d1be3370330ea464c784051fbd493a79" [label="sha256:b13ef310aabb8ef9bda75a240b79a0c7d1be3370330ea464c784051fbd493a79" shape="plaintext"];
  "sha256:5045d46e15358f34ea7fff145af304a1fa3a317561e9c609f4ae17c0bd3359df" -> "sha256:6b935e82e6fb875dc9a723c187f8874a84abc02e6106583a21debe7a39c285be" [label=""];
  "sha256:6b935e82e6fb875dc9a723c187f8874a84abc02e6106583a21debe7a39c285be" -> "sha256:f4864e20128e5e5eea45365964a7e917abac7b1c049285369fff68e6a1be6e4f" [label=""];
  "sha256:f043e09387414b3c2d3fed3166788dd6fc0a73612c2aaafe49bc90abf6498d3d" -> "sha256:f4864e20128e5e5eea45365964a7e917abac7b1c049285369fff68e6a1be6e4f" [label=""];
  "sha256:f4864e20128e5e5eea45365964a7e917abac7b1c049285369fff68e6a1be6e4f" -> "sha256:bb3d0f7a8aad3d7a9199e46c007de8d3c0cb7faf0a9cbd849a0f25700d733445" [label=""];
  "sha256:bb3d0f7a8aad3d7a9199e46c007de8d3c0cb7faf0a9cbd849a0f25700d733445" -> "sha256:8c4a95572fad38d817de96422abaab1d908980cc2a43783a8efb9b33a3d0297b" [label=""];
  "sha256:f043e09387414b3c2d3fed3166788dd6fc0a73612c2aaafe49bc90abf6498d3d" -> "sha256:8c4a95572fad38d817de96422abaab1d908980cc2a43783a8efb9b33a3d0297b" [label=""];
  "sha256:8c4a95572fad38d817de96422abaab1d908980cc2a43783a8efb9b33a3d0297b" -> "sha256:b13ef310aabb8ef9bda75a240b79a0c7d1be3370330ea464c784051fbd493a79" [label=""];
}

