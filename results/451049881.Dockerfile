[app/sources/451049881.Dockerfile]
digraph {
  "sha256:60fea43a66540358f4773d11714f683e39adab0ff1adcdd2021fc27d20933008" [label="docker-image://docker.io/praekeltfoundation/python-base:latest" shape="ellipse"];
  "sha256:a89d6a43b9a2bcad1c0f2a45c3de1abbc48a3710e8414c8ee05827e2e016e149" [label="/bin/sh -c pip install vumi==$VUMI_VERSION" shape="box"];
  "sha256:33cf72e4195697579b014732deaf27768ce7718325c7d017d60a41a9e760f048" [label="local://context" shape="ellipse"];
  "sha256:2c1a4ea7fe530305475a93b9fa18000c208b408a2a463466ba1d7645638d2dd7" [label="copy{src=/vumi-entrypoint.sh, dest=/app/vumi-entrypoint.sh}" shape="note"];
  "sha256:68c8b10de8e0077847b8b8aa94d0157bab7ffe59e9dc52c53c18e7a0e5578f6a" [label="mkdir{path=/app}" shape="note"];
  "sha256:f720ce53b0842783cb4458f296c7ae2d2d9e68770d98f98c17436fa4e2e63680" [label="sha256:f720ce53b0842783cb4458f296c7ae2d2d9e68770d98f98c17436fa4e2e63680" shape="plaintext"];
  "sha256:60fea43a66540358f4773d11714f683e39adab0ff1adcdd2021fc27d20933008" -> "sha256:a89d6a43b9a2bcad1c0f2a45c3de1abbc48a3710e8414c8ee05827e2e016e149" [label=""];
  "sha256:a89d6a43b9a2bcad1c0f2a45c3de1abbc48a3710e8414c8ee05827e2e016e149" -> "sha256:2c1a4ea7fe530305475a93b9fa18000c208b408a2a463466ba1d7645638d2dd7" [label=""];
  "sha256:33cf72e4195697579b014732deaf27768ce7718325c7d017d60a41a9e760f048" -> "sha256:2c1a4ea7fe530305475a93b9fa18000c208b408a2a463466ba1d7645638d2dd7" [label=""];
  "sha256:2c1a4ea7fe530305475a93b9fa18000c208b408a2a463466ba1d7645638d2dd7" -> "sha256:68c8b10de8e0077847b8b8aa94d0157bab7ffe59e9dc52c53c18e7a0e5578f6a" [label=""];
  "sha256:68c8b10de8e0077847b8b8aa94d0157bab7ffe59e9dc52c53c18e7a0e5578f6a" -> "sha256:f720ce53b0842783cb4458f296c7ae2d2d9e68770d98f98c17436fa4e2e63680" [label=""];
}

