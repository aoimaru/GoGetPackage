[app/sources/405458821.Dockerfile]
digraph {
  "sha256:83d31e7a3815e63df85679627b4c74f63e4cf19d203ebd2f70ca025f56445d8b" [label="docker-image://docker.io/library/dota:latest" shape="ellipse"];
  "sha256:e44efdf84da9c59a79168fed90aa82fe55acf2ba8c0597bde792e8513c452140" [label="/bin/sh -c apt-get -q update  && apt-get install -y     python3.7     python3.7-distutils  && curl -s https://bootstrap.pypa.io/get-pip.py | python3.7" shape="box"];
  "sha256:7ee0e69fdd8de7f3c2b3ee04ffc4a0ea3d2b0e5011742935fef95d6f8a459d82" [label="mkdir{path=/root}" shape="note"];
  "sha256:b578dcfab44ce291bd84ca820b3ade06418ae61084946f2f83ab8f684c33c0d2" [label="/bin/sh -c mkdir /root/dotaservice" shape="box"];
  "sha256:920c4bdd7e618379663b4cf1fa574d9f7e64ddcdcebabd9c8505d8d0857d4124" [label="local://context" shape="ellipse"];
  "sha256:7e7b1f242544aa87f801424e0d6b2026722738060cdee4d3835d7d19ad818b1d" [label="copy{src=/setup.py, dest=/root/dotaservice/},copy{src=/README.md, dest=/root/dotaservice/}" shape="note"];
  "sha256:f69158b8c18b8e318fdd0dad1b5b69058a870ef802f2f054ef279960449b14ee" [label="copy{src=/dotaservice, dest=/root/dotaservice/dotaservice/}" shape="note"];
  "sha256:a4442758a47183bc6c57cc1c0e1bb15dce33a53e65ee0f0c56b799878ba5af27" [label="/bin/sh -c pip3.7 install --user -e /root/dotaservice/" shape="box"];
  "sha256:4dfb2f95db613392c02a219527330ff7fe3e9fc5d6fb5a0243bbc436d386471a" [label="sha256:4dfb2f95db613392c02a219527330ff7fe3e9fc5d6fb5a0243bbc436d386471a" shape="plaintext"];
  "sha256:83d31e7a3815e63df85679627b4c74f63e4cf19d203ebd2f70ca025f56445d8b" -> "sha256:e44efdf84da9c59a79168fed90aa82fe55acf2ba8c0597bde792e8513c452140" [label=""];
  "sha256:e44efdf84da9c59a79168fed90aa82fe55acf2ba8c0597bde792e8513c452140" -> "sha256:7ee0e69fdd8de7f3c2b3ee04ffc4a0ea3d2b0e5011742935fef95d6f8a459d82" [label=""];
  "sha256:7ee0e69fdd8de7f3c2b3ee04ffc4a0ea3d2b0e5011742935fef95d6f8a459d82" -> "sha256:b578dcfab44ce291bd84ca820b3ade06418ae61084946f2f83ab8f684c33c0d2" [label=""];
  "sha256:b578dcfab44ce291bd84ca820b3ade06418ae61084946f2f83ab8f684c33c0d2" -> "sha256:7e7b1f242544aa87f801424e0d6b2026722738060cdee4d3835d7d19ad818b1d" [label=""];
  "sha256:920c4bdd7e618379663b4cf1fa574d9f7e64ddcdcebabd9c8505d8d0857d4124" -> "sha256:7e7b1f242544aa87f801424e0d6b2026722738060cdee4d3835d7d19ad818b1d" [label=""];
  "sha256:7e7b1f242544aa87f801424e0d6b2026722738060cdee4d3835d7d19ad818b1d" -> "sha256:f69158b8c18b8e318fdd0dad1b5b69058a870ef802f2f054ef279960449b14ee" [label=""];
  "sha256:920c4bdd7e618379663b4cf1fa574d9f7e64ddcdcebabd9c8505d8d0857d4124" -> "sha256:f69158b8c18b8e318fdd0dad1b5b69058a870ef802f2f054ef279960449b14ee" [label=""];
  "sha256:f69158b8c18b8e318fdd0dad1b5b69058a870ef802f2f054ef279960449b14ee" -> "sha256:a4442758a47183bc6c57cc1c0e1bb15dce33a53e65ee0f0c56b799878ba5af27" [label=""];
  "sha256:a4442758a47183bc6c57cc1c0e1bb15dce33a53e65ee0f0c56b799878ba5af27" -> "sha256:4dfb2f95db613392c02a219527330ff7fe3e9fc5d6fb5a0243bbc436d386471a" [label=""];
}

