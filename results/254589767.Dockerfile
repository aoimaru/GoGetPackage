[app/sources/254589767.Dockerfile]
digraph {
  "sha256:b97497de9522c8b8dea28fc82cfb25aee6ba5da66569303bd88c0580d28dd9bf" [label="docker-image://docker.io/library/golang:1.7.1-alpine" shape="ellipse"];
  "sha256:470c79bdf51e5040452407c717b266eb236de30e8cf9265b5bad2a04fbff2840" [label="/bin/sh -c set -x && apk add --no-cache --virtual .build_deps bash git make zip" shape="box"];
  "sha256:ba68c81ef3cbbeade19425e0409a62aa9b04066848198dac5740987168041d79" [label="/bin/sh -c go get -u github.com/kardianos/govendor" shape="box"];
  "sha256:6dc916da3909dfc4e3ce9fcf668f89b14a23d37cd88d778f9225c0822f4cfbb7" [label="local://context" shape="ellipse"];
  "sha256:9539eb0940adf0ceac8ea041dfd38c5000055e2a1d56dad34e8132c39f24ea1b" [label="copy{src=/, dest=/go/src/github.com/sacloud/sackerel}" shape="note"];
  "sha256:0452b9436e951f14afb2cb3fbae64752d0399de007b1ccd08b8d625de608fdf6" [label="mkdir{path=/go/src/github.com/sacloud/sackerel}" shape="note"];
  "sha256:4c0d4751ad5ea221b8b6b3c5f6d5b68f84b791a71c060c1b4bb11cb6b504fd1d" [label="sha256:4c0d4751ad5ea221b8b6b3c5f6d5b68f84b791a71c060c1b4bb11cb6b504fd1d" shape="plaintext"];
  "sha256:b97497de9522c8b8dea28fc82cfb25aee6ba5da66569303bd88c0580d28dd9bf" -> "sha256:470c79bdf51e5040452407c717b266eb236de30e8cf9265b5bad2a04fbff2840" [label=""];
  "sha256:470c79bdf51e5040452407c717b266eb236de30e8cf9265b5bad2a04fbff2840" -> "sha256:ba68c81ef3cbbeade19425e0409a62aa9b04066848198dac5740987168041d79" [label=""];
  "sha256:ba68c81ef3cbbeade19425e0409a62aa9b04066848198dac5740987168041d79" -> "sha256:9539eb0940adf0ceac8ea041dfd38c5000055e2a1d56dad34e8132c39f24ea1b" [label=""];
  "sha256:6dc916da3909dfc4e3ce9fcf668f89b14a23d37cd88d778f9225c0822f4cfbb7" -> "sha256:9539eb0940adf0ceac8ea041dfd38c5000055e2a1d56dad34e8132c39f24ea1b" [label=""];
  "sha256:9539eb0940adf0ceac8ea041dfd38c5000055e2a1d56dad34e8132c39f24ea1b" -> "sha256:0452b9436e951f14afb2cb3fbae64752d0399de007b1ccd08b8d625de608fdf6" [label=""];
  "sha256:0452b9436e951f14afb2cb3fbae64752d0399de007b1ccd08b8d625de608fdf6" -> "sha256:4c0d4751ad5ea221b8b6b3c5f6d5b68f84b791a71c060c1b4bb11cb6b504fd1d" [label=""];
}

