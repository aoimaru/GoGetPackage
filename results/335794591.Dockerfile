[app/sources/335794591.Dockerfile]
digraph {
  "sha256:afab75a5bc46ebf328641a866aa0a1a9d9c8749a6da006b505355baa0c5565ce" [label="docker-image://docker.io/library/ubuntu:bionic@sha256:7bd7a9ca99f868bf69c4b6212f64f2af8e243f97ba13abb3e641e03a7ceb59e8" shape="ellipse"];
  "sha256:fe7d3f908763d819537cb8a01c0ace3855e51aa85707c6740dcc95074a1dfbd2" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:2772fae3616d476d8f4e723fe16e72c15fee6faf65a469b102b4a8ba80c556f2" [label="/bin/sh -c apt-get install -y     trace-cmd" shape="box"];
  "sha256:1a4aaac8a0a2ef91569272a1f77a17343b25b8f6d6f7e3a43f15e2829ad86453" [label="sha256:1a4aaac8a0a2ef91569272a1f77a17343b25b8f6d6f7e3a43f15e2829ad86453" shape="plaintext"];
  "sha256:afab75a5bc46ebf328641a866aa0a1a9d9c8749a6da006b505355baa0c5565ce" -> "sha256:fe7d3f908763d819537cb8a01c0ace3855e51aa85707c6740dcc95074a1dfbd2" [label=""];
  "sha256:fe7d3f908763d819537cb8a01c0ace3855e51aa85707c6740dcc95074a1dfbd2" -> "sha256:2772fae3616d476d8f4e723fe16e72c15fee6faf65a469b102b4a8ba80c556f2" [label=""];
  "sha256:2772fae3616d476d8f4e723fe16e72c15fee6faf65a469b102b4a8ba80c556f2" -> "sha256:1a4aaac8a0a2ef91569272a1f77a17343b25b8f6d6f7e3a43f15e2829ad86453" [label=""];
}

