[app/sources/287308881.Dockerfile]
digraph {
  "sha256:b3ad7f78eb5344674aa86c5f248cc19b26f9e11f297398bf7ba8c97ee4383278" [label="docker-image://docker.io/library/python:alpine" shape="ellipse"];
  "sha256:4b1d51bbbcfada57bbe0efdd86ff6ae3bc46c68ff8e1d661f6409e605b8e8b71" [label="/bin/sh -c pip install Flask" shape="box"];
  "sha256:f7cd6a55b022cd1dd223fe562a19da9dd82618f06f5399a7feec0afe0e3fa70b" [label="local://context" shape="ellipse"];
  "sha256:6a73a393d8f2bc7c14b51965a9edefab8c74bd2e4bb065727a5e6376c15ca8e4" [label="copy{src=/rng.py, dest=/}" shape="note"];
  "sha256:8f03f220c9f2b61d598ea8f163bf994dc69ee2fc3115590c700d818afe6468fe" [label="sha256:8f03f220c9f2b61d598ea8f163bf994dc69ee2fc3115590c700d818afe6468fe" shape="plaintext"];
  "sha256:b3ad7f78eb5344674aa86c5f248cc19b26f9e11f297398bf7ba8c97ee4383278" -> "sha256:4b1d51bbbcfada57bbe0efdd86ff6ae3bc46c68ff8e1d661f6409e605b8e8b71" [label=""];
  "sha256:4b1d51bbbcfada57bbe0efdd86ff6ae3bc46c68ff8e1d661f6409e605b8e8b71" -> "sha256:6a73a393d8f2bc7c14b51965a9edefab8c74bd2e4bb065727a5e6376c15ca8e4" [label=""];
  "sha256:f7cd6a55b022cd1dd223fe562a19da9dd82618f06f5399a7feec0afe0e3fa70b" -> "sha256:6a73a393d8f2bc7c14b51965a9edefab8c74bd2e4bb065727a5e6376c15ca8e4" [label=""];
  "sha256:6a73a393d8f2bc7c14b51965a9edefab8c74bd2e4bb065727a5e6376c15ca8e4" -> "sha256:8f03f220c9f2b61d598ea8f163bf994dc69ee2fc3115590c700d818afe6468fe" [label=""];
}

