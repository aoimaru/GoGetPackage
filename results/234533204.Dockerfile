[app/sources/234533204.Dockerfile]
digraph {
  "sha256:5ca1450cb24791d6f048fadb6d41fba2a11c597f4cc57f224cc927f171ff0944" [label="docker-image://docker.io/datafusionrs/base:latest" shape="ellipse"];
  "sha256:d9b85b09050b9c21e498f3c4b6a1c028134e9d7ce843a6847fa408ed638c1873" [label="/bin/sh -c mkdir -p /tmp/datafusion_source" shape="box"];
  "sha256:8088b389a9cb45ae32483f6460983a3d06f5ebfad6dab5a111ae04ec978c1e8c" [label="/bin/sh -c mkdir -p /tmp/datafusion_source/src" shape="box"];
  "sha256:5b0871ddf8c593fc3d9363b5322b3adc6339574159ffaf41680fcb3708ebf5e7" [label="/bin/sh -c mkdir -p /tmp/datafusion_source/examples" shape="box"];
  "sha256:3ebfff6163b603954390171d00ccd06ebd2ef8b21ac0c00e921b8233d745853d" [label="local://context" shape="ellipse"];
  "sha256:85ce719e2edd1772f86f77cb146487fbc6998968b2a89e81106b55f8a90c9fab" [label="copy{src=/src, dest=/tmp/datafusion_source/src/}" shape="note"];
  "sha256:02b81a82f1c58b92f70ca8dfdb5044aa2148fe829bfe5b0ff414a06c0bc74adf" [label="copy{src=/examples, dest=/tmp/datafusion_source/examples/}" shape="note"];
  "sha256:f183d4c075c6be8bd381a61caaf7217e07b65529cfadbfb572774ceed72a06fe" [label="copy{src=/Cargo.toml, dest=/tmp/datafusion_source/}" shape="note"];
  "sha256:4771885e9e7edb201bc8f6735f16b36c7a77a547b600ebffef701d21d33adf44" [label="/bin/sh -c cd /tmp/datafusion_source ; . ~/.cargo/env ; cargo build --release" shape="box"];
  "sha256:fea6b2a7ed4bd8ffa67f90f4a55223aafe0b2e2efaa45b791b88d05deef12533" [label="/bin/sh -c mkdir -p /opt/datafusion/bin &&     mkdir -p /opt/datafusion/data &&     mkdir -p /var/log/datafusion" shape="box"];
  "sha256:dd3d1b3cb6688a3a5e9eca9cb920f5acd9e13d3ba9fde452bf4b49fd292836cb" [label="/bin/sh -c cp /tmp/datafusion_source/target/release/console /opt/datafusion/bin/" shape="box"];
  "sha256:6823e539758a37375386c67a75ed8fa96a7319283287041e5f52f8bcbde42af6" [label="copy{src=/scripts/docker/console/all_types_flat.csv, dest=/opt/datafusion/data/}" shape="note"];
  "sha256:6a60257ff24f02840943727b3198ca6ff5410b42a6615b1adee43e618e8e9e4b" [label="copy{src=/scripts/docker/console/all_types_flat.parquet, dest=/opt/datafusion/data/}" shape="note"];
  "sha256:365473f78fce779f7122a609d25c0be712c707f9eabebf8ef6354f9cba6d5f9c" [label="copy{src=/scripts/docker/console/uk_cities.csv, dest=/opt/datafusion/data/}" shape="note"];
  "sha256:e4c26fd19a0de1e102beafafa24a74d5f417753b99a91b99c7e8c55f40c7634b" [label="/bin/sh -c rm -rf /tmp/datafusion_source" shape="box"];
  "sha256:30b0c16e247313c86c8f1730fce5fd0891fc0d552743aacd739034e8a11f36b1" [label="copy{src=/scripts/docker/console/console.sh, dest=/usr/bin/datafusion-console.sh}" shape="note"];
  "sha256:b02315ee7ebe3499dc5a5ef86d92511dc14ced58112473ac7887066792c0b3fb" [label="sha256:b02315ee7ebe3499dc5a5ef86d92511dc14ced58112473ac7887066792c0b3fb" shape="plaintext"];
  "sha256:5ca1450cb24791d6f048fadb6d41fba2a11c597f4cc57f224cc927f171ff0944" -> "sha256:d9b85b09050b9c21e498f3c4b6a1c028134e9d7ce843a6847fa408ed638c1873" [label=""];
  "sha256:d9b85b09050b9c21e498f3c4b6a1c028134e9d7ce843a6847fa408ed638c1873" -> "sha256:8088b389a9cb45ae32483f6460983a3d06f5ebfad6dab5a111ae04ec978c1e8c" [label=""];
  "sha256:8088b389a9cb45ae32483f6460983a3d06f5ebfad6dab5a111ae04ec978c1e8c" -> "sha256:5b0871ddf8c593fc3d9363b5322b3adc6339574159ffaf41680fcb3708ebf5e7" [label=""];
  "sha256:5b0871ddf8c593fc3d9363b5322b3adc6339574159ffaf41680fcb3708ebf5e7" -> "sha256:85ce719e2edd1772f86f77cb146487fbc6998968b2a89e81106b55f8a90c9fab" [label=""];
  "sha256:3ebfff6163b603954390171d00ccd06ebd2ef8b21ac0c00e921b8233d745853d" -> "sha256:85ce719e2edd1772f86f77cb146487fbc6998968b2a89e81106b55f8a90c9fab" [label=""];
  "sha256:85ce719e2edd1772f86f77cb146487fbc6998968b2a89e81106b55f8a90c9fab" -> "sha256:02b81a82f1c58b92f70ca8dfdb5044aa2148fe829bfe5b0ff414a06c0bc74adf" [label=""];
  "sha256:3ebfff6163b603954390171d00ccd06ebd2ef8b21ac0c00e921b8233d745853d" -> "sha256:02b81a82f1c58b92f70ca8dfdb5044aa2148fe829bfe5b0ff414a06c0bc74adf" [label=""];
  "sha256:02b81a82f1c58b92f70ca8dfdb5044aa2148fe829bfe5b0ff414a06c0bc74adf" -> "sha256:f183d4c075c6be8bd381a61caaf7217e07b65529cfadbfb572774ceed72a06fe" [label=""];
  "sha256:3ebfff6163b603954390171d00ccd06ebd2ef8b21ac0c00e921b8233d745853d" -> "sha256:f183d4c075c6be8bd381a61caaf7217e07b65529cfadbfb572774ceed72a06fe" [label=""];
  "sha256:f183d4c075c6be8bd381a61caaf7217e07b65529cfadbfb572774ceed72a06fe" -> "sha256:4771885e9e7edb201bc8f6735f16b36c7a77a547b600ebffef701d21d33adf44" [label=""];
  "sha256:4771885e9e7edb201bc8f6735f16b36c7a77a547b600ebffef701d21d33adf44" -> "sha256:fea6b2a7ed4bd8ffa67f90f4a55223aafe0b2e2efaa45b791b88d05deef12533" [label=""];
  "sha256:fea6b2a7ed4bd8ffa67f90f4a55223aafe0b2e2efaa45b791b88d05deef12533" -> "sha256:dd3d1b3cb6688a3a5e9eca9cb920f5acd9e13d3ba9fde452bf4b49fd292836cb" [label=""];
  "sha256:dd3d1b3cb6688a3a5e9eca9cb920f5acd9e13d3ba9fde452bf4b49fd292836cb" -> "sha256:6823e539758a37375386c67a75ed8fa96a7319283287041e5f52f8bcbde42af6" [label=""];
  "sha256:3ebfff6163b603954390171d00ccd06ebd2ef8b21ac0c00e921b8233d745853d" -> "sha256:6823e539758a37375386c67a75ed8fa96a7319283287041e5f52f8bcbde42af6" [label=""];
  "sha256:6823e539758a37375386c67a75ed8fa96a7319283287041e5f52f8bcbde42af6" -> "sha256:6a60257ff24f02840943727b3198ca6ff5410b42a6615b1adee43e618e8e9e4b" [label=""];
  "sha256:3ebfff6163b603954390171d00ccd06ebd2ef8b21ac0c00e921b8233d745853d" -> "sha256:6a60257ff24f02840943727b3198ca6ff5410b42a6615b1adee43e618e8e9e4b" [label=""];
  "sha256:6a60257ff24f02840943727b3198ca6ff5410b42a6615b1adee43e618e8e9e4b" -> "sha256:365473f78fce779f7122a609d25c0be712c707f9eabebf8ef6354f9cba6d5f9c" [label=""];
  "sha256:3ebfff6163b603954390171d00ccd06ebd2ef8b21ac0c00e921b8233d745853d" -> "sha256:365473f78fce779f7122a609d25c0be712c707f9eabebf8ef6354f9cba6d5f9c" [label=""];
  "sha256:365473f78fce779f7122a609d25c0be712c707f9eabebf8ef6354f9cba6d5f9c" -> "sha256:e4c26fd19a0de1e102beafafa24a74d5f417753b99a91b99c7e8c55f40c7634b" [label=""];
  "sha256:e4c26fd19a0de1e102beafafa24a74d5f417753b99a91b99c7e8c55f40c7634b" -> "sha256:30b0c16e247313c86c8f1730fce5fd0891fc0d552743aacd739034e8a11f36b1" [label=""];
  "sha256:3ebfff6163b603954390171d00ccd06ebd2ef8b21ac0c00e921b8233d745853d" -> "sha256:30b0c16e247313c86c8f1730fce5fd0891fc0d552743aacd739034e8a11f36b1" [label=""];
  "sha256:30b0c16e247313c86c8f1730fce5fd0891fc0d552743aacd739034e8a11f36b1" -> "sha256:b02315ee7ebe3499dc5a5ef86d92511dc14ced58112473ac7887066792c0b3fb" [label=""];
}

