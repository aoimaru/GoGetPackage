[app/sources/325250444.Dockerfile]
digraph {
  "sha256:2beec29df4b343e0dbf7adb589a613b17f1c676e089b989521eed6d23c1421d8" [label="docker-image://docker.io/library/python:2.7" shape="ellipse"];
  "sha256:03b5cdc0d5ab0972d79896013e57357f5776619a68bb570ff25c7742069f54bb" [label="/bin/sh -c set -ex;     apt-get update;     apt-get -y -qq install postgresql redis-tools" shape="box"];
  "sha256:01ed29f5e3c0f0085b980577796861046a2e20c6ae9afd220b93b447d61b9870" [label="local://context" shape="ellipse"];
  "sha256:acf97c22b2a055adb4034292d1664477e0f19601df867c5b878dcbc76c17e959" [label="copy{src=/, dest=/app}" shape="note"];
  "sha256:c6e731047d5f1d962f2e9eb9af22c29f21bbc612e9781407fbf4c708c94b6d20" [label="mkdir{path=/app}" shape="note"];
  "sha256:7cd11af813a9c36831170009ec2f32f579f3c03f57e57cb94b00d9518738395d" [label="/bin/sh -c pip install -r requirements.txt" shape="box"];
  "sha256:4a528b85922946b61f92f951e428505cf1cef8ead80081d6cb3ef79567355601" [label="sha256:4a528b85922946b61f92f951e428505cf1cef8ead80081d6cb3ef79567355601" shape="plaintext"];
  "sha256:2beec29df4b343e0dbf7adb589a613b17f1c676e089b989521eed6d23c1421d8" -> "sha256:03b5cdc0d5ab0972d79896013e57357f5776619a68bb570ff25c7742069f54bb" [label=""];
  "sha256:03b5cdc0d5ab0972d79896013e57357f5776619a68bb570ff25c7742069f54bb" -> "sha256:acf97c22b2a055adb4034292d1664477e0f19601df867c5b878dcbc76c17e959" [label=""];
  "sha256:01ed29f5e3c0f0085b980577796861046a2e20c6ae9afd220b93b447d61b9870" -> "sha256:acf97c22b2a055adb4034292d1664477e0f19601df867c5b878dcbc76c17e959" [label=""];
  "sha256:acf97c22b2a055adb4034292d1664477e0f19601df867c5b878dcbc76c17e959" -> "sha256:c6e731047d5f1d962f2e9eb9af22c29f21bbc612e9781407fbf4c708c94b6d20" [label=""];
  "sha256:c6e731047d5f1d962f2e9eb9af22c29f21bbc612e9781407fbf4c708c94b6d20" -> "sha256:7cd11af813a9c36831170009ec2f32f579f3c03f57e57cb94b00d9518738395d" [label=""];
  "sha256:7cd11af813a9c36831170009ec2f32f579f3c03f57e57cb94b00d9518738395d" -> "sha256:4a528b85922946b61f92f951e428505cf1cef8ead80081d6cb3ef79567355601" [label=""];
}

