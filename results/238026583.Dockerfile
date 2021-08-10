[app/sources/238026583.Dockerfile]
digraph {
  "sha256:469de9dcd442ea5b60fda4bc05f7e9661858bf288796fb9783724187ded32870" [label="docker-image://docker.io/library/php:7.1-fpm" shape="ellipse"];
  "sha256:c0c3f491ae54456b26a5d7434ec6abf12f6befe00fa7c7d56c4530619a6118c7" [label="local://context" shape="ellipse"];
  "sha256:64432bdb5b2a9f0a563cf2c791abcf427586245349440c4578445cdfd3f1953f" [label="copy{src=/src, dest=/var/www/html/}" shape="note"];
  "sha256:bfbc09d834614766406717d4d78c24e5381b96f90faf460f9cb917bcbc4c5138" [label="sha256:bfbc09d834614766406717d4d78c24e5381b96f90faf460f9cb917bcbc4c5138" shape="plaintext"];
  "sha256:469de9dcd442ea5b60fda4bc05f7e9661858bf288796fb9783724187ded32870" -> "sha256:64432bdb5b2a9f0a563cf2c791abcf427586245349440c4578445cdfd3f1953f" [label=""];
  "sha256:c0c3f491ae54456b26a5d7434ec6abf12f6befe00fa7c7d56c4530619a6118c7" -> "sha256:64432bdb5b2a9f0a563cf2c791abcf427586245349440c4578445cdfd3f1953f" [label=""];
  "sha256:64432bdb5b2a9f0a563cf2c791abcf427586245349440c4578445cdfd3f1953f" -> "sha256:bfbc09d834614766406717d4d78c24e5381b96f90faf460f9cb917bcbc4c5138" [label=""];
}

