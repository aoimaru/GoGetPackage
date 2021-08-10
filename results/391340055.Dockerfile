[app/sources/391340055.Dockerfile]
digraph {
  "sha256:a7cf9e8d6a0880ae5b4a3643dd60e4e8d1f957b43d4bd5535a1dee4ee48da8e3" [label="docker-image://docker.io/cortexlabs/tf-base:latest" shape="ellipse"];
  "sha256:6b7c896e8ed1762217fe746e604dc25b43ff0433cfcccb63184001dac2e3979d" [label="local://context" shape="ellipse"];
  "sha256:da013d21885bffe1d078e7dc0fac6e86dfe967280e8930dc94a087530ce644e8" [label="copy{src=/pkg/workloads/lib/requirements.txt, dest=/src/lib/requirements.txt}" shape="note"];
  "sha256:0d1c20a14b64f1664f7d1f7ee2dfb68797b32340759bdd06170a402fed2235b4" [label="/bin/sh -c pip3 install -r /src/lib/requirements.txt &&     rm -rf /root/.cache/pip*" shape="box"];
  "sha256:ac484c65fc1ecd8700ea7398472764538364a625c8369a146c04be651fb30376" [label="copy{src=/pkg/workloads/consts.py, dest=/src/}" shape="note"];
  "sha256:04566c663615a8f1f0f38495da968377c905f39cbb6b422ac750872d672b749f" [label="copy{src=/pkg/workloads/lib, dest=/src/lib}" shape="note"];
  "sha256:943fff8f8e744b08cc93a4c8be72c9946341fd00aadb903d17f25f5610e35db1" [label="copy{src=/pkg/workloads/tf_train, dest=/src/tf_train}" shape="note"];
  "sha256:dae20f1ad65f06fe1936428faeb5cf6d13ed5c833f25bb69d54d04ddf06e6e60" [label="sha256:dae20f1ad65f06fe1936428faeb5cf6d13ed5c833f25bb69d54d04ddf06e6e60" shape="plaintext"];
  "sha256:a7cf9e8d6a0880ae5b4a3643dd60e4e8d1f957b43d4bd5535a1dee4ee48da8e3" -> "sha256:da013d21885bffe1d078e7dc0fac6e86dfe967280e8930dc94a087530ce644e8" [label=""];
  "sha256:6b7c896e8ed1762217fe746e604dc25b43ff0433cfcccb63184001dac2e3979d" -> "sha256:da013d21885bffe1d078e7dc0fac6e86dfe967280e8930dc94a087530ce644e8" [label=""];
  "sha256:da013d21885bffe1d078e7dc0fac6e86dfe967280e8930dc94a087530ce644e8" -> "sha256:0d1c20a14b64f1664f7d1f7ee2dfb68797b32340759bdd06170a402fed2235b4" [label=""];
  "sha256:0d1c20a14b64f1664f7d1f7ee2dfb68797b32340759bdd06170a402fed2235b4" -> "sha256:ac484c65fc1ecd8700ea7398472764538364a625c8369a146c04be651fb30376" [label=""];
  "sha256:6b7c896e8ed1762217fe746e604dc25b43ff0433cfcccb63184001dac2e3979d" -> "sha256:ac484c65fc1ecd8700ea7398472764538364a625c8369a146c04be651fb30376" [label=""];
  "sha256:ac484c65fc1ecd8700ea7398472764538364a625c8369a146c04be651fb30376" -> "sha256:04566c663615a8f1f0f38495da968377c905f39cbb6b422ac750872d672b749f" [label=""];
  "sha256:6b7c896e8ed1762217fe746e604dc25b43ff0433cfcccb63184001dac2e3979d" -> "sha256:04566c663615a8f1f0f38495da968377c905f39cbb6b422ac750872d672b749f" [label=""];
  "sha256:04566c663615a8f1f0f38495da968377c905f39cbb6b422ac750872d672b749f" -> "sha256:943fff8f8e744b08cc93a4c8be72c9946341fd00aadb903d17f25f5610e35db1" [label=""];
  "sha256:6b7c896e8ed1762217fe746e604dc25b43ff0433cfcccb63184001dac2e3979d" -> "sha256:943fff8f8e744b08cc93a4c8be72c9946341fd00aadb903d17f25f5610e35db1" [label=""];
  "sha256:943fff8f8e744b08cc93a4c8be72c9946341fd00aadb903d17f25f5610e35db1" -> "sha256:dae20f1ad65f06fe1936428faeb5cf6d13ed5c833f25bb69d54d04ddf06e6e60" [label=""];
}

