[app/sources/386033536.Dockerfile]
digraph {
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" [label="docker-image://docker.io/library/alpine:latest" shape="ellipse"];
  "sha256:fc33b369ca51419866bbb510f1a19acb165578bb8861ca4fc08a4ed0f65dcec2" [label="/bin/sh -c mkdir /hello" shape="box"];
  "sha256:d9f728a02d4ad87ecafc2ab9fc1427dac59efcaee4d5b5cbe3ae1ad76786cf6e" [label="/bin/sh -c touch blah.txt" shape="box"];
  "sha256:5747ffa44dbae54511bd6e202df89e8b80c7f626676a999bb75b5894235c0e5a" [label="local://context" shape="ellipse"];
  "sha256:2b59cf2b70f12f9dd621ed4e9910f8b68de9158ac27b8670c2f78159f03213de" [label="copy{src=/non-existent, dest=/world/}" shape="note"];
  "sha256:355a128e3445f85c9430ba420451cd1ee032a65b68baeb26d1ab6cc89f9e0e1d" [label="sha256:355a128e3445f85c9430ba420451cd1ee032a65b68baeb26d1ab6cc89f9e0e1d" shape="plaintext"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" -> "sha256:fc33b369ca51419866bbb510f1a19acb165578bb8861ca4fc08a4ed0f65dcec2" [label=""];
  "sha256:fc33b369ca51419866bbb510f1a19acb165578bb8861ca4fc08a4ed0f65dcec2" -> "sha256:d9f728a02d4ad87ecafc2ab9fc1427dac59efcaee4d5b5cbe3ae1ad76786cf6e" [label=""];
  "sha256:d9f728a02d4ad87ecafc2ab9fc1427dac59efcaee4d5b5cbe3ae1ad76786cf6e" -> "sha256:2b59cf2b70f12f9dd621ed4e9910f8b68de9158ac27b8670c2f78159f03213de" [label=""];
  "sha256:5747ffa44dbae54511bd6e202df89e8b80c7f626676a999bb75b5894235c0e5a" -> "sha256:2b59cf2b70f12f9dd621ed4e9910f8b68de9158ac27b8670c2f78159f03213de" [label=""];
  "sha256:2b59cf2b70f12f9dd621ed4e9910f8b68de9158ac27b8670c2f78159f03213de" -> "sha256:355a128e3445f85c9430ba420451cd1ee032a65b68baeb26d1ab6cc89f9e0e1d" [label=""];
}

