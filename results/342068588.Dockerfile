[app/sources/342068588.Dockerfile]
digraph {
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" [label="docker-image://docker.io/library/python:2.7.13" shape="ellipse"];
  "sha256:4a25cfdeba793e63771530bc207be4882c1138399ecc91de30b2216b844fa86e" [label="local://context" shape="ellipse"];
  "sha256:c92f5b390b5fd0a28df448b5d9f87690b5f763525bff7ad042a6445bdff9966a" [label="copy{src=/snippet.py, dest=/snippet.py}" shape="note"];
  "sha256:032ba057eb8e0009225a121d0697703842f1cc33168cf956bef096ff83aa3fef" [label="pip install ui" shape="box"];
  "sha256:acf3071ffc30a236c9b00e8de226045124d03954b441a7029aa827d2b6c783de" [label="sha256:acf3071ffc30a236c9b00e8de226045124d03954b441a7029aa827d2b6c783de" shape="plaintext"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" -> "sha256:c92f5b390b5fd0a28df448b5d9f87690b5f763525bff7ad042a6445bdff9966a" [label=""];
  "sha256:4a25cfdeba793e63771530bc207be4882c1138399ecc91de30b2216b844fa86e" -> "sha256:c92f5b390b5fd0a28df448b5d9f87690b5f763525bff7ad042a6445bdff9966a" [label=""];
  "sha256:c92f5b390b5fd0a28df448b5d9f87690b5f763525bff7ad042a6445bdff9966a" -> "sha256:032ba057eb8e0009225a121d0697703842f1cc33168cf956bef096ff83aa3fef" [label=""];
  "sha256:032ba057eb8e0009225a121d0697703842f1cc33168cf956bef096ff83aa3fef" -> "sha256:acf3071ffc30a236c9b00e8de226045124d03954b441a7029aa827d2b6c783de" [label=""];
}

