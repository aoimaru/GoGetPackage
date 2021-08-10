[app/sources/441215479.Dockerfile]
digraph {
  "sha256:3ee9b3c4343dde8f0f57d187258862a4d8d040e3c42b6b56ba4e57d5da3e0c2a" [label="docker-image://docker.io/library/debian:latest" shape="ellipse"];
  "sha256:a7be08fb55664d0640c3c552ab017a79867772dcc0cbc8316bf1e294f1a5b956" [label="/bin/sh -c apt-get -y update && apt-get -y install   ca-certificates" shape="box"];
  "sha256:8e762a5325aa9f05436bf32b3cdc56dfdb56751ba6ad1a9548e4257cd6e7a4eb" [label="/bin/sh -c useradd -Ums /usr/sbin/nologin clown" shape="box"];
  "sha256:ba6246a9acb7b06ccf0720f9e9a667cba2e0fe7e5ca85cfbbb07cafb23470866" [label="local://context" shape="ellipse"];
  "sha256:f6b031adc0a617dbb4214529e5a1611a0123497a7442b809688d2492a4402005" [label="copy{src=/src/cloud2clown, dest=/home/clown/}" shape="note"];
  "sha256:6d4d9f35d3797b0b495852174acc4df4cae9908794ccdf0ad19c42f3911cc88d" [label="copy{src=/src/flag.txt, dest=/home/clown/}" shape="note"];
  "sha256:2a0b8e81df55e49b594928a42b68df2dbf1183f34b94aa68a085905841cceb30" [label="copy{src=/src/flag2.txt, dest=/home/clown/}" shape="note"];
  "sha256:dd64a2f4d5795a05e6667c874eeda261ace23c5ee9349c3c802e4f3762b9f5b9" [label="copy{src=/src/static, dest=/home/clown/static}" shape="note"];
  "sha256:5a2b2de564eda398be8ce300abb0ef0b5e0c06f8a83a661fc0915b6b6fb1e01a" [label="copy{src=/src/index.html, dest=/home/clown/}" shape="note"];
  "sha256:769b5a8a39840d13c8b4d5a10af895761b8a8fe62589b4de7e8b3156f1d35a33" [label="copy{src=/src/robots.txt, dest=/home/clown/}" shape="note"];
  "sha256:024306988f3144ab7eba6ef7dbc0b6a74d6511d65fa2388704eedb85b27e153c" [label="/bin/sh -c chown -R root:root /home/clown" shape="box"];
  "sha256:c5dc7d7d18c77864375a2ed5cda2140d9403c570f3d36bc442f08f210b41f03a" [label="/bin/sh -c chmod -R ugo-w,ugo+rX /home/clown" shape="box"];
  "sha256:a04ad47619108f6abd629bcaee73e85897370137dcf4d0599cabc662a4d5ea7d" [label="sha256:a04ad47619108f6abd629bcaee73e85897370137dcf4d0599cabc662a4d5ea7d" shape="plaintext"];
  "sha256:3ee9b3c4343dde8f0f57d187258862a4d8d040e3c42b6b56ba4e57d5da3e0c2a" -> "sha256:a7be08fb55664d0640c3c552ab017a79867772dcc0cbc8316bf1e294f1a5b956" [label=""];
  "sha256:a7be08fb55664d0640c3c552ab017a79867772dcc0cbc8316bf1e294f1a5b956" -> "sha256:8e762a5325aa9f05436bf32b3cdc56dfdb56751ba6ad1a9548e4257cd6e7a4eb" [label=""];
  "sha256:8e762a5325aa9f05436bf32b3cdc56dfdb56751ba6ad1a9548e4257cd6e7a4eb" -> "sha256:f6b031adc0a617dbb4214529e5a1611a0123497a7442b809688d2492a4402005" [label=""];
  "sha256:ba6246a9acb7b06ccf0720f9e9a667cba2e0fe7e5ca85cfbbb07cafb23470866" -> "sha256:f6b031adc0a617dbb4214529e5a1611a0123497a7442b809688d2492a4402005" [label=""];
  "sha256:f6b031adc0a617dbb4214529e5a1611a0123497a7442b809688d2492a4402005" -> "sha256:6d4d9f35d3797b0b495852174acc4df4cae9908794ccdf0ad19c42f3911cc88d" [label=""];
  "sha256:ba6246a9acb7b06ccf0720f9e9a667cba2e0fe7e5ca85cfbbb07cafb23470866" -> "sha256:6d4d9f35d3797b0b495852174acc4df4cae9908794ccdf0ad19c42f3911cc88d" [label=""];
  "sha256:6d4d9f35d3797b0b495852174acc4df4cae9908794ccdf0ad19c42f3911cc88d" -> "sha256:2a0b8e81df55e49b594928a42b68df2dbf1183f34b94aa68a085905841cceb30" [label=""];
  "sha256:ba6246a9acb7b06ccf0720f9e9a667cba2e0fe7e5ca85cfbbb07cafb23470866" -> "sha256:2a0b8e81df55e49b594928a42b68df2dbf1183f34b94aa68a085905841cceb30" [label=""];
  "sha256:2a0b8e81df55e49b594928a42b68df2dbf1183f34b94aa68a085905841cceb30" -> "sha256:dd64a2f4d5795a05e6667c874eeda261ace23c5ee9349c3c802e4f3762b9f5b9" [label=""];
  "sha256:ba6246a9acb7b06ccf0720f9e9a667cba2e0fe7e5ca85cfbbb07cafb23470866" -> "sha256:dd64a2f4d5795a05e6667c874eeda261ace23c5ee9349c3c802e4f3762b9f5b9" [label=""];
  "sha256:dd64a2f4d5795a05e6667c874eeda261ace23c5ee9349c3c802e4f3762b9f5b9" -> "sha256:5a2b2de564eda398be8ce300abb0ef0b5e0c06f8a83a661fc0915b6b6fb1e01a" [label=""];
  "sha256:ba6246a9acb7b06ccf0720f9e9a667cba2e0fe7e5ca85cfbbb07cafb23470866" -> "sha256:5a2b2de564eda398be8ce300abb0ef0b5e0c06f8a83a661fc0915b6b6fb1e01a" [label=""];
  "sha256:5a2b2de564eda398be8ce300abb0ef0b5e0c06f8a83a661fc0915b6b6fb1e01a" -> "sha256:769b5a8a39840d13c8b4d5a10af895761b8a8fe62589b4de7e8b3156f1d35a33" [label=""];
  "sha256:ba6246a9acb7b06ccf0720f9e9a667cba2e0fe7e5ca85cfbbb07cafb23470866" -> "sha256:769b5a8a39840d13c8b4d5a10af895761b8a8fe62589b4de7e8b3156f1d35a33" [label=""];
  "sha256:769b5a8a39840d13c8b4d5a10af895761b8a8fe62589b4de7e8b3156f1d35a33" -> "sha256:024306988f3144ab7eba6ef7dbc0b6a74d6511d65fa2388704eedb85b27e153c" [label=""];
  "sha256:024306988f3144ab7eba6ef7dbc0b6a74d6511d65fa2388704eedb85b27e153c" -> "sha256:c5dc7d7d18c77864375a2ed5cda2140d9403c570f3d36bc442f08f210b41f03a" [label=""];
  "sha256:c5dc7d7d18c77864375a2ed5cda2140d9403c570f3d36bc442f08f210b41f03a" -> "sha256:a04ad47619108f6abd629bcaee73e85897370137dcf4d0599cabc662a4d5ea7d" [label=""];
}

