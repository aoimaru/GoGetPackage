[app/sources/251520113.Dockerfile]
digraph {
  "sha256:d2ee5802ef4e66d369c54e82b95249fae39b2901680b3bf23f2a3f73eba58df0" [label="docker-image://docker.io/library/java:8" shape="ellipse"];
  "sha256:a870a1195697e913b13f5be8465cf9c9bf056fd58155d112a0eb4826225c093c" [label="local://context" shape="ellipse"];
  "sha256:cd22a6b7fe1272104c5fc1d70a43248c14efd584692547e29e9e92a56793cfce" [label="copy{src=/task-service-1.0.jar, dest=/application.jar}" shape="note"];
  "sha256:b95708dba185075a82c305afedfcd3c73193ae64fc69890086ec1ff344dca860" [label="/bin/sh -c bash -c \"touch /application.jar\"" shape="box"];
  "sha256:389c2190eb493bfce779686c44a091d646287bc1c8700b5636c603f426601aa5" [label="sha256:389c2190eb493bfce779686c44a091d646287bc1c8700b5636c603f426601aa5" shape="plaintext"];
  "sha256:d2ee5802ef4e66d369c54e82b95249fae39b2901680b3bf23f2a3f73eba58df0" -> "sha256:cd22a6b7fe1272104c5fc1d70a43248c14efd584692547e29e9e92a56793cfce" [label=""];
  "sha256:a870a1195697e913b13f5be8465cf9c9bf056fd58155d112a0eb4826225c093c" -> "sha256:cd22a6b7fe1272104c5fc1d70a43248c14efd584692547e29e9e92a56793cfce" [label=""];
  "sha256:cd22a6b7fe1272104c5fc1d70a43248c14efd584692547e29e9e92a56793cfce" -> "sha256:b95708dba185075a82c305afedfcd3c73193ae64fc69890086ec1ff344dca860" [label=""];
  "sha256:b95708dba185075a82c305afedfcd3c73193ae64fc69890086ec1ff344dca860" -> "sha256:389c2190eb493bfce779686c44a091d646287bc1c8700b5636c603f426601aa5" [label=""];
}

