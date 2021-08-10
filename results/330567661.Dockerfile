[app/sources/330567661.Dockerfile]
digraph {
  "sha256:16ec3baf7e739d9d15c9812d46c99bdcc83915daca77be9723efada96b249472" [label="docker-image://docker.io/payara/micro:5-SNAPSHOT" shape="ellipse"];
  "sha256:1e8dd95b3cb2554e2c2746ba27e07381f52ff2bb61e507dfbe5dbfe6234e8939" [label="local://context" shape="ellipse"];
  "sha256:b56e192be4ccbd818420b7c72af7a6e06c82ccf58784b0a6491c0b6d9f462a2c" [label="copy{src=/target/ims-*.war, dest=/}" shape="note"];
  "sha256:396f892d0b4e224fe8ac6727296972acf3320feb70c48c90b7d7bf17e4498838" [label="sha256:396f892d0b4e224fe8ac6727296972acf3320feb70c48c90b7d7bf17e4498838" shape="plaintext"];
  "sha256:16ec3baf7e739d9d15c9812d46c99bdcc83915daca77be9723efada96b249472" -> "sha256:b56e192be4ccbd818420b7c72af7a6e06c82ccf58784b0a6491c0b6d9f462a2c" [label=""];
  "sha256:1e8dd95b3cb2554e2c2746ba27e07381f52ff2bb61e507dfbe5dbfe6234e8939" -> "sha256:b56e192be4ccbd818420b7c72af7a6e06c82ccf58784b0a6491c0b6d9f462a2c" [label=""];
  "sha256:b56e192be4ccbd818420b7c72af7a6e06c82ccf58784b0a6491c0b6d9f462a2c" -> "sha256:396f892d0b4e224fe8ac6727296972acf3320feb70c48c90b7d7bf17e4498838" [label=""];
}

