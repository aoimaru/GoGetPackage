[app/sources/192420406.Dockerfile]
digraph {
  "sha256:931a1c72c3e0943f8ae3bad2d6c2c0d04efc9031392f7574cafc331814fa690d" [label="docker-image://docker.io/library/debian:stretch" shape="ellipse"];
  "sha256:129f4718f84559601e8a7a877d034236c43de52e905663917873a1b4eba06f81" [label="/bin/sh -c apt-get update &&     apt-get install -y --no-install-recommends build-essential libffi-dev     libssl-dev python-dev python-minimal python-pip python-setuptools     python-virtualenv systemd &&     rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:ff7849864471157279d58a64b37d60a31e1397864792e5f0e397bd7762d372e2" [label="/bin/sh -c pip install enum34 ipaddress wheel &&     pip install ansible ansible-lint" shape="box"];
  "sha256:d9c5559ef3ac1449273b7a09e293b9d48e8e3f22cb2c5395e0c5350cfe06014b" [label="local://context" shape="ellipse"];
  "sha256:9f85628e57402a5f0ebd508b83830be6ac1da301325d66e3783356e43cd64643" [label="copy{src=/.ansible-lint, dest=/}" shape="note"];
  "sha256:c9548461e8b8e05ac58ed2a4d72d4f2b4ac8b04e0d8d94f77ae648e423ec3ce2" [label="sha256:c9548461e8b8e05ac58ed2a4d72d4f2b4ac8b04e0d8d94f77ae648e423ec3ce2" shape="plaintext"];
  "sha256:931a1c72c3e0943f8ae3bad2d6c2c0d04efc9031392f7574cafc331814fa690d" -> "sha256:129f4718f84559601e8a7a877d034236c43de52e905663917873a1b4eba06f81" [label=""];
  "sha256:129f4718f84559601e8a7a877d034236c43de52e905663917873a1b4eba06f81" -> "sha256:ff7849864471157279d58a64b37d60a31e1397864792e5f0e397bd7762d372e2" [label=""];
  "sha256:ff7849864471157279d58a64b37d60a31e1397864792e5f0e397bd7762d372e2" -> "sha256:9f85628e57402a5f0ebd508b83830be6ac1da301325d66e3783356e43cd64643" [label=""];
  "sha256:d9c5559ef3ac1449273b7a09e293b9d48e8e3f22cb2c5395e0c5350cfe06014b" -> "sha256:9f85628e57402a5f0ebd508b83830be6ac1da301325d66e3783356e43cd64643" [label=""];
  "sha256:9f85628e57402a5f0ebd508b83830be6ac1da301325d66e3783356e43cd64643" -> "sha256:c9548461e8b8e05ac58ed2a4d72d4f2b4ac8b04e0d8d94f77ae648e423ec3ce2" [label=""];
}

