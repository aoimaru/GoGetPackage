[app/sources/241179756.Dockerfile]
digraph {
  "sha256:5e3ffce172abe029e14398c960f76178160392adccdc24ec33a7ba0bde79cc90" [label="docker-image://docker.io/library/php:5.6-apache" shape="ellipse"];
  "sha256:0d387973fc27097d168aaddb3bfd98faccfaeb24bad5b4786902786ef5f00583" [label="/bin/sh -c apt-get update &&     apt-get install -y         libxml2         libxml2-dev &&     docker-php-ext-install soap" shape="box"];
  "sha256:7bc4b224264ae5adc3e444e0c57861069cd833831ebf31ebc46e945848ceb128" [label="local://context" shape="ellipse"];
  "sha256:1e2da16ed3ae1173bc9cee4bab944af33d8c16b15fab07b5ab15bc2923a26046" [label="copy{src=/, dest=/var/www/html}" shape="note"];
  "sha256:4ba9b9fb3274ca4655bcd957f78c053e0f28351168fec7adbe1b547e31a88543" [label="sha256:4ba9b9fb3274ca4655bcd957f78c053e0f28351168fec7adbe1b547e31a88543" shape="plaintext"];
  "sha256:5e3ffce172abe029e14398c960f76178160392adccdc24ec33a7ba0bde79cc90" -> "sha256:0d387973fc27097d168aaddb3bfd98faccfaeb24bad5b4786902786ef5f00583" [label=""];
  "sha256:0d387973fc27097d168aaddb3bfd98faccfaeb24bad5b4786902786ef5f00583" -> "sha256:1e2da16ed3ae1173bc9cee4bab944af33d8c16b15fab07b5ab15bc2923a26046" [label=""];
  "sha256:7bc4b224264ae5adc3e444e0c57861069cd833831ebf31ebc46e945848ceb128" -> "sha256:1e2da16ed3ae1173bc9cee4bab944af33d8c16b15fab07b5ab15bc2923a26046" [label=""];
  "sha256:1e2da16ed3ae1173bc9cee4bab944af33d8c16b15fab07b5ab15bc2923a26046" -> "sha256:4ba9b9fb3274ca4655bcd957f78c053e0f28351168fec7adbe1b547e31a88543" [label=""];
}

