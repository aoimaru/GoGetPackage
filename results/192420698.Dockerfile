[app/sources/192420698.Dockerfile]
digraph {
  "sha256:fd27345865c213dc0b44fe63c6010d7977acab3d71363c6d63095456f9840143" [label="local://context" shape="ellipse"];
  "sha256:931a1c72c3e0943f8ae3bad2d6c2c0d04efc9031392f7574cafc331814fa690d" [label="docker-image://docker.io/library/debian:stretch" shape="ellipse"];
  "sha256:129f4718f84559601e8a7a877d034236c43de52e905663917873a1b4eba06f81" [label="/bin/sh -c apt-get update &&     apt-get install -y --no-install-recommends build-essential libffi-dev     libssl-dev python-dev python-minimal python-pip python-setuptools     python-virtualenv systemd &&     rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:ff7849864471157279d58a64b37d60a31e1397864792e5f0e397bd7762d372e2" [label="/bin/sh -c pip install enum34 ipaddress wheel &&     pip install ansible ansible-lint" shape="box"];
  "sha256:6c8ad48fa491da643d9769766f7d2e295305a4709725b6c94d3db1f2a8e1a066" [label="copy{src=/.ansible-lint, dest=/}" shape="note"];
  "sha256:6987762dd0e2d65986690f2511e61344a2a06d1c3e176257f58c724174a74203" [label="sha256:6987762dd0e2d65986690f2511e61344a2a06d1c3e176257f58c724174a74203" shape="plaintext"];
  "sha256:931a1c72c3e0943f8ae3bad2d6c2c0d04efc9031392f7574cafc331814fa690d" -> "sha256:129f4718f84559601e8a7a877d034236c43de52e905663917873a1b4eba06f81" [label=""];
  "sha256:129f4718f84559601e8a7a877d034236c43de52e905663917873a1b4eba06f81" -> "sha256:ff7849864471157279d58a64b37d60a31e1397864792e5f0e397bd7762d372e2" [label=""];
  "sha256:ff7849864471157279d58a64b37d60a31e1397864792e5f0e397bd7762d372e2" -> "sha256:6c8ad48fa491da643d9769766f7d2e295305a4709725b6c94d3db1f2a8e1a066" [label=""];
  "sha256:fd27345865c213dc0b44fe63c6010d7977acab3d71363c6d63095456f9840143" -> "sha256:6c8ad48fa491da643d9769766f7d2e295305a4709725b6c94d3db1f2a8e1a066" [label=""];
  "sha256:6c8ad48fa491da643d9769766f7d2e295305a4709725b6c94d3db1f2a8e1a066" -> "sha256:6987762dd0e2d65986690f2511e61344a2a06d1c3e176257f58c724174a74203" [label=""];
}

