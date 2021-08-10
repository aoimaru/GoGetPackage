[app/sources/234209204.Dockerfile]
digraph {
  "sha256:62549b609c62be5d4a072c8b1697ba6e0f40e59bf6b340565f5132922031518b" [label="docker-image://docker.io/library/nginx:latest" shape="ellipse"];
  "sha256:583f01c1674849677f5e4d019b7791828e4cf14547d3bbf5f432d85e3828e853" [label="/bin/sh -c apt-get update -qq && apt-get -y install apache2-utils" shape="box"];
  "sha256:eebe1bfe021160647516cb3d1ff8c60adf654d61202117bf703b2fc460437740" [label="mkdir{path=/data/src}" shape="note"];
  "sha256:14af9316b69e1df9c5efb4d4aa65d4af99be25828e05e124ce96a6f79ea0c7fb" [label="/bin/sh -c mkdir log public" shape="box"];
  "sha256:df4e92a84bffff4e6e2241d9c4a1733d6a9334cec0c602fd954b636b53911783" [label="local://context" shape="ellipse"];
  "sha256:6be8ddfe75335a49f4ac48a336ca000dcea0da102905c59d3f4535658ae6ffda" [label="copy{src=/docker/nginx.conf, dest=/tmp/docker.nginx}" shape="note"];
  "sha256:a176762649bee3870e29334e0cedd628c09dcf1c379cb42008227227e3eb4c9b" [label="/bin/sh -c envsubst '$RAILS_ROOT' < /tmp/docker.nginx > /etc/nginx/conf.d/default.conf" shape="box"];
  "sha256:c724575865c9920e23d9ff256b2b19dd145ce71fa84856e3f255854bfb3197e2" [label="sha256:c724575865c9920e23d9ff256b2b19dd145ce71fa84856e3f255854bfb3197e2" shape="plaintext"];
  "sha256:62549b609c62be5d4a072c8b1697ba6e0f40e59bf6b340565f5132922031518b" -> "sha256:583f01c1674849677f5e4d019b7791828e4cf14547d3bbf5f432d85e3828e853" [label=""];
  "sha256:583f01c1674849677f5e4d019b7791828e4cf14547d3bbf5f432d85e3828e853" -> "sha256:eebe1bfe021160647516cb3d1ff8c60adf654d61202117bf703b2fc460437740" [label=""];
  "sha256:eebe1bfe021160647516cb3d1ff8c60adf654d61202117bf703b2fc460437740" -> "sha256:14af9316b69e1df9c5efb4d4aa65d4af99be25828e05e124ce96a6f79ea0c7fb" [label=""];
  "sha256:14af9316b69e1df9c5efb4d4aa65d4af99be25828e05e124ce96a6f79ea0c7fb" -> "sha256:6be8ddfe75335a49f4ac48a336ca000dcea0da102905c59d3f4535658ae6ffda" [label=""];
  "sha256:df4e92a84bffff4e6e2241d9c4a1733d6a9334cec0c602fd954b636b53911783" -> "sha256:6be8ddfe75335a49f4ac48a336ca000dcea0da102905c59d3f4535658ae6ffda" [label=""];
  "sha256:6be8ddfe75335a49f4ac48a336ca000dcea0da102905c59d3f4535658ae6ffda" -> "sha256:a176762649bee3870e29334e0cedd628c09dcf1c379cb42008227227e3eb4c9b" [label=""];
  "sha256:a176762649bee3870e29334e0cedd628c09dcf1c379cb42008227227e3eb4c9b" -> "sha256:c724575865c9920e23d9ff256b2b19dd145ce71fa84856e3f255854bfb3197e2" [label=""];
}

