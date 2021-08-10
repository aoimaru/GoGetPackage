[app/sources/302910229.Dockerfile]
digraph {
  "sha256:db853c8afe548c048b0984d2817ae386da4fdf8bff8ec9016e2732f20df3290c" [label="docker-image://docker.io/jetbrains/teamcity-agent:latest" shape="ellipse"];
  "sha256:8b7ed8b585d4f38dbff8e4a2542f6244eeb0ad0b5283e312c64d1919c9764d79" [label="/bin/sh -c apt-get update && apt-get install -y \tphp-cli \tphp7.2-xml" shape="box"];
  "sha256:f67b927adf8c456e29684d5230498af4d542747b4aad190c76d84ab9d5dd9147" [label="sha256:f67b927adf8c456e29684d5230498af4d542747b4aad190c76d84ab9d5dd9147" shape="plaintext"];
  "sha256:db853c8afe548c048b0984d2817ae386da4fdf8bff8ec9016e2732f20df3290c" -> "sha256:8b7ed8b585d4f38dbff8e4a2542f6244eeb0ad0b5283e312c64d1919c9764d79" [label=""];
  "sha256:8b7ed8b585d4f38dbff8e4a2542f6244eeb0ad0b5283e312c64d1919c9764d79" -> "sha256:f67b927adf8c456e29684d5230498af4d542747b4aad190c76d84ab9d5dd9147" [label=""];
}

