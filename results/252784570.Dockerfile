[app/sources/252784570.Dockerfile]
digraph {
  "sha256:a926328785d24fb302a96ca24b8967c6c696541c353e5bd3eace9b419806f792" [label="local://context" shape="ellipse"];
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" [label="docker-image://docker.io/library/ubuntu:latest" shape="ellipse"];
  "sha256:5f1664ee3dd81696e0a182773a30bf34c3b979e8c10c2943e2ac70b4a8716018" [label="/bin/sh -c apt-get update && apt-get install -y software-properties-common && add-apt-repository ppa:bitcoin/bitcoin && apt-get update && apt-get install -y supervisor bitcoind" shape="box"];
  "sha256:6c9e47a6ae51908d003250c00d494a0f8dc8f217e24f0a931ddc7033d18a2077" [label="copy{src=/conf/supervisord.conf, dest=/etc/supervisor/conf.d/supervisord.conf}" shape="note"];
  "sha256:ee755e72e7c2c33d436833d7ee2129339bd673582e4d6c63b20ff727c40337d4" [label="sha256:ee755e72e7c2c33d436833d7ee2129339bd673582e4d6c63b20ff727c40337d4" shape="plaintext"];
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" -> "sha256:5f1664ee3dd81696e0a182773a30bf34c3b979e8c10c2943e2ac70b4a8716018" [label=""];
  "sha256:5f1664ee3dd81696e0a182773a30bf34c3b979e8c10c2943e2ac70b4a8716018" -> "sha256:6c9e47a6ae51908d003250c00d494a0f8dc8f217e24f0a931ddc7033d18a2077" [label=""];
  "sha256:a926328785d24fb302a96ca24b8967c6c696541c353e5bd3eace9b419806f792" -> "sha256:6c9e47a6ae51908d003250c00d494a0f8dc8f217e24f0a931ddc7033d18a2077" [label=""];
  "sha256:6c9e47a6ae51908d003250c00d494a0f8dc8f217e24f0a931ddc7033d18a2077" -> "sha256:ee755e72e7c2c33d436833d7ee2129339bd673582e4d6c63b20ff727c40337d4" [label=""];
}

