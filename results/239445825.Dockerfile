[app/sources/239445825.Dockerfile]
digraph {
  "sha256:fbbc94f83167a450540264c9778fdff313cd82f1675466b65abfa6056b9ab9d0" [label="docker-image://docker.io/teracy/jenkins-dod:latest@sha256:065b756ed5e926366d16c5a20884dedbe807953efc1ca61592b199bf127890e7" shape="ellipse"];
  "sha256:35b107c97c100930b9ac65947d7377109c43ce71ebb73426e5da841a03920ea0" [label="/bin/sh -c groupadd -g $DOCKER_GROUP_ID docker && usermod -a -G docker jenkins" shape="box"];
  "sha256:52160fc188abf1d8860abcb4ec7ca8f9689180b85a7277524397fec004f5697f" [label="sha256:52160fc188abf1d8860abcb4ec7ca8f9689180b85a7277524397fec004f5697f" shape="plaintext"];
  "sha256:fbbc94f83167a450540264c9778fdff313cd82f1675466b65abfa6056b9ab9d0" -> "sha256:35b107c97c100930b9ac65947d7377109c43ce71ebb73426e5da841a03920ea0" [label=""];
  "sha256:35b107c97c100930b9ac65947d7377109c43ce71ebb73426e5da841a03920ea0" -> "sha256:52160fc188abf1d8860abcb4ec7ca8f9689180b85a7277524397fec004f5697f" [label=""];
}

