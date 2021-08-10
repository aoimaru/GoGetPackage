[app/sources/196927300.Dockerfile]
digraph {
  "sha256:62549b609c62be5d4a072c8b1697ba6e0f40e59bf6b340565f5132922031518b" [label="docker-image://docker.io/library/nginx:latest" shape="ellipse"];
  "sha256:87f79ccdaf65ce621b1116ca234c02042da1472ddf29f70d0a177289f637a60c" [label="local://context" shape="ellipse"];
  "sha256:1ecb87f8b93dade16879adc1fd29803d5d6299bc36371aa7b51c34464365b8af" [label="copy{src=/nginx.conf, dest=/etc/nginx/nginx.conf}" shape="note"];
  "sha256:a35d9c8dd754b8d041c06d4b39eddb92f04d3c88d705790041647853e967a77a" [label="sha256:a35d9c8dd754b8d041c06d4b39eddb92f04d3c88d705790041647853e967a77a" shape="plaintext"];
  "sha256:62549b609c62be5d4a072c8b1697ba6e0f40e59bf6b340565f5132922031518b" -> "sha256:1ecb87f8b93dade16879adc1fd29803d5d6299bc36371aa7b51c34464365b8af" [label=""];
  "sha256:87f79ccdaf65ce621b1116ca234c02042da1472ddf29f70d0a177289f637a60c" -> "sha256:1ecb87f8b93dade16879adc1fd29803d5d6299bc36371aa7b51c34464365b8af" [label=""];
  "sha256:1ecb87f8b93dade16879adc1fd29803d5d6299bc36371aa7b51c34464365b8af" -> "sha256:a35d9c8dd754b8d041c06d4b39eddb92f04d3c88d705790041647853e967a77a" [label=""];
}

