[app/sources/479045238.Dockerfile]
digraph {
  "sha256:299d34d2b3126ad928b79e943b82636836bc9a495c694f0fe851c96bbf1db1f4" [label="docker-image://docker.io/library/node:8" shape="ellipse"];
  "sha256:ad7992421fb89468fdeba08d02345b5c3cf09dc6f2ab19952b8362ee58f369f6" [label="/bin/sh -c mkdir -p /usr/src/app" shape="box"];
  "sha256:212b9b3b5c0dca34525445d93620cd5403d47770ed537ff014ff29721c0c5c20" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:f3d4705adac5ac73da2823a681ef17bb6c39d742f87277f85e6ee76905eef1f1" [label="/bin/sh -c npm install -g --production node-gyp &&     npm cache clean --force" shape="box"];
  "sha256:b8f7e99559ca379e0d0f2d427a110d226357bfb82580ca344d5078c250e3c9c0" [label="local://context" shape="ellipse"];
  "sha256:b0da0b6c4f914a8bdefbc963483350d8b360ecb75d65edb4a7f71d680b17d529" [label="copy{src=/package.json, dest=/usr/src/app/}" shape="note"];
  "sha256:974f89358a98181b06f83c0bdf938ef11021b6a183ae610b32c3bdb4968b5cc3" [label="/bin/sh -c npm install --production &&     npm install --production redis@0.10.0 talib@1.0.2 tulind@0.8.7 pg &&     npm cache clean --force" shape="box"];
  "sha256:dc443da052234eb7aceabc98e8f35031bb79ec13674c638c7798f1efed841e9e" [label="mkdir{path=/usr/src/app/exchange}" shape="note"];
  "sha256:7b9f5f1db63a9c56b60e6945efbf0465c3f52f7de617b60a4e9fad2e6e3f2477" [label="copy{src=/exchange/package.json, dest=/usr/src/app/exchange/}" shape="note"];
  "sha256:5755dacb51301ee9d9e8a7f4157db963a76c7024d9b0e03efa6bb729cce2561c" [label="/bin/sh -c npm install --production &&     npm cache clean --force" shape="box"];
  "sha256:eaf079718ab39de0852129e4feaf91c5d0033a33a300541e489242ec7c1cf971" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:86073a09de2a58ebc7fc038202cfb84913643c1151e1ee33a206d376b821623b" [label="copy{src=/, dest=/usr/src/app}" shape="note"];
  "sha256:6b79970612305d4a96af930fe638007711e3b4e8c3c500e6f3b8939d40122e11" [label="/bin/sh -c chmod +x /usr/src/app/docker-entrypoint.sh" shape="box"];
  "sha256:37016a1c59f2302c941dc7a704dd291442230c3a8bc31494e727cc491faa1399" [label="sha256:37016a1c59f2302c941dc7a704dd291442230c3a8bc31494e727cc491faa1399" shape="plaintext"];
  "sha256:299d34d2b3126ad928b79e943b82636836bc9a495c694f0fe851c96bbf1db1f4" -> "sha256:ad7992421fb89468fdeba08d02345b5c3cf09dc6f2ab19952b8362ee58f369f6" [label=""];
  "sha256:ad7992421fb89468fdeba08d02345b5c3cf09dc6f2ab19952b8362ee58f369f6" -> "sha256:212b9b3b5c0dca34525445d93620cd5403d47770ed537ff014ff29721c0c5c20" [label=""];
  "sha256:212b9b3b5c0dca34525445d93620cd5403d47770ed537ff014ff29721c0c5c20" -> "sha256:f3d4705adac5ac73da2823a681ef17bb6c39d742f87277f85e6ee76905eef1f1" [label=""];
  "sha256:f3d4705adac5ac73da2823a681ef17bb6c39d742f87277f85e6ee76905eef1f1" -> "sha256:b0da0b6c4f914a8bdefbc963483350d8b360ecb75d65edb4a7f71d680b17d529" [label=""];
  "sha256:b8f7e99559ca379e0d0f2d427a110d226357bfb82580ca344d5078c250e3c9c0" -> "sha256:b0da0b6c4f914a8bdefbc963483350d8b360ecb75d65edb4a7f71d680b17d529" [label=""];
  "sha256:b0da0b6c4f914a8bdefbc963483350d8b360ecb75d65edb4a7f71d680b17d529" -> "sha256:974f89358a98181b06f83c0bdf938ef11021b6a183ae610b32c3bdb4968b5cc3" [label=""];
  "sha256:974f89358a98181b06f83c0bdf938ef11021b6a183ae610b32c3bdb4968b5cc3" -> "sha256:dc443da052234eb7aceabc98e8f35031bb79ec13674c638c7798f1efed841e9e" [label=""];
  "sha256:dc443da052234eb7aceabc98e8f35031bb79ec13674c638c7798f1efed841e9e" -> "sha256:7b9f5f1db63a9c56b60e6945efbf0465c3f52f7de617b60a4e9fad2e6e3f2477" [label=""];
  "sha256:b8f7e99559ca379e0d0f2d427a110d226357bfb82580ca344d5078c250e3c9c0" -> "sha256:7b9f5f1db63a9c56b60e6945efbf0465c3f52f7de617b60a4e9fad2e6e3f2477" [label=""];
  "sha256:7b9f5f1db63a9c56b60e6945efbf0465c3f52f7de617b60a4e9fad2e6e3f2477" -> "sha256:5755dacb51301ee9d9e8a7f4157db963a76c7024d9b0e03efa6bb729cce2561c" [label=""];
  "sha256:5755dacb51301ee9d9e8a7f4157db963a76c7024d9b0e03efa6bb729cce2561c" -> "sha256:eaf079718ab39de0852129e4feaf91c5d0033a33a300541e489242ec7c1cf971" [label=""];
  "sha256:eaf079718ab39de0852129e4feaf91c5d0033a33a300541e489242ec7c1cf971" -> "sha256:86073a09de2a58ebc7fc038202cfb84913643c1151e1ee33a206d376b821623b" [label=""];
  "sha256:b8f7e99559ca379e0d0f2d427a110d226357bfb82580ca344d5078c250e3c9c0" -> "sha256:86073a09de2a58ebc7fc038202cfb84913643c1151e1ee33a206d376b821623b" [label=""];
  "sha256:86073a09de2a58ebc7fc038202cfb84913643c1151e1ee33a206d376b821623b" -> "sha256:6b79970612305d4a96af930fe638007711e3b4e8c3c500e6f3b8939d40122e11" [label=""];
  "sha256:6b79970612305d4a96af930fe638007711e3b4e8c3c500e6f3b8939d40122e11" -> "sha256:37016a1c59f2302c941dc7a704dd291442230c3a8bc31494e727cc491faa1399" [label=""];
}

