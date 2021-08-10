[app/sources/284582660.Dockerfile]
digraph {
  "sha256:f51b7c7cef2ef65ffefa6d236274affe2a9ba29dea18f624f9a4bea95483c9ff" [label="docker-image://docker.io/library/ubuntu:14.04@sha256:43cb19408de1e0ecf3ba5b5372ec98978963d6d0be42d0ad825e77a3bd16b5f7" shape="ellipse"];
  "sha256:21fe2e2cb11f449bb222e7ed747b6933a823dfbccc8dffa366e8e6edbbe8d79b" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:43046e2cdd5f5556f6e59634236ba124cb903498b1681d06ca8a3f5efd396d35" [label="/bin/sh -c apt-get -y install redis-server redis-tools" shape="box"];
  "sha256:8029272218cbe32429277ee59c153a3cd190bc7111055f0327469f51c55c5cac" [label="sha256:8029272218cbe32429277ee59c153a3cd190bc7111055f0327469f51c55c5cac" shape="plaintext"];
  "sha256:f51b7c7cef2ef65ffefa6d236274affe2a9ba29dea18f624f9a4bea95483c9ff" -> "sha256:21fe2e2cb11f449bb222e7ed747b6933a823dfbccc8dffa366e8e6edbbe8d79b" [label=""];
  "sha256:21fe2e2cb11f449bb222e7ed747b6933a823dfbccc8dffa366e8e6edbbe8d79b" -> "sha256:43046e2cdd5f5556f6e59634236ba124cb903498b1681d06ca8a3f5efd396d35" [label=""];
  "sha256:43046e2cdd5f5556f6e59634236ba124cb903498b1681d06ca8a3f5efd396d35" -> "sha256:8029272218cbe32429277ee59c153a3cd190bc7111055f0327469f51c55c5cac" [label=""];
}

