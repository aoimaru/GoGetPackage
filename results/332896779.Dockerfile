[app/sources/332896779.Dockerfile]
digraph {
  "sha256:cc53bf2536b615016e9c63bc4e728cb44d03972b7367795d11e3a39c3c19b4da" [label="docker-image://docker.io/lukaspustina/base:latest" shape="ellipse"];
  "sha256:ce3db8c53f50f6c2da57102c106dc31fd0894d2b30d6540f436005ff8ea90b8c" [label="/bin/sh -c apt-get install -y python3" shape="box"];
  "sha256:5d24cebe5cd7192e6e70550f76b7c483c04a49298a7051e3c422bb31e8dfe778" [label="sha256:5d24cebe5cd7192e6e70550f76b7c483c04a49298a7051e3c422bb31e8dfe778" shape="plaintext"];
  "sha256:cc53bf2536b615016e9c63bc4e728cb44d03972b7367795d11e3a39c3c19b4da" -> "sha256:ce3db8c53f50f6c2da57102c106dc31fd0894d2b30d6540f436005ff8ea90b8c" [label=""];
  "sha256:ce3db8c53f50f6c2da57102c106dc31fd0894d2b30d6540f436005ff8ea90b8c" -> "sha256:5d24cebe5cd7192e6e70550f76b7c483c04a49298a7051e3c422bb31e8dfe778" [label=""];
}

