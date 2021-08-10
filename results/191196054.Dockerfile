[app/sources/191196054.Dockerfile]
digraph {
  "sha256:2beec29df4b343e0dbf7adb589a613b17f1c676e089b989521eed6d23c1421d8" [label="docker-image://docker.io/library/python:2.7" shape="ellipse"];
  "sha256:d3888b283514c6d322af5fd2c6e776d0a69729e59bc9eebb0e66b89641ae41d2" [label="/bin/sh -c pip install -U redshift-console==0.1.3" shape="box"];
  "sha256:abe637c46b4b5484c50d0bf0853a519b9fcec5ba8e331fe9e155edb076243717" [label="sha256:abe637c46b4b5484c50d0bf0853a519b9fcec5ba8e331fe9e155edb076243717" shape="plaintext"];
  "sha256:2beec29df4b343e0dbf7adb589a613b17f1c676e089b989521eed6d23c1421d8" -> "sha256:d3888b283514c6d322af5fd2c6e776d0a69729e59bc9eebb0e66b89641ae41d2" [label=""];
  "sha256:d3888b283514c6d322af5fd2c6e776d0a69729e59bc9eebb0e66b89641ae41d2" -> "sha256:abe637c46b4b5484c50d0bf0853a519b9fcec5ba8e331fe9e155edb076243717" [label=""];
}

