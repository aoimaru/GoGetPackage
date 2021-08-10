[app/sources/252779548.Dockerfile]
digraph {
  "sha256:2beec29df4b343e0dbf7adb589a613b17f1c676e089b989521eed6d23c1421d8" [label="docker-image://docker.io/library/python:2.7" shape="ellipse"];
  "sha256:069be760e335c5ae125a7f83e7e34e330bfa1c67f4ef83e8e3be8644a98936d0" [label="/bin/sh -c apt-get update && apt-get install -y -qq python-numpy python-scipy python-matplotlib" shape="box"];
  "sha256:044c2f40c313652f802de0801d5eef00ad88409d03d5132cfbc39d56e2257468" [label="/bin/sh -c pip install numpy scipy" shape="box"];
  "sha256:a21d84884448bb515fb3d2781441487a5dad9ead5be27106e9e6964d84bb9902" [label="sha256:a21d84884448bb515fb3d2781441487a5dad9ead5be27106e9e6964d84bb9902" shape="plaintext"];
  "sha256:2beec29df4b343e0dbf7adb589a613b17f1c676e089b989521eed6d23c1421d8" -> "sha256:069be760e335c5ae125a7f83e7e34e330bfa1c67f4ef83e8e3be8644a98936d0" [label=""];
  "sha256:069be760e335c5ae125a7f83e7e34e330bfa1c67f4ef83e8e3be8644a98936d0" -> "sha256:044c2f40c313652f802de0801d5eef00ad88409d03d5132cfbc39d56e2257468" [label=""];
  "sha256:044c2f40c313652f802de0801d5eef00ad88409d03d5132cfbc39d56e2257468" -> "sha256:a21d84884448bb515fb3d2781441487a5dad9ead5be27106e9e6964d84bb9902" [label=""];
}

