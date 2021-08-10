[app/sources/315825884.Dockerfile]
digraph {
  "sha256:fafb7d5d6ccb8ca96aac5a578d55ddb1973adda74a65cf771ea7ed43f7413e6b" [label="docker-image://docker.io/resin/rpi-raspbian:jessie" shape="ellipse"];
  "sha256:76e390892f4d76198220275a324ebcfefec356ac952e3374ce40bd979d286a6a" [label="mkdir{path=/app}" shape="note"];
  "sha256:ccb63c23803a26d31080c850047247f6f159dfdeeecdbfef95012bb4fc894eae" [label="/bin/sh -c apt-get update && apt-get install -y         python3         python3-pip         wget         build-essential         libjpeg-dev         python3-dev         zlib1g-dev" shape="box"];
  "sha256:4f7c04f66241b3d6ec72416033d2e35af007e4592c910f62a9feaca9b3be38c0" [label="local://context" shape="ellipse"];
  "sha256:6bc065e614ddc7efadea918346dc07ddf4de1dede07a2e2eb82a5a607f4d333d" [label="copy{src=/requirements.txt, dest=/app/}" shape="note"];
  "sha256:17facd7e43ac0f6f29e7f5f1c7ced30ab4131321f257c312e3e8903618ab14b5" [label="/bin/sh -c pip3 install --upgrade pip" shape="box"];
  "sha256:52a54bc46430bd8391009041266cf1ddef3cb48fc4de5a710c3a3b4243c03aa2" [label="/bin/sh -c pip install --upgrade setuptools" shape="box"];
  "sha256:cae2d1f895b439cd970e78a4196aa4c25a9845ec4e4a7b32b7036504c14a3143" [label="/bin/sh -c pip install -r requirements.txt" shape="box"];
  "sha256:0f7d7e1d3a1b388d78a11d264ff82a76a65671b4074770fde01447b6fcd09f01" [label="/bin/sh -c pip install http://ci.tensorflow.org/view/Nightly/job/nightly-pi-python3/179/artifact/output-artifacts/tensorflow-1.7.0-cp34-none-any.whl" shape="box"];
  "sha256:0f8412ec8435553b5b07279606f57bed7fe7b532dd355176c12aeace07fa2bad" [label="copy{src=/, dest=/app/}" shape="note"];
  "sha256:73fc0bf903a7b8a6d16a4e1b056bd376b0b4de4bfdff4aae18434a082c32ce32" [label="sha256:73fc0bf903a7b8a6d16a4e1b056bd376b0b4de4bfdff4aae18434a082c32ce32" shape="plaintext"];
  "sha256:fafb7d5d6ccb8ca96aac5a578d55ddb1973adda74a65cf771ea7ed43f7413e6b" -> "sha256:76e390892f4d76198220275a324ebcfefec356ac952e3374ce40bd979d286a6a" [label=""];
  "sha256:76e390892f4d76198220275a324ebcfefec356ac952e3374ce40bd979d286a6a" -> "sha256:ccb63c23803a26d31080c850047247f6f159dfdeeecdbfef95012bb4fc894eae" [label=""];
  "sha256:ccb63c23803a26d31080c850047247f6f159dfdeeecdbfef95012bb4fc894eae" -> "sha256:6bc065e614ddc7efadea918346dc07ddf4de1dede07a2e2eb82a5a607f4d333d" [label=""];
  "sha256:4f7c04f66241b3d6ec72416033d2e35af007e4592c910f62a9feaca9b3be38c0" -> "sha256:6bc065e614ddc7efadea918346dc07ddf4de1dede07a2e2eb82a5a607f4d333d" [label=""];
  "sha256:6bc065e614ddc7efadea918346dc07ddf4de1dede07a2e2eb82a5a607f4d333d" -> "sha256:17facd7e43ac0f6f29e7f5f1c7ced30ab4131321f257c312e3e8903618ab14b5" [label=""];
  "sha256:17facd7e43ac0f6f29e7f5f1c7ced30ab4131321f257c312e3e8903618ab14b5" -> "sha256:52a54bc46430bd8391009041266cf1ddef3cb48fc4de5a710c3a3b4243c03aa2" [label=""];
  "sha256:52a54bc46430bd8391009041266cf1ddef3cb48fc4de5a710c3a3b4243c03aa2" -> "sha256:cae2d1f895b439cd970e78a4196aa4c25a9845ec4e4a7b32b7036504c14a3143" [label=""];
  "sha256:cae2d1f895b439cd970e78a4196aa4c25a9845ec4e4a7b32b7036504c14a3143" -> "sha256:0f7d7e1d3a1b388d78a11d264ff82a76a65671b4074770fde01447b6fcd09f01" [label=""];
  "sha256:0f7d7e1d3a1b388d78a11d264ff82a76a65671b4074770fde01447b6fcd09f01" -> "sha256:0f8412ec8435553b5b07279606f57bed7fe7b532dd355176c12aeace07fa2bad" [label=""];
  "sha256:4f7c04f66241b3d6ec72416033d2e35af007e4592c910f62a9feaca9b3be38c0" -> "sha256:0f8412ec8435553b5b07279606f57bed7fe7b532dd355176c12aeace07fa2bad" [label=""];
  "sha256:0f8412ec8435553b5b07279606f57bed7fe7b532dd355176c12aeace07fa2bad" -> "sha256:73fc0bf903a7b8a6d16a4e1b056bd376b0b4de4bfdff4aae18434a082c32ce32" [label=""];
}

