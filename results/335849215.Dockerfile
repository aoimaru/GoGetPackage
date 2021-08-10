[app/sources/335849215.Dockerfile]
digraph {
  "sha256:9568871d58fb60d7160816f20a30950f23865cd373944bf7c3c620368d54bd84" [label="local://context" shape="ellipse"];
  "sha256:62549b609c62be5d4a072c8b1697ba6e0f40e59bf6b340565f5132922031518b" [label="docker-image://docker.io/library/nginx:latest" shape="ellipse"];
  "sha256:aeaf11e77a9bff3ea5dafcd40a39f6df32e04c7965af366ace703bc8fd3c808d" [label="copy{src=/nginx.conf, dest=/etc/nginx/conf.d/default.conf}" shape="note"];
  "sha256:2529d7708d993a521ce7ff99879a9ae4a4443d051abf915ac642e39f9664fdae" [label="copy{src=/dist, dest=/usr/share/nginx/html/}" shape="note"];
  "sha256:afe0bb19514a78b72e7cea3463e9fb93ba251a7d7b07963cbd25aa39587820d4" [label="copy{src=/dist, dest=/usr/share/nginx/html/}" shape="note"];
  "sha256:7a010d1a85649f5f11d840778b0c3e146b40db7fba399eefa594577ad8189d40" [label="copy{src=/dist/assets, dest=/usr/share/nginx/html/assets/}" shape="note"];
  "sha256:0f423e0dea833ff52f012c61e67ef9a093ec35bc18556f4679f73cd48b90cbba" [label="copy{src=/dist/assets/styles, dest=/usr/share/nginx/html/assets/styles}" shape="note"];
  "sha256:65752a096149b30911c405e055a81192f07706de4aefa574b0637e7f060db787" [label="sha256:65752a096149b30911c405e055a81192f07706de4aefa574b0637e7f060db787" shape="plaintext"];
  "sha256:62549b609c62be5d4a072c8b1697ba6e0f40e59bf6b340565f5132922031518b" -> "sha256:aeaf11e77a9bff3ea5dafcd40a39f6df32e04c7965af366ace703bc8fd3c808d" [label=""];
  "sha256:9568871d58fb60d7160816f20a30950f23865cd373944bf7c3c620368d54bd84" -> "sha256:aeaf11e77a9bff3ea5dafcd40a39f6df32e04c7965af366ace703bc8fd3c808d" [label=""];
  "sha256:aeaf11e77a9bff3ea5dafcd40a39f6df32e04c7965af366ace703bc8fd3c808d" -> "sha256:2529d7708d993a521ce7ff99879a9ae4a4443d051abf915ac642e39f9664fdae" [label=""];
  "sha256:9568871d58fb60d7160816f20a30950f23865cd373944bf7c3c620368d54bd84" -> "sha256:2529d7708d993a521ce7ff99879a9ae4a4443d051abf915ac642e39f9664fdae" [label=""];
  "sha256:2529d7708d993a521ce7ff99879a9ae4a4443d051abf915ac642e39f9664fdae" -> "sha256:afe0bb19514a78b72e7cea3463e9fb93ba251a7d7b07963cbd25aa39587820d4" [label=""];
  "sha256:9568871d58fb60d7160816f20a30950f23865cd373944bf7c3c620368d54bd84" -> "sha256:afe0bb19514a78b72e7cea3463e9fb93ba251a7d7b07963cbd25aa39587820d4" [label=""];
  "sha256:afe0bb19514a78b72e7cea3463e9fb93ba251a7d7b07963cbd25aa39587820d4" -> "sha256:7a010d1a85649f5f11d840778b0c3e146b40db7fba399eefa594577ad8189d40" [label=""];
  "sha256:9568871d58fb60d7160816f20a30950f23865cd373944bf7c3c620368d54bd84" -> "sha256:7a010d1a85649f5f11d840778b0c3e146b40db7fba399eefa594577ad8189d40" [label=""];
  "sha256:7a010d1a85649f5f11d840778b0c3e146b40db7fba399eefa594577ad8189d40" -> "sha256:0f423e0dea833ff52f012c61e67ef9a093ec35bc18556f4679f73cd48b90cbba" [label=""];
  "sha256:9568871d58fb60d7160816f20a30950f23865cd373944bf7c3c620368d54bd84" -> "sha256:0f423e0dea833ff52f012c61e67ef9a093ec35bc18556f4679f73cd48b90cbba" [label=""];
  "sha256:0f423e0dea833ff52f012c61e67ef9a093ec35bc18556f4679f73cd48b90cbba" -> "sha256:65752a096149b30911c405e055a81192f07706de4aefa574b0637e7f060db787" [label=""];
}

