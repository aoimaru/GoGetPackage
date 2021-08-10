[app/sources/273538447.Dockerfile]
digraph {
  "sha256:f4df142c4fb5fb82feaf55cd69cdaedd732431d2650b54afb108aa736befcb83" [label="local://context" shape="ellipse"];
  "sha256:bdf5ab2de7f571fda9b5f0198be240a0f9a5f6012c1d8362597525038689e4c5" [label="docker-image://docker.io/library/alpine:3.4" shape="ellipse"];
  "sha256:bd9a75d962498cd959dd1f80cf277e9eaa1996834c891a036173b74445d09a1f" [label="/bin/sh -c apk add --no-cache redis sed bash" shape="box"];
  "sha256:470cb031adcdca620139530acc8d16d83b4a79194712d6d718dfb2c91d37bd0c" [label="copy{src=/redis-master.conf, dest=/redis-master/redis.conf}" shape="note"];
  "sha256:e01d9740447f2c3453071f6b6c52cdd4e6af827ef30606d74cf70ae5ad313682" [label="copy{src=/redis-slave.conf, dest=/redis-slave/redis.conf}" shape="note"];
  "sha256:bd386f9da7a733605f7c8805b24672da9fff9da0395a057a0469c12314198966" [label="copy{src=/run.sh, dest=/run.sh}" shape="note"];
  "sha256:c5a21fb1510ab274bfdf23d06dc7abb0729c256e91d3251cfb147719dfb0fd38" [label="sha256:c5a21fb1510ab274bfdf23d06dc7abb0729c256e91d3251cfb147719dfb0fd38" shape="plaintext"];
  "sha256:bdf5ab2de7f571fda9b5f0198be240a0f9a5f6012c1d8362597525038689e4c5" -> "sha256:bd9a75d962498cd959dd1f80cf277e9eaa1996834c891a036173b74445d09a1f" [label=""];
  "sha256:bd9a75d962498cd959dd1f80cf277e9eaa1996834c891a036173b74445d09a1f" -> "sha256:470cb031adcdca620139530acc8d16d83b4a79194712d6d718dfb2c91d37bd0c" [label=""];
  "sha256:f4df142c4fb5fb82feaf55cd69cdaedd732431d2650b54afb108aa736befcb83" -> "sha256:470cb031adcdca620139530acc8d16d83b4a79194712d6d718dfb2c91d37bd0c" [label=""];
  "sha256:470cb031adcdca620139530acc8d16d83b4a79194712d6d718dfb2c91d37bd0c" -> "sha256:e01d9740447f2c3453071f6b6c52cdd4e6af827ef30606d74cf70ae5ad313682" [label=""];
  "sha256:f4df142c4fb5fb82feaf55cd69cdaedd732431d2650b54afb108aa736befcb83" -> "sha256:e01d9740447f2c3453071f6b6c52cdd4e6af827ef30606d74cf70ae5ad313682" [label=""];
  "sha256:e01d9740447f2c3453071f6b6c52cdd4e6af827ef30606d74cf70ae5ad313682" -> "sha256:bd386f9da7a733605f7c8805b24672da9fff9da0395a057a0469c12314198966" [label=""];
  "sha256:f4df142c4fb5fb82feaf55cd69cdaedd732431d2650b54afb108aa736befcb83" -> "sha256:bd386f9da7a733605f7c8805b24672da9fff9da0395a057a0469c12314198966" [label=""];
  "sha256:bd386f9da7a733605f7c8805b24672da9fff9da0395a057a0469c12314198966" -> "sha256:c5a21fb1510ab274bfdf23d06dc7abb0729c256e91d3251cfb147719dfb0fd38" [label=""];
}

