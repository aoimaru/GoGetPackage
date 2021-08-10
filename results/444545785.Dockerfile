[app/sources/444545785.Dockerfile]
digraph {
  "sha256:82b0ab03c43981bd408deb7b1ca062dc5dfd19197f06be715ff118e626d39630" [label="docker-image://docker.io/library/alpine:3.5" shape="ellipse"];
  "sha256:b5078f43e2ccfba7520f892c1961e4dfb0a681e9da0c23ab6a7533a79b52ac38" [label="local://context" shape="ellipse"];
  "sha256:5c802ec1def463a878362802333355b056fac65db0c9de0b763fa105a76ce7a4" [label="copy{src=/kafka_mirror.py, dest=/}" shape="note"];
  "sha256:e6bc1583c697b34ef0e137751019f51298a3126010395f9c4345b14cd425e46b" [label="/bin/sh -c set -x &&   mkdir /kafka /data /logs &&   apk add --no-cache openjdk8-jre-base py2-jinja2 bash &&   apk add --no-cache --virtual build-dep gnupg curl py2-requests tar &&   url=$(python /kafka_mirror.py $KAFKA_VERSION $SCALA_VERSION) &&   echo \"Using mirror: $url\" &&   curl -f \"$url\" > /kafka.tar.gz &&   echo \"Verifying against keys: $KAFKA_KEYS\" &&   curl -f \"$ASC_MIRROR/$KAFKA_VERSION/kafka_$SCALA_VERSION-$KAFKA_VERSION.tgz.asc\" > /kafka.asc &&   curl \"$KAFKA_KEYS\" | gpg --import &&   gpg --batch --verify kafka.asc kafka.tar.gz || $SKIP_VERIFY &&   echo \"Download verified, continuing...\" &&   tar zxf /kafka.tar.gz -C /kafka --strip-components=1 &&   rm /kafka.tar.gz /kafka_mirror.py &&   apk del build-dep" shape="box"];
  "sha256:7256980eb879693dae37b806268e4368db92092c1d84fd2b556db3f2b8ac5719" [label="copy{src=/template.py, dest=/},copy{src=/start.sh, dest=/},copy{src=/memory.py, dest=/}" shape="note"];
  "sha256:2355916ac2df76c5e25e042a13777a980d96dbda0590b938358fbd92f0d040eb" [label="copy{src=/templates, dest=/templates}" shape="note"];
  "sha256:26c616d33fcfb4e85e13825e830d3319c915a6b24fa2e4948fd5d442f4d95fe9" [label="sha256:26c616d33fcfb4e85e13825e830d3319c915a6b24fa2e4948fd5d442f4d95fe9" shape="plaintext"];
  "sha256:82b0ab03c43981bd408deb7b1ca062dc5dfd19197f06be715ff118e626d39630" -> "sha256:5c802ec1def463a878362802333355b056fac65db0c9de0b763fa105a76ce7a4" [label=""];
  "sha256:b5078f43e2ccfba7520f892c1961e4dfb0a681e9da0c23ab6a7533a79b52ac38" -> "sha256:5c802ec1def463a878362802333355b056fac65db0c9de0b763fa105a76ce7a4" [label=""];
  "sha256:5c802ec1def463a878362802333355b056fac65db0c9de0b763fa105a76ce7a4" -> "sha256:e6bc1583c697b34ef0e137751019f51298a3126010395f9c4345b14cd425e46b" [label=""];
  "sha256:e6bc1583c697b34ef0e137751019f51298a3126010395f9c4345b14cd425e46b" -> "sha256:7256980eb879693dae37b806268e4368db92092c1d84fd2b556db3f2b8ac5719" [label=""];
  "sha256:b5078f43e2ccfba7520f892c1961e4dfb0a681e9da0c23ab6a7533a79b52ac38" -> "sha256:7256980eb879693dae37b806268e4368db92092c1d84fd2b556db3f2b8ac5719" [label=""];
  "sha256:7256980eb879693dae37b806268e4368db92092c1d84fd2b556db3f2b8ac5719" -> "sha256:2355916ac2df76c5e25e042a13777a980d96dbda0590b938358fbd92f0d040eb" [label=""];
  "sha256:b5078f43e2ccfba7520f892c1961e4dfb0a681e9da0c23ab6a7533a79b52ac38" -> "sha256:2355916ac2df76c5e25e042a13777a980d96dbda0590b938358fbd92f0d040eb" [label=""];
  "sha256:2355916ac2df76c5e25e042a13777a980d96dbda0590b938358fbd92f0d040eb" -> "sha256:26c616d33fcfb4e85e13825e830d3319c915a6b24fa2e4948fd5d442f4d95fe9" [label=""];
}

