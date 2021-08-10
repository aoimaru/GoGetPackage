[app/sources/295697251.Dockerfile]
digraph {
  "sha256:0bbe7a7f775257c810ebcd36361326abae8c24523729fefbcbc748474cfc163b" [label="docker-image://docker.io/library/python:3.6" shape="ellipse"];
  "sha256:67e6a0f38f876be79cd343886290fa844c777ef2c11cc695ec4ba351bcff6b1b" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:7f35e5743e6c812ce0d82db82c54c11c9c2473ad4875935bf331a01a28d4c646" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends libgeos-dev" shape="box"];
  "sha256:3581e04daf68ea9b4cd64f8486430b96c92f82a6d9dda2996aca79e2f4704509" [label="local://context" shape="ellipse"];
  "sha256:3dbadb28c3d744a3ad2664390a26419e344b557f31a8f95cfffcaa5bc28622be" [label="copy{src=/requirements.txt, dest=/usr/src/app/}" shape="note"];
  "sha256:15280bc983c097e9c353580cc857f7bb82854b0ecd8e79375b383cb2f3b74c6a" [label="copy{src=/optional-requirements.txt, dest=/usr/src/app/}" shape="note"];
  "sha256:0015a2e9b3793376f3b469a5186f0b052ebb6835076237b1d3ecd0011fa2f234" [label="/bin/sh -c pip3 install --no-cache-dir -r requirements.txt" shape="box"];
  "sha256:616f5d255c6b39b4bc754a55a511e68520a5c67085718c8bbeecfa41d07ef9ff" [label="/bin/sh -c pip3 install --no-cache-dir -r optional-requirements.txt" shape="box"];
  "sha256:301f3ca6edcc8ae1c3fe39f4cf7122d784e116719167dd9ca38cb0a4a2fd6074" [label="copy{src=/, dest=/usr/src/app/}" shape="note"];
  "sha256:406b1064d1679dd6730dd5ff72bbd1166ff7885685cb4bed9e7770313d1b8068" [label="sha256:406b1064d1679dd6730dd5ff72bbd1166ff7885685cb4bed9e7770313d1b8068" shape="plaintext"];
  "sha256:0bbe7a7f775257c810ebcd36361326abae8c24523729fefbcbc748474cfc163b" -> "sha256:67e6a0f38f876be79cd343886290fa844c777ef2c11cc695ec4ba351bcff6b1b" [label=""];
  "sha256:67e6a0f38f876be79cd343886290fa844c777ef2c11cc695ec4ba351bcff6b1b" -> "sha256:7f35e5743e6c812ce0d82db82c54c11c9c2473ad4875935bf331a01a28d4c646" [label=""];
  "sha256:7f35e5743e6c812ce0d82db82c54c11c9c2473ad4875935bf331a01a28d4c646" -> "sha256:3dbadb28c3d744a3ad2664390a26419e344b557f31a8f95cfffcaa5bc28622be" [label=""];
  "sha256:3581e04daf68ea9b4cd64f8486430b96c92f82a6d9dda2996aca79e2f4704509" -> "sha256:3dbadb28c3d744a3ad2664390a26419e344b557f31a8f95cfffcaa5bc28622be" [label=""];
  "sha256:3dbadb28c3d744a3ad2664390a26419e344b557f31a8f95cfffcaa5bc28622be" -> "sha256:15280bc983c097e9c353580cc857f7bb82854b0ecd8e79375b383cb2f3b74c6a" [label=""];
  "sha256:3581e04daf68ea9b4cd64f8486430b96c92f82a6d9dda2996aca79e2f4704509" -> "sha256:15280bc983c097e9c353580cc857f7bb82854b0ecd8e79375b383cb2f3b74c6a" [label=""];
  "sha256:15280bc983c097e9c353580cc857f7bb82854b0ecd8e79375b383cb2f3b74c6a" -> "sha256:0015a2e9b3793376f3b469a5186f0b052ebb6835076237b1d3ecd0011fa2f234" [label=""];
  "sha256:0015a2e9b3793376f3b469a5186f0b052ebb6835076237b1d3ecd0011fa2f234" -> "sha256:616f5d255c6b39b4bc754a55a511e68520a5c67085718c8bbeecfa41d07ef9ff" [label=""];
  "sha256:616f5d255c6b39b4bc754a55a511e68520a5c67085718c8bbeecfa41d07ef9ff" -> "sha256:301f3ca6edcc8ae1c3fe39f4cf7122d784e116719167dd9ca38cb0a4a2fd6074" [label=""];
  "sha256:3581e04daf68ea9b4cd64f8486430b96c92f82a6d9dda2996aca79e2f4704509" -> "sha256:301f3ca6edcc8ae1c3fe39f4cf7122d784e116719167dd9ca38cb0a4a2fd6074" [label=""];
  "sha256:301f3ca6edcc8ae1c3fe39f4cf7122d784e116719167dd9ca38cb0a4a2fd6074" -> "sha256:406b1064d1679dd6730dd5ff72bbd1166ff7885685cb4bed9e7770313d1b8068" [label=""];
}

