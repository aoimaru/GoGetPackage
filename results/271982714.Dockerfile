[app/sources/271982714.Dockerfile]
digraph {
  "sha256:5ff8c03cd51d062d2ebc732776229173168d10b015f8445ed696cd282e09ea34" [label="docker-image://docker.io/ucbjey/risecamp2018-base:2b580e66f1f7" shape="ellipse"];
  "sha256:c7fe7322c2369e639d17bbf88ee52bd81521780bfc5b95ea412ac878769cf6d8" [label="local://context" shape="ellipse"];
  "sha256:f0ef7e9ef94bfb3fe33e85163069ff21285e387ea9839a4aa88e7fb6cd3c48a9" [label="copy{src=/init-world.sh, dest=/usr/local/bin/start-notebook.d}" shape="note"];
  "sha256:52b8b55ed192def432eb07902d57b88345a1d95c41d253805fece3b39fcf7c55" [label="/bin/sh -c git clone https://github.com/pywren/pywren.git /home/$NB_USER/pywren" shape="box"];
  "sha256:56aa33aa66c11bbee38b4fb760a49a85a75c7c0f46e0310351eca83b7d144541" [label="/bin/sh -c pip install -e /home/$NB_USER/pywren" shape="box"];
  "sha256:9844196e703365b9f415be1df7df9db061432653bc7b2f462588cdad77117363" [label="/bin/sh -c mkdir -p /home/$NB_USER/.aws" shape="box"];
  "sha256:4f8033e47dec7b5ecea6e67df646dfd5e840159c4d1b76424fa33f4618413449" [label="copy{src=/tutorial, dest=/home/}" shape="note"];
  "sha256:2580b45fca6320e9e7652959760c80e40b20bbf720f6729c794738ac5656c139" [label="copy{src=/nginx.conf, dest=/etc/nginx/sites-enabled/default}" shape="note"];
  "sha256:5512ae62a3059ae97ceb34f09b3af1dcbacc7795e76be62d3ecc924f8953db2b" [label="sha256:5512ae62a3059ae97ceb34f09b3af1dcbacc7795e76be62d3ecc924f8953db2b" shape="plaintext"];
  "sha256:5ff8c03cd51d062d2ebc732776229173168d10b015f8445ed696cd282e09ea34" -> "sha256:f0ef7e9ef94bfb3fe33e85163069ff21285e387ea9839a4aa88e7fb6cd3c48a9" [label=""];
  "sha256:c7fe7322c2369e639d17bbf88ee52bd81521780bfc5b95ea412ac878769cf6d8" -> "sha256:f0ef7e9ef94bfb3fe33e85163069ff21285e387ea9839a4aa88e7fb6cd3c48a9" [label=""];
  "sha256:f0ef7e9ef94bfb3fe33e85163069ff21285e387ea9839a4aa88e7fb6cd3c48a9" -> "sha256:52b8b55ed192def432eb07902d57b88345a1d95c41d253805fece3b39fcf7c55" [label=""];
  "sha256:52b8b55ed192def432eb07902d57b88345a1d95c41d253805fece3b39fcf7c55" -> "sha256:56aa33aa66c11bbee38b4fb760a49a85a75c7c0f46e0310351eca83b7d144541" [label=""];
  "sha256:56aa33aa66c11bbee38b4fb760a49a85a75c7c0f46e0310351eca83b7d144541" -> "sha256:9844196e703365b9f415be1df7df9db061432653bc7b2f462588cdad77117363" [label=""];
  "sha256:9844196e703365b9f415be1df7df9db061432653bc7b2f462588cdad77117363" -> "sha256:4f8033e47dec7b5ecea6e67df646dfd5e840159c4d1b76424fa33f4618413449" [label=""];
  "sha256:c7fe7322c2369e639d17bbf88ee52bd81521780bfc5b95ea412ac878769cf6d8" -> "sha256:4f8033e47dec7b5ecea6e67df646dfd5e840159c4d1b76424fa33f4618413449" [label=""];
  "sha256:4f8033e47dec7b5ecea6e67df646dfd5e840159c4d1b76424fa33f4618413449" -> "sha256:2580b45fca6320e9e7652959760c80e40b20bbf720f6729c794738ac5656c139" [label=""];
  "sha256:c7fe7322c2369e639d17bbf88ee52bd81521780bfc5b95ea412ac878769cf6d8" -> "sha256:2580b45fca6320e9e7652959760c80e40b20bbf720f6729c794738ac5656c139" [label=""];
  "sha256:2580b45fca6320e9e7652959760c80e40b20bbf720f6729c794738ac5656c139" -> "sha256:5512ae62a3059ae97ceb34f09b3af1dcbacc7795e76be62d3ecc924f8953db2b" [label=""];
}

