[app/sources/171499480.Dockerfile]
digraph {
  "sha256:547e1bea81286de12eb66e5b91fbe9299ce73214ba5c50c3e56876905e1a37af" [label="docker-image://docker.io/library/python:2.7-alpine3.7" shape="ellipse"];
  "sha256:f05222ed6b83c723a8b90c5d029e9b42b7e44a2da3e4c1f2cb1aa556e0d36c13" [label="/bin/sh -c addgroup -g 500 plone  && adduser -S -D -G plone -u 500 plone  && mkdir -p /plone/instance /data/filestorage /data/blobstorage" shape="box"];
  "sha256:d7437244d0dae9fab8702f9753e017522b508376eb84b0e239bd37b2f6cb24cf" [label="local://context" shape="ellipse"];
  "sha256:6669291c38db283e58a1ee951c11921aa9b5ef220f94ee800d6668295119983c" [label="copy{src=/buildout.cfg, dest=/plone/instance/}" shape="note"];
  "sha256:75a87af499380d4d27678b95e7034a5e2d077f8e20607cbd50050eb6fbb4e842" [label="/bin/sh -c apk add --no-cache --virtual .build-deps     gcc     libc-dev     zlib-dev     libjpeg-turbo-dev     libpng-dev     libxml2-dev     libxslt-dev     pcre-dev && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz && echo \"$PLONE_MD5  Plone.tgz\" | md5sum -c - && tar -zxvf Plone.tgz && cp -rv ./Plone-$PLONE_VERSION-UnifiedInstaller/base_skeleton/* /plone/instance/ && cp -v ./Plone-$PLONE_VERSION-UnifiedInstaller/buildout_templates/buildout.cfg /plone/instance/buildout-base.cfg && pip install pip==$PIP setuptools==$SETUPTOOLS zc.buildout==$ZC_BUILDOUT && cd /plone/instance && buildout && ln -s /usr/local/bin/pip /plone/instance/bin/pip && ln -s /usr/local/bin/python /plone/instance/bin/python && ln -s /usr/local/bin/buildout /plone/instance/bin/buildout && ln -s /data/filestorage/ /plone/instance/var/filestorage && ln -s /data/blobstorage /plone/instance//var/blobstorage && chown -R plone:plone /plone /data && rm -rf /Plone* && apk del .build-deps && apk add --no-cache --virtual .run-deps     su-exec     bash     rsync     libxml2     libxslt     libjpeg-turbo && rm -rf /plone/buildout-cache/downloads/*" shape="box"];
  "sha256:e283521e57884c563bffbbb2e4d97464d6f7429c9cbe45282d857d4f56bb3326" [label="copy{src=/docker-initialize.py, dest=/},copy{src=/docker-entrypoint.sh, dest=/}" shape="note"];
  "sha256:d81755468b2f5f17b1c9b33eed4a9c56c8b255d717d0e9771523c433d6bba19c" [label="mkdir{path=/plone/instance}" shape="note"];
  "sha256:5a3c898635a99aa7fb7215c2ba591eea7d0914fb90c51c9d9a61ebdd87fa8d52" [label="sha256:5a3c898635a99aa7fb7215c2ba591eea7d0914fb90c51c9d9a61ebdd87fa8d52" shape="plaintext"];
  "sha256:547e1bea81286de12eb66e5b91fbe9299ce73214ba5c50c3e56876905e1a37af" -> "sha256:f05222ed6b83c723a8b90c5d029e9b42b7e44a2da3e4c1f2cb1aa556e0d36c13" [label=""];
  "sha256:f05222ed6b83c723a8b90c5d029e9b42b7e44a2da3e4c1f2cb1aa556e0d36c13" -> "sha256:6669291c38db283e58a1ee951c11921aa9b5ef220f94ee800d6668295119983c" [label=""];
  "sha256:d7437244d0dae9fab8702f9753e017522b508376eb84b0e239bd37b2f6cb24cf" -> "sha256:6669291c38db283e58a1ee951c11921aa9b5ef220f94ee800d6668295119983c" [label=""];
  "sha256:6669291c38db283e58a1ee951c11921aa9b5ef220f94ee800d6668295119983c" -> "sha256:75a87af499380d4d27678b95e7034a5e2d077f8e20607cbd50050eb6fbb4e842" [label=""];
  "sha256:75a87af499380d4d27678b95e7034a5e2d077f8e20607cbd50050eb6fbb4e842" -> "sha256:e283521e57884c563bffbbb2e4d97464d6f7429c9cbe45282d857d4f56bb3326" [label=""];
  "sha256:d7437244d0dae9fab8702f9753e017522b508376eb84b0e239bd37b2f6cb24cf" -> "sha256:e283521e57884c563bffbbb2e4d97464d6f7429c9cbe45282d857d4f56bb3326" [label=""];
  "sha256:e283521e57884c563bffbbb2e4d97464d6f7429c9cbe45282d857d4f56bb3326" -> "sha256:d81755468b2f5f17b1c9b33eed4a9c56c8b255d717d0e9771523c433d6bba19c" [label=""];
  "sha256:d81755468b2f5f17b1c9b33eed4a9c56c8b255d717d0e9771523c433d6bba19c" -> "sha256:5a3c898635a99aa7fb7215c2ba591eea7d0914fb90c51c9d9a61ebdd87fa8d52" [label=""];
}

