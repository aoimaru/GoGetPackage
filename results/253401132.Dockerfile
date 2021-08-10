[app/sources/253401132.Dockerfile]
digraph {
  "sha256:0fa9d77ffba4c0cfb36bec29d2e0b02d36226b626b50f29355d5a97517be8e0b" [label="docker-image://docker.io/library/openjdk:8-jre-alpine@sha256:f362b165b870ef129cbe730f29065ff37399c0aa8bcab3e44b51c302938c9193" shape="ellipse"];
  "sha256:09ec9a0bc10bb5d3f93596c8eb19dba0cce8e71f9396e03cc68b488f032dfc98" [label="local://context" shape="ellipse"];
  "sha256:255b2794d3565667c7b92242b22908bc1b09eae2876a48eb30d41372d880e67c" [label="copy{src=/target/ad-1.0.0.jar, dest=/server.jar}" shape="note"];
  "sha256:ba4087ed2d0447617ed7885fbcc49a1eb484cf8f010178e5dba94a83a02e5861" [label="sha256:ba4087ed2d0447617ed7885fbcc49a1eb484cf8f010178e5dba94a83a02e5861" shape="plaintext"];
  "sha256:0fa9d77ffba4c0cfb36bec29d2e0b02d36226b626b50f29355d5a97517be8e0b" -> "sha256:255b2794d3565667c7b92242b22908bc1b09eae2876a48eb30d41372d880e67c" [label=""];
  "sha256:09ec9a0bc10bb5d3f93596c8eb19dba0cce8e71f9396e03cc68b488f032dfc98" -> "sha256:255b2794d3565667c7b92242b22908bc1b09eae2876a48eb30d41372d880e67c" [label=""];
  "sha256:255b2794d3565667c7b92242b22908bc1b09eae2876a48eb30d41372d880e67c" -> "sha256:ba4087ed2d0447617ed7885fbcc49a1eb484cf8f010178e5dba94a83a02e5861" [label=""];
}

