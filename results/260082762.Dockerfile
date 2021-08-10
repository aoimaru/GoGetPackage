[app/sources/260082762.Dockerfile]
digraph {
  "sha256:5e3ffce172abe029e14398c960f76178160392adccdc24ec33a7ba0bde79cc90" [label="docker-image://docker.io/library/php:5.6-apache" shape="ellipse"];
  "sha256:0a1d9bce8681dc3581e7516beb0fc64cf936760d48f4397d4f9741ba133833dd" [label="/bin/sh -c apt-get update && apt-get install -y libpq-dev && docker-php-ext-install pgsql" shape="box"];
  "sha256:a8022d4a9865359b20dd866fa9160478cad0558ad793f87aabc0fc36c67017e2" [label="local://context" shape="ellipse"];
  "sha256:955f51a55599204a9b17bc2996bec70bf685d0bf84632768dcf08630699129f2" [label="copy{src=/*.php, dest=/var/www/html/}" shape="note"];
  "sha256:db303c200f6667e956094e21f74d9f15866b44a3bf7bf52d90793aead9f0a2e3" [label="sha256:db303c200f6667e956094e21f74d9f15866b44a3bf7bf52d90793aead9f0a2e3" shape="plaintext"];
  "sha256:5e3ffce172abe029e14398c960f76178160392adccdc24ec33a7ba0bde79cc90" -> "sha256:0a1d9bce8681dc3581e7516beb0fc64cf936760d48f4397d4f9741ba133833dd" [label=""];
  "sha256:0a1d9bce8681dc3581e7516beb0fc64cf936760d48f4397d4f9741ba133833dd" -> "sha256:955f51a55599204a9b17bc2996bec70bf685d0bf84632768dcf08630699129f2" [label=""];
  "sha256:a8022d4a9865359b20dd866fa9160478cad0558ad793f87aabc0fc36c67017e2" -> "sha256:955f51a55599204a9b17bc2996bec70bf685d0bf84632768dcf08630699129f2" [label=""];
  "sha256:955f51a55599204a9b17bc2996bec70bf685d0bf84632768dcf08630699129f2" -> "sha256:db303c200f6667e956094e21f74d9f15866b44a3bf7bf52d90793aead9f0a2e3" [label=""];
}

