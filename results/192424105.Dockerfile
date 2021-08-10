[app/sources/192424105.Dockerfile]
digraph {
  "sha256:931a1c72c3e0943f8ae3bad2d6c2c0d04efc9031392f7574cafc331814fa690d" [label="docker-image://docker.io/library/debian:stretch" shape="ellipse"];
  "sha256:a71d2d481d9bfe368bb14951669da154b8c3dfecbdbb9b43dbc5af21c85cd274" [label="/bin/sh -c apt-get update &&     apt-get install -y --no-install-recommends build-essential libffi-dev     libssl-dev python-dev python-minimal python-pip python-setuptools     python-virtualenv systemd" shape="box"];
  "sha256:8bca8d7e3b894d16279117cdee30d0919e55efd7f556061deb2e4f906e6018aa" [label="/bin/sh -c pip install enum34 ipaddress wheel &&     pip install ansible ansible-lint" shape="box"];
  "sha256:b162f8454cce607888a93cdf024b131079e69c7bd6ca6d21e0d8f63e11900e27" [label="local://context" shape="ellipse"];
  "sha256:332931f71a94554c891d8875174d0398495c32f72f9fec682a8804b24be56a50" [label="copy{src=/.ansible-lint, dest=/}" shape="note"];
  "sha256:269eb56f514832f4da4edd86387beaeb91766df60fe52ba504d30d8ed07a8d9e" [label="sha256:269eb56f514832f4da4edd86387beaeb91766df60fe52ba504d30d8ed07a8d9e" shape="plaintext"];
  "sha256:931a1c72c3e0943f8ae3bad2d6c2c0d04efc9031392f7574cafc331814fa690d" -> "sha256:a71d2d481d9bfe368bb14951669da154b8c3dfecbdbb9b43dbc5af21c85cd274" [label=""];
  "sha256:a71d2d481d9bfe368bb14951669da154b8c3dfecbdbb9b43dbc5af21c85cd274" -> "sha256:8bca8d7e3b894d16279117cdee30d0919e55efd7f556061deb2e4f906e6018aa" [label=""];
  "sha256:8bca8d7e3b894d16279117cdee30d0919e55efd7f556061deb2e4f906e6018aa" -> "sha256:332931f71a94554c891d8875174d0398495c32f72f9fec682a8804b24be56a50" [label=""];
  "sha256:b162f8454cce607888a93cdf024b131079e69c7bd6ca6d21e0d8f63e11900e27" -> "sha256:332931f71a94554c891d8875174d0398495c32f72f9fec682a8804b24be56a50" [label=""];
  "sha256:332931f71a94554c891d8875174d0398495c32f72f9fec682a8804b24be56a50" -> "sha256:269eb56f514832f4da4edd86387beaeb91766df60fe52ba504d30d8ed07a8d9e" [label=""];
}

