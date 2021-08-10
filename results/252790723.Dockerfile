[app/sources/252790723.Dockerfile]
digraph {
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" [label="docker-image://docker.io/library/ubuntu:latest" shape="ellipse"];
  "sha256:bc9d951a8b1e06797b716b9fc2f5a6dce05761654d090f9681f914eaf9409bd3" [label="/bin/sh -c apt-get update && apt-get install -y python-pip python-dev libhdf5-dev python-pandas" shape="box"];
  "sha256:e7f020d1eb1f04c5f6a1f0688b17fc8b8e51a2c2f554edd67730de766dcde2dc" [label="local://context" shape="ellipse"];
  "sha256:5a960e7c8818a00cf82abebda37c3b4624dded6c3dcc8dd8011fc6a7a2d116a3" [label="copy{src=/requirements.txt, dest=/requirements.txt}" shape="note"];
  "sha256:5046318a85691c8248da9c46fc1ab95ebe54e59c135eae96eabf3617ccbce924" [label="/bin/sh -c pip install -r requirements.txt && rm /requirements.txt" shape="box"];
  "sha256:34ca77a819faa8777ed0e039d3fa5dc6b38c4373e188a96ab38351333df208de" [label="mkdir{path=/data}" shape="note"];
  "sha256:ee0f471afe7e73020c2c7aada56063f9bb78ca40b447c720ed2b8f7197cc426a" [label="sha256:ee0f471afe7e73020c2c7aada56063f9bb78ca40b447c720ed2b8f7197cc426a" shape="plaintext"];
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" -> "sha256:bc9d951a8b1e06797b716b9fc2f5a6dce05761654d090f9681f914eaf9409bd3" [label=""];
  "sha256:bc9d951a8b1e06797b716b9fc2f5a6dce05761654d090f9681f914eaf9409bd3" -> "sha256:5a960e7c8818a00cf82abebda37c3b4624dded6c3dcc8dd8011fc6a7a2d116a3" [label=""];
  "sha256:e7f020d1eb1f04c5f6a1f0688b17fc8b8e51a2c2f554edd67730de766dcde2dc" -> "sha256:5a960e7c8818a00cf82abebda37c3b4624dded6c3dcc8dd8011fc6a7a2d116a3" [label=""];
  "sha256:5a960e7c8818a00cf82abebda37c3b4624dded6c3dcc8dd8011fc6a7a2d116a3" -> "sha256:5046318a85691c8248da9c46fc1ab95ebe54e59c135eae96eabf3617ccbce924" [label=""];
  "sha256:5046318a85691c8248da9c46fc1ab95ebe54e59c135eae96eabf3617ccbce924" -> "sha256:34ca77a819faa8777ed0e039d3fa5dc6b38c4373e188a96ab38351333df208de" [label=""];
  "sha256:34ca77a819faa8777ed0e039d3fa5dc6b38c4373e188a96ab38351333df208de" -> "sha256:ee0f471afe7e73020c2c7aada56063f9bb78ca40b447c720ed2b8f7197cc426a" [label=""];
}

