[app/sources/452585236.Dockerfile]
digraph {
  "sha256:5e691c7ba4998fa4b60d1218bbc4ed9845bfa527d7d91b0c48922bbea45ce425" [label="docker-image://docker.io/library/ubuntu:18.04" shape="ellipse"];
  "sha256:84e0d76a916a2a3cdcd616c815ba83581e08f4f5ed6068d3816af23f45c008d8" [label="docker-image://docker.io/library/golang:1.12" shape="ellipse"];
  "sha256:ce8f2622637b190b75b5833c42714422f7bf797138bbed7cac2f38122b8b5ce2" [label="/bin/sh -c apt-get update && apt-get -y install curl software-properties-common && curl -sL https://deb.nodesource.com/setup_10.x | bash -" shape="box"];
  "sha256:c931744d6a8480cf5b04e358a9c9f903dfa8f081527c93c83ed9af232ace9a57" [label="/bin/sh -c apt-get update && apt-get -y install nodejs" shape="box"];
  "sha256:d2b585b27ba80231b351f8f63537995204ce95d0ed6258dae51b9e8f2c1acdbb" [label="/bin/sh -c go get -u github.com/gobuffalo/packr/packr" shape="box"];
  "sha256:bc798771679513e536af0efd65c0aa32f7e33f10ed5ebc63e03dbdd1f8404de4" [label="mkdir{path=/go/src/github.com/convox/site}" shape="note"];
  "sha256:4aa7ff9dec8edc19e7e50fbcd3b70589d8d308e159a202c769f84184bbce8ef4" [label="local://context" shape="ellipse"];
  "sha256:8a51b10a0abdfebe47479eeb765608a338acf30284c333cdfdb0bb987235c7a4" [label="/bin/sh -c curl -Ls https://github.com/mattgreen/watchexec/releases/download/1.8.6/watchexec-1.8.6-x86_64-unknown-linux-gnu.tar.gz |     tar -C /usr/bin --strip-components 1 -xz" shape="box"];
  "sha256:8dfb943a22d7ba397232100e2c5a5fd0decbf438270411586946143c95bc0228" [label="mkdir{path=/go/src/github.com/convox/site/webpack}" shape="note"];
  "sha256:9b9c9d5ffd148d8a627d0d3adc34243747dbc72d17595faa38e0bcbbf0c1b074" [label="copy{src=/webpack/node_modules, dest=/go/src/github.com/convox/site/webpack/node_modules}" shape="note"];
  "sha256:5c60bae99197e901c5b1aad508cd58f12220f09b21bba93db6c0a176371f34c5" [label="/bin/sh -c npm rebuild" shape="box"];
  "sha256:161b65736e9c0df5fa9fc673a5141b0afe8bdbf1563d0fbc4d0070dbadd28d57" [label="mkdir{path=/go/src/github.com/convox/site}" shape="note"];
  "sha256:100d66aadf519a5a8b191fa749cad22c7e73350b8bfd67587f440e9f4021bd37" [label="copy{src=/, dest=/go/src/github.com/convox/site/}" shape="note"];
  "sha256:688a4ee45871827732c4e174a0069fbd73454f84e14bba5d17d0792b558cfccc" [label="/bin/sh -c make build" shape="box"];
  "sha256:0d914208c9802d529d79401b217a9e468e9cb6039cc9adc327d6e4537e4ffd4d" [label="copy{src=/go/src/github.com/convox/site, dest=/go/src/github.com/convox/site/}" shape="note"];
  "sha256:c428d6edd536971a0d3fe2b43d8e2eba6dee61f8c73e9f9b24377954c64ca2d6" [label="/bin/sh -c make -B build" shape="box"];
  "sha256:e88bbedb3ce83b45bfcc6fc774553da2039bc326e024592f86cc526205167a6f" [label="copy{src=/go/bin/web, dest=/usr/local/bin/web}" shape="note"];
  "sha256:0b412c6e5e7ca834d97ae14c56cd81b3c4f028370783cb93f29624b3636a238f" [label="/bin/sh -c groupadd -r site && useradd -r -g site site" shape="box"];
  "sha256:fc9de8a5e454b952cc129a6ccc56b24c99c74a5db3da468d30f3a3bf2df8e8c0" [label="sha256:fc9de8a5e454b952cc129a6ccc56b24c99c74a5db3da468d30f3a3bf2df8e8c0" shape="plaintext"];
  "sha256:84e0d76a916a2a3cdcd616c815ba83581e08f4f5ed6068d3816af23f45c008d8" -> "sha256:ce8f2622637b190b75b5833c42714422f7bf797138bbed7cac2f38122b8b5ce2" [label=""];
  "sha256:ce8f2622637b190b75b5833c42714422f7bf797138bbed7cac2f38122b8b5ce2" -> "sha256:c931744d6a8480cf5b04e358a9c9f903dfa8f081527c93c83ed9af232ace9a57" [label=""];
  "sha256:c931744d6a8480cf5b04e358a9c9f903dfa8f081527c93c83ed9af232ace9a57" -> "sha256:d2b585b27ba80231b351f8f63537995204ce95d0ed6258dae51b9e8f2c1acdbb" [label=""];
  "sha256:d2b585b27ba80231b351f8f63537995204ce95d0ed6258dae51b9e8f2c1acdbb" -> "sha256:bc798771679513e536af0efd65c0aa32f7e33f10ed5ebc63e03dbdd1f8404de4" [label=""];
  "sha256:c931744d6a8480cf5b04e358a9c9f903dfa8f081527c93c83ed9af232ace9a57" -> "sha256:8a51b10a0abdfebe47479eeb765608a338acf30284c333cdfdb0bb987235c7a4" [label=""];
  "sha256:8a51b10a0abdfebe47479eeb765608a338acf30284c333cdfdb0bb987235c7a4" -> "sha256:8dfb943a22d7ba397232100e2c5a5fd0decbf438270411586946143c95bc0228" [label=""];
  "sha256:8dfb943a22d7ba397232100e2c5a5fd0decbf438270411586946143c95bc0228" -> "sha256:9b9c9d5ffd148d8a627d0d3adc34243747dbc72d17595faa38e0bcbbf0c1b074" [label=""];
  "sha256:4aa7ff9dec8edc19e7e50fbcd3b70589d8d308e159a202c769f84184bbce8ef4" -> "sha256:9b9c9d5ffd148d8a627d0d3adc34243747dbc72d17595faa38e0bcbbf0c1b074" [label=""];
  "sha256:9b9c9d5ffd148d8a627d0d3adc34243747dbc72d17595faa38e0bcbbf0c1b074" -> "sha256:5c60bae99197e901c5b1aad508cd58f12220f09b21bba93db6c0a176371f34c5" [label=""];
  "sha256:5c60bae99197e901c5b1aad508cd58f12220f09b21bba93db6c0a176371f34c5" -> "sha256:161b65736e9c0df5fa9fc673a5141b0afe8bdbf1563d0fbc4d0070dbadd28d57" [label=""];
  "sha256:161b65736e9c0df5fa9fc673a5141b0afe8bdbf1563d0fbc4d0070dbadd28d57" -> "sha256:100d66aadf519a5a8b191fa749cad22c7e73350b8bfd67587f440e9f4021bd37" [label=""];
  "sha256:4aa7ff9dec8edc19e7e50fbcd3b70589d8d308e159a202c769f84184bbce8ef4" -> "sha256:100d66aadf519a5a8b191fa749cad22c7e73350b8bfd67587f440e9f4021bd37" [label=""];
  "sha256:100d66aadf519a5a8b191fa749cad22c7e73350b8bfd67587f440e9f4021bd37" -> "sha256:688a4ee45871827732c4e174a0069fbd73454f84e14bba5d17d0792b558cfccc" [label=""];
  "sha256:bc798771679513e536af0efd65c0aa32f7e33f10ed5ebc63e03dbdd1f8404de4" -> "sha256:0d914208c9802d529d79401b217a9e468e9cb6039cc9adc327d6e4537e4ffd4d" [label=""];
  "sha256:688a4ee45871827732c4e174a0069fbd73454f84e14bba5d17d0792b558cfccc" -> "sha256:0d914208c9802d529d79401b217a9e468e9cb6039cc9adc327d6e4537e4ffd4d" [label=""];
  "sha256:0d914208c9802d529d79401b217a9e468e9cb6039cc9adc327d6e4537e4ffd4d" -> "sha256:c428d6edd536971a0d3fe2b43d8e2eba6dee61f8c73e9f9b24377954c64ca2d6" [label=""];
  "sha256:5e691c7ba4998fa4b60d1218bbc4ed9845bfa527d7d91b0c48922bbea45ce425" -> "sha256:e88bbedb3ce83b45bfcc6fc774553da2039bc326e024592f86cc526205167a6f" [label=""];
  "sha256:c428d6edd536971a0d3fe2b43d8e2eba6dee61f8c73e9f9b24377954c64ca2d6" -> "sha256:e88bbedb3ce83b45bfcc6fc774553da2039bc326e024592f86cc526205167a6f" [label=""];
  "sha256:e88bbedb3ce83b45bfcc6fc774553da2039bc326e024592f86cc526205167a6f" -> "sha256:0b412c6e5e7ca834d97ae14c56cd81b3c4f028370783cb93f29624b3636a238f" [label=""];
  "sha256:0b412c6e5e7ca834d97ae14c56cd81b3c4f028370783cb93f29624b3636a238f" -> "sha256:fc9de8a5e454b952cc129a6ccc56b24c99c74a5db3da468d30f3a3bf2df8e8c0" [label=""];
}

