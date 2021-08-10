[app/sources/210035137.Dockerfile]
digraph {
  "sha256:5302843d2dbcdc70daa768ed854a92ace1acca51c6194779befcaf5558dd1367" [label="docker-image://docker.io/library/alpine:edge@sha256:2f77b6664f181b246244f9cd052155e74fb3f26d2a502edecd5fff0fc4bda388" shape="ellipse"];
  "sha256:e3924c72ab2134eaa1dfa06993c90c5cfc276a0ef43caee80d8a2b6f8325aa9b" [label="local://context" shape="ellipse"];
  "sha256:dc10ffc673cfbe83303f07a0f09e7bbe1b997984c7f3d836020473c23e6b3b24" [label="copy{src=/, dest=/ocr-fileformat}" shape="note"];
  "sha256:d769d304de816deb8ff3541f5818972fd753cdce119619c68697619e6e4badad" [label="mkdir{path=/ocr-fileformat}" shape="note"];
  "sha256:61c2bd547169df4bb12996775e3422efe15a8b9e20009065a7fb209851a60977" [label="/bin/sh -c apk add --no-cache openjdk8-jre php7 php7-json php7-openssl python py-lxml git make ca-certificates wget bash gcc libc-dev     && update-ca-certificates     && make install     && cp docker.config.php web/config.local.php     && sed -i '/^upload_max_filesize/ s/=.*$/= 100M/' /etc/php7/php.ini     && sed -i 's/;extension=php_openssl.dll/extension=php_openssl.dll/' /etc/php7/php.ini     && mv web /ocr-fileformat-web     && rm -rf /ocr-fileformat     && apk del git make wget gcc libc-dev" shape="box"];
  "sha256:dcc323a6dd4e1ea339f5b85e901ea0a6db3a3eaef55da1dac070f82f975ef0ff" [label="mkdir{path=/data}" shape="note"];
  "sha256:3258c5c2948f71d92b1e54817f14b07ed8c149a093be1d30ea9fcf2f7326a3d8" [label="sha256:3258c5c2948f71d92b1e54817f14b07ed8c149a093be1d30ea9fcf2f7326a3d8" shape="plaintext"];
  "sha256:5302843d2dbcdc70daa768ed854a92ace1acca51c6194779befcaf5558dd1367" -> "sha256:dc10ffc673cfbe83303f07a0f09e7bbe1b997984c7f3d836020473c23e6b3b24" [label=""];
  "sha256:e3924c72ab2134eaa1dfa06993c90c5cfc276a0ef43caee80d8a2b6f8325aa9b" -> "sha256:dc10ffc673cfbe83303f07a0f09e7bbe1b997984c7f3d836020473c23e6b3b24" [label=""];
  "sha256:dc10ffc673cfbe83303f07a0f09e7bbe1b997984c7f3d836020473c23e6b3b24" -> "sha256:d769d304de816deb8ff3541f5818972fd753cdce119619c68697619e6e4badad" [label=""];
  "sha256:d769d304de816deb8ff3541f5818972fd753cdce119619c68697619e6e4badad" -> "sha256:61c2bd547169df4bb12996775e3422efe15a8b9e20009065a7fb209851a60977" [label=""];
  "sha256:61c2bd547169df4bb12996775e3422efe15a8b9e20009065a7fb209851a60977" -> "sha256:dcc323a6dd4e1ea339f5b85e901ea0a6db3a3eaef55da1dac070f82f975ef0ff" [label=""];
  "sha256:dcc323a6dd4e1ea339f5b85e901ea0a6db3a3eaef55da1dac070f82f975ef0ff" -> "sha256:3258c5c2948f71d92b1e54817f14b07ed8c149a093be1d30ea9fcf2f7326a3d8" [label=""];
}

