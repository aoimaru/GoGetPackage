[app/sources/252777705.Dockerfile]
digraph {
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" [label="docker-image://docker.io/library/ubuntu:latest" shape="ellipse"];
  "sha256:d194a73a05b74bb19264e8d82b4b3bc96bfe516e44b171b711849b93376cceba" [label="/bin/sh -c apt-get update && apt-get upgrade -y" shape="box"];
  "sha256:0267523bbf7bb97431d002f35bfa59b9de4dbfdbe530bd2fba04b1f68549aadd" [label="/bin/sh -c apt-get install -y git python python-pip build-essential cmake" shape="box"];
  "sha256:2e49c2a3fa0d6e07d890e6c226131b859dd28e142a9861b01cf09eebf8f3f7e8" [label="/bin/sh -c pip install -q platformio" shape="box"];
  "sha256:7c9be4cb0a703e4e6ab5146063046b8166e9d1602bf9b49ef38407b9e274c283" [label="/bin/sh -c git clone https://github.com/uncrustify/uncrustify.git && cd uncrustify && mkdir build && cd build/ && cmake .. && cmake --build . && cp ./uncrustify /usr/bin/" shape="box"];
  "sha256:0f24a92dc6dfb5f69707984636b51dd8e0afcaf5c288d75d734f94a2fe68eef4" [label="sha256:0f24a92dc6dfb5f69707984636b51dd8e0afcaf5c288d75d734f94a2fe68eef4" shape="plaintext"];
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" -> "sha256:d194a73a05b74bb19264e8d82b4b3bc96bfe516e44b171b711849b93376cceba" [label=""];
  "sha256:d194a73a05b74bb19264e8d82b4b3bc96bfe516e44b171b711849b93376cceba" -> "sha256:0267523bbf7bb97431d002f35bfa59b9de4dbfdbe530bd2fba04b1f68549aadd" [label=""];
  "sha256:0267523bbf7bb97431d002f35bfa59b9de4dbfdbe530bd2fba04b1f68549aadd" -> "sha256:2e49c2a3fa0d6e07d890e6c226131b859dd28e142a9861b01cf09eebf8f3f7e8" [label=""];
  "sha256:2e49c2a3fa0d6e07d890e6c226131b859dd28e142a9861b01cf09eebf8f3f7e8" -> "sha256:7c9be4cb0a703e4e6ab5146063046b8166e9d1602bf9b49ef38407b9e274c283" [label=""];
  "sha256:7c9be4cb0a703e4e6ab5146063046b8166e9d1602bf9b49ef38407b9e274c283" -> "sha256:0f24a92dc6dfb5f69707984636b51dd8e0afcaf5c288d75d734f94a2fe68eef4" [label=""];
}

