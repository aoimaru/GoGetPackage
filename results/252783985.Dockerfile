[app/sources/252783985.Dockerfile]
digraph {
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:2e348b50f7a327a4d0fa0243527e078fe9959998ee0eb79c29b703c2a921b6a4" [label="/bin/sh -c apt-get -y update" shape="box"];
  "sha256:4bfaba2211da043c3637f008211d94fd3c08b9b9791affbea3f4c7971a2b95eb" [label="/bin/sh -c apt-get -y install --no-install-recommends python3-pip" shape="box"];
  "sha256:10610ac852c7d351f6e7613aadaafd0869b49d2d293097b40e6cfcd4129d64c4" [label="/bin/sh -c pip3 install --upgrade pip" shape="box"];
  "sha256:8da357426e4b9774a22a9c93b6bb497fb540062ba8724e36aa49018f8079ad6a" [label="/bin/sh -c pip3 install -U setuptools" shape="box"];
  "sha256:9701b200557ee92b06a1f311daebb5cf3572841f1fd648699525212dbcc5db45" [label="/bin/sh -c pip3 install isatools==0.3.4" shape="box"];
  "sha256:d60d5a528325203351aedb539e0bed2c81a1866587f0c975d0dd98d2118ecda0" [label="local://context" shape="ellipse"];
  "sha256:d2ee9f72b69ffeec324f8b71e59fe3537095991ac0d2aea93876aac83a47574d" [label="copy{src=/run_test.sh, dest=/usr/local/bin/run_test.sh}" shape="note"];
  "sha256:5b139342f1f9cb4fa2d65f464e93f7b4f54664255faf69f5ae00fedf07637a83" [label="/bin/sh -c chmod +x /usr/local/bin/run_test.sh" shape="box"];
  "sha256:06125c05bc6b533fbff393a0aed5610a0820316d232be9d53740b4db9650e38b" [label="copy{src=/run_validator.py, dest=/}" shape="note"];
  "sha256:d65619197e501e2886655c19ea6629db54c034638452a2950256d026d56fb42e" [label="sha256:d65619197e501e2886655c19ea6629db54c034638452a2950256d026d56fb42e" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:2e348b50f7a327a4d0fa0243527e078fe9959998ee0eb79c29b703c2a921b6a4" [label=""];
  "sha256:2e348b50f7a327a4d0fa0243527e078fe9959998ee0eb79c29b703c2a921b6a4" -> "sha256:4bfaba2211da043c3637f008211d94fd3c08b9b9791affbea3f4c7971a2b95eb" [label=""];
  "sha256:4bfaba2211da043c3637f008211d94fd3c08b9b9791affbea3f4c7971a2b95eb" -> "sha256:10610ac852c7d351f6e7613aadaafd0869b49d2d293097b40e6cfcd4129d64c4" [label=""];
  "sha256:10610ac852c7d351f6e7613aadaafd0869b49d2d293097b40e6cfcd4129d64c4" -> "sha256:8da357426e4b9774a22a9c93b6bb497fb540062ba8724e36aa49018f8079ad6a" [label=""];
  "sha256:8da357426e4b9774a22a9c93b6bb497fb540062ba8724e36aa49018f8079ad6a" -> "sha256:9701b200557ee92b06a1f311daebb5cf3572841f1fd648699525212dbcc5db45" [label=""];
  "sha256:9701b200557ee92b06a1f311daebb5cf3572841f1fd648699525212dbcc5db45" -> "sha256:d2ee9f72b69ffeec324f8b71e59fe3537095991ac0d2aea93876aac83a47574d" [label=""];
  "sha256:d60d5a528325203351aedb539e0bed2c81a1866587f0c975d0dd98d2118ecda0" -> "sha256:d2ee9f72b69ffeec324f8b71e59fe3537095991ac0d2aea93876aac83a47574d" [label=""];
  "sha256:d2ee9f72b69ffeec324f8b71e59fe3537095991ac0d2aea93876aac83a47574d" -> "sha256:5b139342f1f9cb4fa2d65f464e93f7b4f54664255faf69f5ae00fedf07637a83" [label=""];
  "sha256:5b139342f1f9cb4fa2d65f464e93f7b4f54664255faf69f5ae00fedf07637a83" -> "sha256:06125c05bc6b533fbff393a0aed5610a0820316d232be9d53740b4db9650e38b" [label=""];
  "sha256:d60d5a528325203351aedb539e0bed2c81a1866587f0c975d0dd98d2118ecda0" -> "sha256:06125c05bc6b533fbff393a0aed5610a0820316d232be9d53740b4db9650e38b" [label=""];
  "sha256:06125c05bc6b533fbff393a0aed5610a0820316d232be9d53740b4db9650e38b" -> "sha256:d65619197e501e2886655c19ea6629db54c034638452a2950256d026d56fb42e" [label=""];
}

