[app/sources/264812649.Dockerfile]
digraph {
  "sha256:e6516f9618e8cc7bed390180789db84b7f666712355f03fa05c7f93523d874d8" [label="docker-image://docker.io/laradock/php-fpm:1.4-71" shape="ellipse"];
  "sha256:045131e2f408600def6f12057ae726ec392b483d39896a5b8eaf7b7ef6b15e4a" [label="/bin/sh -c usermod -u 1000 www-data" shape="box"];
  "sha256:d4f2b71020a6228b4a2148c473d2b6cdca9ed7db3b79506e7fa60aaa1a1bfaf4" [label="mkdir{path=/var/www}" shape="note"];
  "sha256:ae361ae6c990da6e1078a70ae2303e89fc60f6547598998013ba5a5a387bf781" [label="sha256:ae361ae6c990da6e1078a70ae2303e89fc60f6547598998013ba5a5a387bf781" shape="plaintext"];
  "sha256:e6516f9618e8cc7bed390180789db84b7f666712355f03fa05c7f93523d874d8" -> "sha256:045131e2f408600def6f12057ae726ec392b483d39896a5b8eaf7b7ef6b15e4a" [label=""];
  "sha256:045131e2f408600def6f12057ae726ec392b483d39896a5b8eaf7b7ef6b15e4a" -> "sha256:d4f2b71020a6228b4a2148c473d2b6cdca9ed7db3b79506e7fa60aaa1a1bfaf4" [label=""];
  "sha256:d4f2b71020a6228b4a2148c473d2b6cdca9ed7db3b79506e7fa60aaa1a1bfaf4" -> "sha256:ae361ae6c990da6e1078a70ae2303e89fc60f6547598998013ba5a5a387bf781" [label=""];
}

