[app/sources/181503589.Dockerfile]
digraph {
  "sha256:4530882d321e760e5e25d5b2a3fa86274678c0cd51fb182037c54497bddc7847" [label="docker-image://docker.io/library/golang:alpine" shape="ellipse"];
  "sha256:aa82503ddd95b0d815f3d4cdfff34f19f1fc5990c99529c89875f37465026d83" [label="/bin/sh -c apk add --no-cache git" shape="box"];
  "sha256:856fe5dbde6612105782eb12808964f3dd2b597b68868ac660cbc11012533555" [label="/bin/sh -c mkdir -p /var/app" shape="box"];
  "sha256:47c96c71aeb7e3e29b7aff8518dbb7555f78c3e23e2eb4d0280f805f8f35e5eb" [label="mkdir{path=/var/app}" shape="note"];
  "sha256:870e379401bfb5f9db5f823de0f086c5dfd83ab3c5330e4d47d38c429d503c69" [label="local://context" shape="ellipse"];
  "sha256:578ae62d029ba7f2382c0450710f55970bba2d8461dbab004a10afdb52361e99" [label="copy{src=/main.go, dest=/var/app}" shape="note"];
  "sha256:c2401e2538956c7320c550c667c3fe9e221c85acd041b57297f136efcb05ae56" [label="/bin/sh -c go get github.com/arbovm/levenshtein" shape="box"];
  "sha256:c080ba1987fc70c43fc2f319c1af26ba8b3ae710a9a4992df643f0754ac5b4fe" [label="sha256:c080ba1987fc70c43fc2f319c1af26ba8b3ae710a9a4992df643f0754ac5b4fe" shape="plaintext"];
  "sha256:4530882d321e760e5e25d5b2a3fa86274678c0cd51fb182037c54497bddc7847" -> "sha256:aa82503ddd95b0d815f3d4cdfff34f19f1fc5990c99529c89875f37465026d83" [label=""];
  "sha256:aa82503ddd95b0d815f3d4cdfff34f19f1fc5990c99529c89875f37465026d83" -> "sha256:856fe5dbde6612105782eb12808964f3dd2b597b68868ac660cbc11012533555" [label=""];
  "sha256:856fe5dbde6612105782eb12808964f3dd2b597b68868ac660cbc11012533555" -> "sha256:47c96c71aeb7e3e29b7aff8518dbb7555f78c3e23e2eb4d0280f805f8f35e5eb" [label=""];
  "sha256:47c96c71aeb7e3e29b7aff8518dbb7555f78c3e23e2eb4d0280f805f8f35e5eb" -> "sha256:578ae62d029ba7f2382c0450710f55970bba2d8461dbab004a10afdb52361e99" [label=""];
  "sha256:870e379401bfb5f9db5f823de0f086c5dfd83ab3c5330e4d47d38c429d503c69" -> "sha256:578ae62d029ba7f2382c0450710f55970bba2d8461dbab004a10afdb52361e99" [label=""];
  "sha256:578ae62d029ba7f2382c0450710f55970bba2d8461dbab004a10afdb52361e99" -> "sha256:c2401e2538956c7320c550c667c3fe9e221c85acd041b57297f136efcb05ae56" [label=""];
  "sha256:c2401e2538956c7320c550c667c3fe9e221c85acd041b57297f136efcb05ae56" -> "sha256:c080ba1987fc70c43fc2f319c1af26ba8b3ae710a9a4992df643f0754ac5b4fe" [label=""];
}

