[app/sources/251520124.Dockerfile]
digraph {
  "sha256:97584262ad12781fdb2d713c2ee02195bac6bc16c8f35e8e7c4049a29d39b57e" [label="local://context" shape="ellipse"];
  "sha256:d2ee5802ef4e66d369c54e82b95249fae39b2901680b3bf23f2a3f73eba58df0" [label="docker-image://docker.io/library/java:8" shape="ellipse"];
  "sha256:3a63bc44360169d8bc911ee3577eef9306547382fba9f967e3a4e15e5189c5bd" [label="copy{src=/user-service-1.0.jar, dest=/application.jar}" shape="note"];
  "sha256:8ce82a03093802713cc5fd14dcab4d44f1a97345c93aa1031362735be79d5f1e" [label="/bin/sh -c bash -c \"touch /application.jar\"" shape="box"];
  "sha256:508211fccf514fc3414787805e9c1e578f8582b744f220d7ee00bcf5a79cad7d" [label="sha256:508211fccf514fc3414787805e9c1e578f8582b744f220d7ee00bcf5a79cad7d" shape="plaintext"];
  "sha256:d2ee5802ef4e66d369c54e82b95249fae39b2901680b3bf23f2a3f73eba58df0" -> "sha256:3a63bc44360169d8bc911ee3577eef9306547382fba9f967e3a4e15e5189c5bd" [label=""];
  "sha256:97584262ad12781fdb2d713c2ee02195bac6bc16c8f35e8e7c4049a29d39b57e" -> "sha256:3a63bc44360169d8bc911ee3577eef9306547382fba9f967e3a4e15e5189c5bd" [label=""];
  "sha256:3a63bc44360169d8bc911ee3577eef9306547382fba9f967e3a4e15e5189c5bd" -> "sha256:8ce82a03093802713cc5fd14dcab4d44f1a97345c93aa1031362735be79d5f1e" [label=""];
  "sha256:8ce82a03093802713cc5fd14dcab4d44f1a97345c93aa1031362735be79d5f1e" -> "sha256:508211fccf514fc3414787805e9c1e578f8582b744f220d7ee00bcf5a79cad7d" [label=""];
}

