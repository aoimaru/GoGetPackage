[app/sources/176839029.Dockerfile]
digraph {
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:7569ba9408adad2fec883434f94a5bed1937e8545b27908a4953bf6c9f02247c" [label="/bin/sh -c apt-get update && apt-get install wget -y" shape="box"];
  "sha256:e324daac97b93bdb7e4e6a79cabe0480caa406d921b1147954e3615dcfbb0234" [label="/bin/sh -c wget http://s3.amazonaws.com/influxdb/influxdb_latest_amd64.deb" shape="box"];
  "sha256:790b32f63d76f74ec17f5a1aa17b61ccaf598033fa01db86bafb95673aedb53a" [label="/bin/sh -c dpkg -i influxdb_latest_amd64.deb" shape="box"];
  "sha256:bbeb4ea431885aaed8ea4020c72943f545c8fa7312b5d8424c67fa4a2d3a1b13" [label="/bin/sh -c rm -r /opt/influxdb/shared" shape="box"];
  "sha256:d456f896bc34bfc0743f0afe1e35158a5a6dc5409f3984c9bf235ba022048eb1" [label="sha256:d456f896bc34bfc0743f0afe1e35158a5a6dc5409f3984c9bf235ba022048eb1" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:7569ba9408adad2fec883434f94a5bed1937e8545b27908a4953bf6c9f02247c" [label=""];
  "sha256:7569ba9408adad2fec883434f94a5bed1937e8545b27908a4953bf6c9f02247c" -> "sha256:e324daac97b93bdb7e4e6a79cabe0480caa406d921b1147954e3615dcfbb0234" [label=""];
  "sha256:e324daac97b93bdb7e4e6a79cabe0480caa406d921b1147954e3615dcfbb0234" -> "sha256:790b32f63d76f74ec17f5a1aa17b61ccaf598033fa01db86bafb95673aedb53a" [label=""];
  "sha256:790b32f63d76f74ec17f5a1aa17b61ccaf598033fa01db86bafb95673aedb53a" -> "sha256:bbeb4ea431885aaed8ea4020c72943f545c8fa7312b5d8424c67fa4a2d3a1b13" [label=""];
  "sha256:bbeb4ea431885aaed8ea4020c72943f545c8fa7312b5d8424c67fa4a2d3a1b13" -> "sha256:d456f896bc34bfc0743f0afe1e35158a5a6dc5409f3984c9bf235ba022048eb1" [label=""];
}

