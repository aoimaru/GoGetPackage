[app/sources/366014257.Dockerfile]
digraph {
  "sha256:931a1c72c3e0943f8ae3bad2d6c2c0d04efc9031392f7574cafc331814fa690d" [label="docker-image://docker.io/library/debian:stretch" shape="ellipse"];
  "sha256:129f4718f84559601e8a7a877d034236c43de52e905663917873a1b4eba06f81" [label="/bin/sh -c apt-get update &&     apt-get install -y --no-install-recommends build-essential libffi-dev     libssl-dev python-dev python-minimal python-pip python-setuptools     python-virtualenv systemd &&     rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:ff7849864471157279d58a64b37d60a31e1397864792e5f0e397bd7762d372e2" [label="/bin/sh -c pip install enum34 ipaddress wheel &&     pip install ansible ansible-lint" shape="box"];
  "sha256:3e35e6db6b93f72998795a1bc1e3de4106737c1e1a023de444421ac1822bd133" [label="local://context" shape="ellipse"];
  "sha256:f94101a5688fe83c9ef18ba7dfcb2372801251da875d5807bc22c765aafa8946" [label="copy{src=/.ansible-lint, dest=/}" shape="note"];
  "sha256:904771903cfea4a9b7faa08264fca687bd4957c1c0b9b3c26b6a0982d4b08c50" [label="sha256:904771903cfea4a9b7faa08264fca687bd4957c1c0b9b3c26b6a0982d4b08c50" shape="plaintext"];
  "sha256:931a1c72c3e0943f8ae3bad2d6c2c0d04efc9031392f7574cafc331814fa690d" -> "sha256:129f4718f84559601e8a7a877d034236c43de52e905663917873a1b4eba06f81" [label=""];
  "sha256:129f4718f84559601e8a7a877d034236c43de52e905663917873a1b4eba06f81" -> "sha256:ff7849864471157279d58a64b37d60a31e1397864792e5f0e397bd7762d372e2" [label=""];
  "sha256:ff7849864471157279d58a64b37d60a31e1397864792e5f0e397bd7762d372e2" -> "sha256:f94101a5688fe83c9ef18ba7dfcb2372801251da875d5807bc22c765aafa8946" [label=""];
  "sha256:3e35e6db6b93f72998795a1bc1e3de4106737c1e1a023de444421ac1822bd133" -> "sha256:f94101a5688fe83c9ef18ba7dfcb2372801251da875d5807bc22c765aafa8946" [label=""];
  "sha256:f94101a5688fe83c9ef18ba7dfcb2372801251da875d5807bc22c765aafa8946" -> "sha256:904771903cfea4a9b7faa08264fca687bd4957c1c0b9b3c26b6a0982d4b08c50" [label=""];
}

