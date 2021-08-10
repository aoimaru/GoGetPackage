[app/sources/252767317.Dockerfile]
digraph {
  "sha256:d512fbb8ada5adddf38da963160ede4e76aa66a0a5498ca5a01bd345de7a3abf" [label="docker-image://docker.io/library/debian:wheezy" shape="ellipse"];
  "sha256:06df6d3322f42b12698f85ddaf90ee8e915371792ac8c0ddd0588540b6123a69" [label="mkdir{path=/main}" shape="note"];
  "sha256:d0f38682e4e4cf5b2852aef855c807af70b05a9b153700aa7e535d8bdc9ff4bd" [label="/bin/sh -c apt-get update && apt-get install -qy curl python-dev python-pip git libffi-dev libssl-dev" shape="box"];
  "sha256:29629566d119c95b785caa081766ed919b9678f140ac12532bcd0371a40fe50b" [label="local://context" shape="ellipse"];
  "sha256:71751e93061ef2d018a6b6a79482f31322c2410c50b80ac5456ae48e094a7921" [label="copy{src=/requirements.txt, dest=/main/}" shape="note"];
  "sha256:a0107facbdca4dcbe4d5e9841640d8dc3b77381cb62c3c5748c12623fde1399a" [label="/bin/sh -c pip install -r requirements.txt" shape="box"];
  "sha256:756e49fc8f80a4a22288ba0db0379e37bf7690f77cf7948210bafdeed9c106d8" [label="/bin/sh -c rm -f requirements.txt" shape="box"];
  "sha256:c5b84b6a9a47a2000c60f85fb52e89a94bfeb9b238fa400d4cfc6159129eed53" [label="copy{src=/dist/policy_agent, dest=/main/}" shape="note"];
  "sha256:e2d8fbbf0e4e193da77e0bc407ecb85c46f890bf76a7d43f6671ef0fe2dd6e04" [label="sha256:e2d8fbbf0e4e193da77e0bc407ecb85c46f890bf76a7d43f6671ef0fe2dd6e04" shape="plaintext"];
  "sha256:d512fbb8ada5adddf38da963160ede4e76aa66a0a5498ca5a01bd345de7a3abf" -> "sha256:06df6d3322f42b12698f85ddaf90ee8e915371792ac8c0ddd0588540b6123a69" [label=""];
  "sha256:06df6d3322f42b12698f85ddaf90ee8e915371792ac8c0ddd0588540b6123a69" -> "sha256:d0f38682e4e4cf5b2852aef855c807af70b05a9b153700aa7e535d8bdc9ff4bd" [label=""];
  "sha256:d0f38682e4e4cf5b2852aef855c807af70b05a9b153700aa7e535d8bdc9ff4bd" -> "sha256:71751e93061ef2d018a6b6a79482f31322c2410c50b80ac5456ae48e094a7921" [label=""];
  "sha256:29629566d119c95b785caa081766ed919b9678f140ac12532bcd0371a40fe50b" -> "sha256:71751e93061ef2d018a6b6a79482f31322c2410c50b80ac5456ae48e094a7921" [label=""];
  "sha256:71751e93061ef2d018a6b6a79482f31322c2410c50b80ac5456ae48e094a7921" -> "sha256:a0107facbdca4dcbe4d5e9841640d8dc3b77381cb62c3c5748c12623fde1399a" [label=""];
  "sha256:a0107facbdca4dcbe4d5e9841640d8dc3b77381cb62c3c5748c12623fde1399a" -> "sha256:756e49fc8f80a4a22288ba0db0379e37bf7690f77cf7948210bafdeed9c106d8" [label=""];
  "sha256:756e49fc8f80a4a22288ba0db0379e37bf7690f77cf7948210bafdeed9c106d8" -> "sha256:c5b84b6a9a47a2000c60f85fb52e89a94bfeb9b238fa400d4cfc6159129eed53" [label=""];
  "sha256:29629566d119c95b785caa081766ed919b9678f140ac12532bcd0371a40fe50b" -> "sha256:c5b84b6a9a47a2000c60f85fb52e89a94bfeb9b238fa400d4cfc6159129eed53" [label=""];
  "sha256:c5b84b6a9a47a2000c60f85fb52e89a94bfeb9b238fa400d4cfc6159129eed53" -> "sha256:e2d8fbbf0e4e193da77e0bc407ecb85c46f890bf76a7d43f6671ef0fe2dd6e04" [label=""];
}

