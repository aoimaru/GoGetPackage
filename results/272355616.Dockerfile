[app/sources/272355616.Dockerfile]
digraph {
  "sha256:df78ce47b21724fae10b33edb0cc432444c6e910c08d2f5535069d5bd0eaf6a2" [label="local://context" shape="ellipse"];
  "sha256:f31c86e4d1c5eb80f584422d9e9ea28f896c08f5b7802842b85f144ae5d8aee0" [label="docker-image://docker.io/library/node:8.1.4-alpine@sha256:b9d990b3e7de4c6d1bd5b77ebab0392bade033db06efae68fc15ae68b6a4bb24" shape="ellipse"];
  "sha256:3f5bb33800cbb7260c7fe886c31ef3285f652d4eafcecb2de41c6089af8aad9c" [label="copy{src=/package.json, dest=/}" shape="note"];
  "sha256:e0895dc4c860a8dbe8a3f5f945c32028759e7f017952775b3274b2925821c84f" [label="copy{src=/package-lock.json, dest=/}" shape="note"];
  "sha256:b132093d2cf9a3651d978b0d6d321ad21f1a08371c57ce5decbbb57fcf409127" [label="/bin/sh -c npm i -s --no-progress &&     mkdir /app &&     cp -R ./node_modules ./app" shape="box"];
  "sha256:257dec9615ae492fed2f5ae11b6ea3bbffbb8867c87ad9bef16ca3c9f45bf0b6" [label="mkdir{path=/app}" shape="note"];
  "sha256:5e8e1139a7c74439efb25bdbf1e83646d3f18ad514ba1c00848789e21f72d1b0" [label="copy{src=/, dest=/app/}" shape="note"];
  "sha256:efbc0aa57dd2588408e9fb486d96516e8e4ff61f793c8aca9397f21ddf7c473f" [label="/bin/sh -c npm run build" shape="box"];
  "sha256:4303988abc0edfc58c1c123e68d9f5ef8380d8d0ad07e0ff2aaf628b120581bd" [label="sha256:4303988abc0edfc58c1c123e68d9f5ef8380d8d0ad07e0ff2aaf628b120581bd" shape="plaintext"];
  "sha256:f31c86e4d1c5eb80f584422d9e9ea28f896c08f5b7802842b85f144ae5d8aee0" -> "sha256:3f5bb33800cbb7260c7fe886c31ef3285f652d4eafcecb2de41c6089af8aad9c" [label=""];
  "sha256:df78ce47b21724fae10b33edb0cc432444c6e910c08d2f5535069d5bd0eaf6a2" -> "sha256:3f5bb33800cbb7260c7fe886c31ef3285f652d4eafcecb2de41c6089af8aad9c" [label=""];
  "sha256:3f5bb33800cbb7260c7fe886c31ef3285f652d4eafcecb2de41c6089af8aad9c" -> "sha256:e0895dc4c860a8dbe8a3f5f945c32028759e7f017952775b3274b2925821c84f" [label=""];
  "sha256:df78ce47b21724fae10b33edb0cc432444c6e910c08d2f5535069d5bd0eaf6a2" -> "sha256:e0895dc4c860a8dbe8a3f5f945c32028759e7f017952775b3274b2925821c84f" [label=""];
  "sha256:e0895dc4c860a8dbe8a3f5f945c32028759e7f017952775b3274b2925821c84f" -> "sha256:b132093d2cf9a3651d978b0d6d321ad21f1a08371c57ce5decbbb57fcf409127" [label=""];
  "sha256:b132093d2cf9a3651d978b0d6d321ad21f1a08371c57ce5decbbb57fcf409127" -> "sha256:257dec9615ae492fed2f5ae11b6ea3bbffbb8867c87ad9bef16ca3c9f45bf0b6" [label=""];
  "sha256:257dec9615ae492fed2f5ae11b6ea3bbffbb8867c87ad9bef16ca3c9f45bf0b6" -> "sha256:5e8e1139a7c74439efb25bdbf1e83646d3f18ad514ba1c00848789e21f72d1b0" [label=""];
  "sha256:df78ce47b21724fae10b33edb0cc432444c6e910c08d2f5535069d5bd0eaf6a2" -> "sha256:5e8e1139a7c74439efb25bdbf1e83646d3f18ad514ba1c00848789e21f72d1b0" [label=""];
  "sha256:5e8e1139a7c74439efb25bdbf1e83646d3f18ad514ba1c00848789e21f72d1b0" -> "sha256:efbc0aa57dd2588408e9fb486d96516e8e4ff61f793c8aca9397f21ddf7c473f" [label=""];
  "sha256:efbc0aa57dd2588408e9fb486d96516e8e4ff61f793c8aca9397f21ddf7c473f" -> "sha256:4303988abc0edfc58c1c123e68d9f5ef8380d8d0ad07e0ff2aaf628b120581bd" [label=""];
}

