[app/sources/320127776.Dockerfile]
digraph {
  "sha256:f7a62c3869fdd1070090663926a7d38aeea2633bb3a29a6958a7288846e6592f" [label="local://context" shape="ellipse"];
  "sha256:82b0ab03c43981bd408deb7b1ca062dc5dfd19197f06be715ff118e626d39630" [label="docker-image://docker.io/library/alpine:3.5" shape="ellipse"];
  "sha256:27df728657f1ddd94e7f08c2681da411d758329eb4fb84981d9e68cb1bea39d5" [label="/bin/sh -c apk add --no-cache openjdk8-jre=\"$RUNTIME_NATIVE_VERSION\"" shape="box"];
  "sha256:b1baf349386602c0efbe1685d745ec2d7bf3ebbc109dc97b8aac885b2db275ad" [label="copy{src=/build, dest=/opt/driver/bin}" shape="note"];
  "sha256:21d2e4e2949e4ed477eb57c0ac5571ee8e6667a43946510d8e1b6c056e27e0bb" [label="sha256:21d2e4e2949e4ed477eb57c0ac5571ee8e6667a43946510d8e1b6c056e27e0bb" shape="plaintext"];
  "sha256:82b0ab03c43981bd408deb7b1ca062dc5dfd19197f06be715ff118e626d39630" -> "sha256:27df728657f1ddd94e7f08c2681da411d758329eb4fb84981d9e68cb1bea39d5" [label=""];
  "sha256:27df728657f1ddd94e7f08c2681da411d758329eb4fb84981d9e68cb1bea39d5" -> "sha256:b1baf349386602c0efbe1685d745ec2d7bf3ebbc109dc97b8aac885b2db275ad" [label=""];
  "sha256:f7a62c3869fdd1070090663926a7d38aeea2633bb3a29a6958a7288846e6592f" -> "sha256:b1baf349386602c0efbe1685d745ec2d7bf3ebbc109dc97b8aac885b2db275ad" [label=""];
  "sha256:b1baf349386602c0efbe1685d745ec2d7bf3ebbc109dc97b8aac885b2db275ad" -> "sha256:21d2e4e2949e4ed477eb57c0ac5571ee8e6667a43946510d8e1b6c056e27e0bb" [label=""];
}

