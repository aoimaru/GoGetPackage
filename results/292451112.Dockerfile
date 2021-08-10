[app/sources/292451112.Dockerfile]
digraph {
  "sha256:bdf5ab2de7f571fda9b5f0198be240a0f9a5f6012c1d8362597525038689e4c5" [label="docker-image://docker.io/library/alpine:3.4" shape="ellipse"];
  "sha256:a4b4a478a07cbbcdd572472473be7a34c5583b9fa9270631a1c477d7653083cd" [label="/bin/sh -c apk --no-cache add     ca-certificates" shape="box"];
  "sha256:1dff628fddbb6ec202aff7178ce976921827eaed61c344457d833da8e62aaed7" [label="/bin/sh -c apk --no-cache add --virtual build-dependencies     go     git   && mkdir -p /root/gocode   && export GOPATH=/root/gocode   && go get github.com/mailhog/MailHog   && mv /root/gocode/bin/MailHog /usr/local/bin   && rm -rf /root/gocode   && apk del --purge build-dependencies" shape="box"];
  "sha256:e11e6f74cef6b1d28dfd0c186970221db50543d645083df095f84f45e3c460e7" [label="/bin/sh -c adduser -D -u 1000 mailhog" shape="box"];
  "sha256:3036c7f6b3bfa1bf997e931d63600a542a1806dd8c531eb432d506178a2cb651" [label="mkdir{path=/home/mailhog}" shape="note"];
  "sha256:c74eed3063d018f0ef192710a1f93b244b89bacc9fe1a1148e76b3984e5e5382" [label="sha256:c74eed3063d018f0ef192710a1f93b244b89bacc9fe1a1148e76b3984e5e5382" shape="plaintext"];
  "sha256:bdf5ab2de7f571fda9b5f0198be240a0f9a5f6012c1d8362597525038689e4c5" -> "sha256:a4b4a478a07cbbcdd572472473be7a34c5583b9fa9270631a1c477d7653083cd" [label=""];
  "sha256:a4b4a478a07cbbcdd572472473be7a34c5583b9fa9270631a1c477d7653083cd" -> "sha256:1dff628fddbb6ec202aff7178ce976921827eaed61c344457d833da8e62aaed7" [label=""];
  "sha256:1dff628fddbb6ec202aff7178ce976921827eaed61c344457d833da8e62aaed7" -> "sha256:e11e6f74cef6b1d28dfd0c186970221db50543d645083df095f84f45e3c460e7" [label=""];
  "sha256:e11e6f74cef6b1d28dfd0c186970221db50543d645083df095f84f45e3c460e7" -> "sha256:3036c7f6b3bfa1bf997e931d63600a542a1806dd8c531eb432d506178a2cb651" [label=""];
  "sha256:3036c7f6b3bfa1bf997e931d63600a542a1806dd8c531eb432d506178a2cb651" -> "sha256:c74eed3063d018f0ef192710a1f93b244b89bacc9fe1a1148e76b3984e5e5382" [label=""];
}

