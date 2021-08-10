[app/sources/392426619.Dockerfile]
digraph {
  "sha256:89a38055f0f508abf681fce8ae03ec7fda127c03a87c3d248d748517174b16c6" [label="docker-image://docker.io/library/python:3.7.2" shape="ellipse"];
  "sha256:cf4f782078fa6c713ec8cc6beb0f5349d71f5bf201d221c72046a1c5f67fc35b" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:ff871811591331f5ac374a80d29d70e52bd33cbc1168db40938075154b245e5b" [label="local://context" shape="ellipse"];
  "sha256:8b714dd70b8d69f76a92b019e49fcd55d5d4b5306a642ca36b14a69a087861ea" [label="copy{src=/requirements.txt, dest=/usr/src/app/},copy{src=/server.py, dest=/usr/src/app/}" shape="note"];
  "sha256:9ee1e2b386219e1237c687035f78dcf18456192f98663c9e914ce6c7d5337e4a" [label="/bin/sh -c pip install --no-cache-dir -r requirements.txt" shape="box"];
  "sha256:2ab55ea3279a069a63c5202b49fc946f2cb0a6ca33c66e4c85170558363fa377" [label="sha256:2ab55ea3279a069a63c5202b49fc946f2cb0a6ca33c66e4c85170558363fa377" shape="plaintext"];
  "sha256:89a38055f0f508abf681fce8ae03ec7fda127c03a87c3d248d748517174b16c6" -> "sha256:cf4f782078fa6c713ec8cc6beb0f5349d71f5bf201d221c72046a1c5f67fc35b" [label=""];
  "sha256:cf4f782078fa6c713ec8cc6beb0f5349d71f5bf201d221c72046a1c5f67fc35b" -> "sha256:8b714dd70b8d69f76a92b019e49fcd55d5d4b5306a642ca36b14a69a087861ea" [label=""];
  "sha256:ff871811591331f5ac374a80d29d70e52bd33cbc1168db40938075154b245e5b" -> "sha256:8b714dd70b8d69f76a92b019e49fcd55d5d4b5306a642ca36b14a69a087861ea" [label=""];
  "sha256:8b714dd70b8d69f76a92b019e49fcd55d5d4b5306a642ca36b14a69a087861ea" -> "sha256:9ee1e2b386219e1237c687035f78dcf18456192f98663c9e914ce6c7d5337e4a" [label=""];
  "sha256:9ee1e2b386219e1237c687035f78dcf18456192f98663c9e914ce6c7d5337e4a" -> "sha256:2ab55ea3279a069a63c5202b49fc946f2cb0a6ca33c66e4c85170558363fa377" [label=""];
}

