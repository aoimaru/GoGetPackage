[app/sources/241090061.Dockerfile]
digraph {
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:d85b94c23f2207314e65c2b65f8174fe8e9f9a171cdda392eb5b3a6093800fe1" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:0ebf35a1192eb5c9608bb8a4fe76b3b933e014ae6d352071e7446ea432e96338" [label="/bin/sh -c apt-get install -y --no-install-recommends     curl     libcurl4-openssl-dev     python     python-numpy     python-pip" shape="box"];
  "sha256:7246c331e3d34f3ec8c6b95184ddcf3e3e49f1ceb5e9ee9d404786095bce34cb" [label="/bin/sh -c curl -O https://dl.google.com/dl/cloudsdk/channels/rapid/install_google_cloud_sdk.bash" shape="box"];
  "sha256:53f201d8c9a2a5462e311213bc1d90257d26b619a1606270e94c423f5ca32455" [label="/bin/sh -c chmod +x install_google_cloud_sdk.bash" shape="box"];
  "sha256:d780acf87d5be168658adb57bc6a484b217c2a76c0ebc9aa20f0dff17610f458" [label="/bin/sh -c ./install_google_cloud_sdk.bash --disable-prompts --install-dir=/var/gcloud" shape="box"];
  "sha256:470cc06a6e0a059b967d4d5c1834381588213e0e955034b3abf01c4beb3ca6ad" [label="local://context" shape="ellipse"];
  "sha256:d1d8b794c2215f623fb9dfd0cf5ed954be261be0f88982c8f01416046ec1aa76" [label="copy{src=/tensorflow-*.whl, dest=/}" shape="note"];
  "sha256:ccf76f4509dc02eaaadacbb49552abbe2498b4b579dbfadb93734f83b8c72980" [label="/bin/sh -c pip install /tensorflow-*.whl" shape="box"];
  "sha256:94c48bd9e5f98f9de7776071d70f3eb2f89da6866e5821d1fa79a7afffc8fa32" [label="/bin/sh -c mkdir -p /gcs-smoke/python" shape="box"];
  "sha256:6bfc729a18f23571534ab8199cf0b44682b696c935d0dcb519305e3e64f1727c" [label="copy{src=/gcs_smoke_wrapper.sh, dest=/gcs-smoke/}" shape="note"];
  "sha256:69144c406cea4b2b93698ec27efcf6d8d4f8f1d118a51d39d142a11805151ddb" [label="copy{src=/python/gcs_smoke.py, dest=/gcs-smoke/python/}" shape="note"];
  "sha256:096c51f1bb9289eed57e4938b97fa6124d811fc84cb0d82627be61c41572dc10" [label="sha256:096c51f1bb9289eed57e4938b97fa6124d811fc84cb0d82627be61c41572dc10" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:d85b94c23f2207314e65c2b65f8174fe8e9f9a171cdda392eb5b3a6093800fe1" [label=""];
  "sha256:d85b94c23f2207314e65c2b65f8174fe8e9f9a171cdda392eb5b3a6093800fe1" -> "sha256:0ebf35a1192eb5c9608bb8a4fe76b3b933e014ae6d352071e7446ea432e96338" [label=""];
  "sha256:0ebf35a1192eb5c9608bb8a4fe76b3b933e014ae6d352071e7446ea432e96338" -> "sha256:7246c331e3d34f3ec8c6b95184ddcf3e3e49f1ceb5e9ee9d404786095bce34cb" [label=""];
  "sha256:7246c331e3d34f3ec8c6b95184ddcf3e3e49f1ceb5e9ee9d404786095bce34cb" -> "sha256:53f201d8c9a2a5462e311213bc1d90257d26b619a1606270e94c423f5ca32455" [label=""];
  "sha256:53f201d8c9a2a5462e311213bc1d90257d26b619a1606270e94c423f5ca32455" -> "sha256:d780acf87d5be168658adb57bc6a484b217c2a76c0ebc9aa20f0dff17610f458" [label=""];
  "sha256:d780acf87d5be168658adb57bc6a484b217c2a76c0ebc9aa20f0dff17610f458" -> "sha256:d1d8b794c2215f623fb9dfd0cf5ed954be261be0f88982c8f01416046ec1aa76" [label=""];
  "sha256:470cc06a6e0a059b967d4d5c1834381588213e0e955034b3abf01c4beb3ca6ad" -> "sha256:d1d8b794c2215f623fb9dfd0cf5ed954be261be0f88982c8f01416046ec1aa76" [label=""];
  "sha256:d1d8b794c2215f623fb9dfd0cf5ed954be261be0f88982c8f01416046ec1aa76" -> "sha256:ccf76f4509dc02eaaadacbb49552abbe2498b4b579dbfadb93734f83b8c72980" [label=""];
  "sha256:ccf76f4509dc02eaaadacbb49552abbe2498b4b579dbfadb93734f83b8c72980" -> "sha256:94c48bd9e5f98f9de7776071d70f3eb2f89da6866e5821d1fa79a7afffc8fa32" [label=""];
  "sha256:94c48bd9e5f98f9de7776071d70f3eb2f89da6866e5821d1fa79a7afffc8fa32" -> "sha256:6bfc729a18f23571534ab8199cf0b44682b696c935d0dcb519305e3e64f1727c" [label=""];
  "sha256:470cc06a6e0a059b967d4d5c1834381588213e0e955034b3abf01c4beb3ca6ad" -> "sha256:6bfc729a18f23571534ab8199cf0b44682b696c935d0dcb519305e3e64f1727c" [label=""];
  "sha256:6bfc729a18f23571534ab8199cf0b44682b696c935d0dcb519305e3e64f1727c" -> "sha256:69144c406cea4b2b93698ec27efcf6d8d4f8f1d118a51d39d142a11805151ddb" [label=""];
  "sha256:470cc06a6e0a059b967d4d5c1834381588213e0e955034b3abf01c4beb3ca6ad" -> "sha256:69144c406cea4b2b93698ec27efcf6d8d4f8f1d118a51d39d142a11805151ddb" [label=""];
  "sha256:69144c406cea4b2b93698ec27efcf6d8d4f8f1d118a51d39d142a11805151ddb" -> "sha256:096c51f1bb9289eed57e4938b97fa6124d811fc84cb0d82627be61c41572dc10" [label=""];
}

