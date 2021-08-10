[app/sources/296198261.Dockerfile]
digraph {
  "sha256:6bbcc96bd49755f0fa950bc69033d73248d9265dc70b777a51807915c9a8fb6b" [label="local://context" shape="ellipse"];
  "sha256:931a1c72c3e0943f8ae3bad2d6c2c0d04efc9031392f7574cafc331814fa690d" [label="docker-image://docker.io/library/debian:stretch" shape="ellipse"];
  "sha256:6b003333a1b502e724716fc0d1aaa79b4ef640a761a061511b36f5d7431aac59" [label="/bin/sh -c apt-get update &&     apt-get -y install openssh-server php composer" shape="box"];
  "sha256:085683f81eb82d7ead815dffbd7349de4c21cc54872ebf0c2866cb210de508e3" [label="/bin/sh -c mkdir -p /var/run/sshd" shape="box"];
  "sha256:484ac576e8b465cd4a49e0034f727cc8d6840b592915a680c1121c58f8c5a1d8" [label="copy{src=/entrypoint, dest=/}" shape="note"];
  "sha256:0e2d4e58ddf7c1d30b649cfd814f528d9994a977ce0219e26e842ef33e170fe4" [label="sha256:0e2d4e58ddf7c1d30b649cfd814f528d9994a977ce0219e26e842ef33e170fe4" shape="plaintext"];
  "sha256:931a1c72c3e0943f8ae3bad2d6c2c0d04efc9031392f7574cafc331814fa690d" -> "sha256:6b003333a1b502e724716fc0d1aaa79b4ef640a761a061511b36f5d7431aac59" [label=""];
  "sha256:6b003333a1b502e724716fc0d1aaa79b4ef640a761a061511b36f5d7431aac59" -> "sha256:085683f81eb82d7ead815dffbd7349de4c21cc54872ebf0c2866cb210de508e3" [label=""];
  "sha256:085683f81eb82d7ead815dffbd7349de4c21cc54872ebf0c2866cb210de508e3" -> "sha256:484ac576e8b465cd4a49e0034f727cc8d6840b592915a680c1121c58f8c5a1d8" [label=""];
  "sha256:6bbcc96bd49755f0fa950bc69033d73248d9265dc70b777a51807915c9a8fb6b" -> "sha256:484ac576e8b465cd4a49e0034f727cc8d6840b592915a680c1121c58f8c5a1d8" [label=""];
  "sha256:484ac576e8b465cd4a49e0034f727cc8d6840b592915a680c1121c58f8c5a1d8" -> "sha256:0e2d4e58ddf7c1d30b649cfd814f528d9994a977ce0219e26e842ef33e170fe4" [label=""];
}

