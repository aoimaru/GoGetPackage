[app/sources/250072765.Dockerfile]
digraph {
  "sha256:c1470ab28d3e79c45cbb2da2865bb3cac332a4964b06eae5407cd8895582915c" [label="local://context" shape="ellipse"];
  "sha256:7396b0695b864ccb41579cb6268a3281271f1b59ed6971402b8c38c881efa83e" [label="docker-image://docker.io/library/node:8-alpine" shape="ellipse"];
  "sha256:7b0eebca5be2147a8b42fb4a3926ee1efd709ee52d778cfea2b7348f0e819afb" [label="/bin/sh -c mkdir -p /usr/src/app" shape="box"];
  "sha256:d3f9a086b4cf15533fddad2f8b5b6f4109a9ac6f4320f16a48cc68596de276e3" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:a0954f98223b77e209aa11d170a8e13e5eb513a163a09ff77d740789486f108c" [label="copy{src=/package.json, dest=/usr/src/app/}" shape="note"];
  "sha256:205e67b8ce2063e36b94e1351d925f327c95ae79d3e1446c5a9f8e3e2a0b9d4d" [label="/bin/sh -c npm install && npm cache clean --force" shape="box"];
  "sha256:500c38e99c31bf3e7a63dae36b7e383dd1e9099d9b762b7c216a5566e245bd1d" [label="copy{src=/server.js, dest=/usr/src/app/server.js}" shape="note"];
  "sha256:19ade70c85f2dd16bb4daa3aa64855a60e8f33a54d1c5d614cdb5176b940d8d9" [label="sha256:19ade70c85f2dd16bb4daa3aa64855a60e8f33a54d1c5d614cdb5176b940d8d9" shape="plaintext"];
  "sha256:7396b0695b864ccb41579cb6268a3281271f1b59ed6971402b8c38c881efa83e" -> "sha256:7b0eebca5be2147a8b42fb4a3926ee1efd709ee52d778cfea2b7348f0e819afb" [label=""];
  "sha256:7b0eebca5be2147a8b42fb4a3926ee1efd709ee52d778cfea2b7348f0e819afb" -> "sha256:d3f9a086b4cf15533fddad2f8b5b6f4109a9ac6f4320f16a48cc68596de276e3" [label=""];
  "sha256:d3f9a086b4cf15533fddad2f8b5b6f4109a9ac6f4320f16a48cc68596de276e3" -> "sha256:a0954f98223b77e209aa11d170a8e13e5eb513a163a09ff77d740789486f108c" [label=""];
  "sha256:c1470ab28d3e79c45cbb2da2865bb3cac332a4964b06eae5407cd8895582915c" -> "sha256:a0954f98223b77e209aa11d170a8e13e5eb513a163a09ff77d740789486f108c" [label=""];
  "sha256:a0954f98223b77e209aa11d170a8e13e5eb513a163a09ff77d740789486f108c" -> "sha256:205e67b8ce2063e36b94e1351d925f327c95ae79d3e1446c5a9f8e3e2a0b9d4d" [label=""];
  "sha256:205e67b8ce2063e36b94e1351d925f327c95ae79d3e1446c5a9f8e3e2a0b9d4d" -> "sha256:500c38e99c31bf3e7a63dae36b7e383dd1e9099d9b762b7c216a5566e245bd1d" [label=""];
  "sha256:c1470ab28d3e79c45cbb2da2865bb3cac332a4964b06eae5407cd8895582915c" -> "sha256:500c38e99c31bf3e7a63dae36b7e383dd1e9099d9b762b7c216a5566e245bd1d" [label=""];
  "sha256:500c38e99c31bf3e7a63dae36b7e383dd1e9099d9b762b7c216a5566e245bd1d" -> "sha256:19ade70c85f2dd16bb4daa3aa64855a60e8f33a54d1c5d614cdb5176b940d8d9" [label=""];
}

