[app/sources/352683640.Dockerfile]
digraph {
  "sha256:5302843d2dbcdc70daa768ed854a92ace1acca51c6194779befcaf5558dd1367" [label="docker-image://docker.io/library/alpine:edge@sha256:2f77b6664f181b246244f9cd052155e74fb3f26d2a502edecd5fff0fc4bda388" shape="ellipse"];
  "sha256:8975ebc86f99324a1ea9d4adb2639a5de1198168d7ff322079ee72508feac50a" [label="/bin/sh -c apk add --update curl && rm -rf /var/cache/apk/*" shape="box"];
  "sha256:2f38f536cf312fd0c4f1781028513d9389a8f5950103e32f8716c0814972e4a1" [label="local://context" shape="ellipse"];
  "sha256:136f1926f74578642ea4c19f4c55c21974842b3f946737dd7f7f4073be2d4b46" [label="copy{src=/entrypoint.sh, dest=/}" shape="note"];
  "sha256:8fc843f79fbe2a0335aac8382846b1d2b133c85ce38a56f295a838574a4b783d" [label="sha256:8fc843f79fbe2a0335aac8382846b1d2b133c85ce38a56f295a838574a4b783d" shape="plaintext"];
  "sha256:5302843d2dbcdc70daa768ed854a92ace1acca51c6194779befcaf5558dd1367" -> "sha256:8975ebc86f99324a1ea9d4adb2639a5de1198168d7ff322079ee72508feac50a" [label=""];
  "sha256:8975ebc86f99324a1ea9d4adb2639a5de1198168d7ff322079ee72508feac50a" -> "sha256:136f1926f74578642ea4c19f4c55c21974842b3f946737dd7f7f4073be2d4b46" [label=""];
  "sha256:2f38f536cf312fd0c4f1781028513d9389a8f5950103e32f8716c0814972e4a1" -> "sha256:136f1926f74578642ea4c19f4c55c21974842b3f946737dd7f7f4073be2d4b46" [label=""];
  "sha256:136f1926f74578642ea4c19f4c55c21974842b3f946737dd7f7f4073be2d4b46" -> "sha256:8fc843f79fbe2a0335aac8382846b1d2b133c85ce38a56f295a838574a4b783d" [label=""];
}
