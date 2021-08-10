[app/sources/315190643.Dockerfile]
digraph {
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" [label="docker-image://docker.io/library/alpine:latest" shape="ellipse"];
  "sha256:c01152420626df4db77a8924823550ab4bb69d56db8897cb957455985a04f383" [label="/bin/sh -c apk --update add python3 py3-pip py3-openssl py3-cryptography py3-requests tzdata &&     pip3 install --upgrade pip &&     ln -sf /usr/share/zoneinfo/UTC /etc/localtime &&     echo \"UTC\" > /etc/timezone" shape="box"];
  "sha256:14deac19b7bd14c078b775c6bfda8e04a27617adbbc9e92f4c4a0d89499193e5" [label="local://context" shape="ellipse"];
  "sha256:9c202a36c7e2467fd88203ac197a8377ad5046579be35de22039ec86ad557992" [label="copy{src=/requirements.txt, dest=/opt/fandogh_cli/requirements.txt}" shape="note"];
  "sha256:8260ed16e04487b47f33b8592e9bd3e0992faebf50406f8fe4cf2bc17abfb978" [label="/bin/sh -c pip3 install -r /opt/fandogh_cli/requirements.txt" shape="box"];
  "sha256:0148e7a04f6d2d846924b9a4cad365fcb9d95810a18252847f1a3d0707569e18" [label="mkdir{path=/opt/fandogh_cli}" shape="note"];
  "sha256:f8ec5ec566e3e6a90486b0ab781ddc4f8c7343f8f7cb1b399406ab8c95c3a69b" [label="copy{src=/, dest=/opt/fandogh_cli}" shape="note"];
  "sha256:84119fa1833659c1291295a7793a52b01b5b128ca7d23bab0bbf49fbeba95727" [label="/bin/sh -c python3 setup.py install" shape="box"];
  "sha256:5231c54da156efd6f7e9a2f21a87fce8a17a192c711901fa9a8072cbbe338cde" [label="sha256:5231c54da156efd6f7e9a2f21a87fce8a17a192c711901fa9a8072cbbe338cde" shape="plaintext"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" -> "sha256:c01152420626df4db77a8924823550ab4bb69d56db8897cb957455985a04f383" [label=""];
  "sha256:c01152420626df4db77a8924823550ab4bb69d56db8897cb957455985a04f383" -> "sha256:9c202a36c7e2467fd88203ac197a8377ad5046579be35de22039ec86ad557992" [label=""];
  "sha256:14deac19b7bd14c078b775c6bfda8e04a27617adbbc9e92f4c4a0d89499193e5" -> "sha256:9c202a36c7e2467fd88203ac197a8377ad5046579be35de22039ec86ad557992" [label=""];
  "sha256:9c202a36c7e2467fd88203ac197a8377ad5046579be35de22039ec86ad557992" -> "sha256:8260ed16e04487b47f33b8592e9bd3e0992faebf50406f8fe4cf2bc17abfb978" [label=""];
  "sha256:8260ed16e04487b47f33b8592e9bd3e0992faebf50406f8fe4cf2bc17abfb978" -> "sha256:0148e7a04f6d2d846924b9a4cad365fcb9d95810a18252847f1a3d0707569e18" [label=""];
  "sha256:0148e7a04f6d2d846924b9a4cad365fcb9d95810a18252847f1a3d0707569e18" -> "sha256:f8ec5ec566e3e6a90486b0ab781ddc4f8c7343f8f7cb1b399406ab8c95c3a69b" [label=""];
  "sha256:14deac19b7bd14c078b775c6bfda8e04a27617adbbc9e92f4c4a0d89499193e5" -> "sha256:f8ec5ec566e3e6a90486b0ab781ddc4f8c7343f8f7cb1b399406ab8c95c3a69b" [label=""];
  "sha256:f8ec5ec566e3e6a90486b0ab781ddc4f8c7343f8f7cb1b399406ab8c95c3a69b" -> "sha256:84119fa1833659c1291295a7793a52b01b5b128ca7d23bab0bbf49fbeba95727" [label=""];
  "sha256:84119fa1833659c1291295a7793a52b01b5b128ca7d23bab0bbf49fbeba95727" -> "sha256:5231c54da156efd6f7e9a2f21a87fce8a17a192c711901fa9a8072cbbe338cde" [label=""];
}

