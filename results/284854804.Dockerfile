[app/sources/284854804.Dockerfile]
digraph {
  "sha256:7ddd05728eeb98a280e096f3b4337b6a93c017d2a00f8b41f0753806bf017dfa" [label="docker-image://docker.io/rainbond/rainbond-ui:VERSION" shape="ellipse"];
  "sha256:731cd00352d97ad3704a4f9df6adeb5c3adc6e0de16da5788cc013230f60d3d1" [label="/bin/sh -c mkdir -p /app/ui /usr/share/zoneinfo/Asia/" shape="box"];
  "sha256:2e2bd743d07a7c035d7b19c29f8f3f942cf8a7414a6878bbf388e0909d407b5e" [label="local://context" shape="ellipse"];
  "sha256:e6df4ff2f5f19638d04798fcba970ce63158b569f0d010822a365a3a950eff94" [label="copy{src=/, dest=/app/ui}" shape="note"];
  "sha256:345300631c5534ee6523029cf6c402b16b3bd029823fe281b92cd8b2e0fb58dd" [label="mkdir{path=/app/ui}" shape="note"];
  "sha256:3bff9a897f297cef723becd002f08ca892a62d68f9e8d517798ec4afba4c5cf1" [label="/bin/sh -c chmod +x /app/ui/entrypoint.sh &&      cp /app/ui/hack/Shanghai /usr/share/zoneinfo/Asia/Shanghai &&     mv /dist/index.html /app/ui/www/templates/index.html &&     rm -rf /app/ui/www/static/dists/* &&     cp -a /dist/* /app/ui/www/static/dists/ &&     rm -rf /dist" shape="box"];
  "sha256:b92af187abffdb92933d6b2f4ab7f9226cd314309ec9e57ef09c1790bcf98297" [label="/bin/sh -c apk update && apk --no-cache add --virtual .build-deps       build-base       gcc       libmemcached       libmemcached-dev       zlib-dev       cyrus-sasl       cyrus-sasl-dev       libc-dev       libffi-dev       mariadb-dev \tmariadb-client-libs       freetype-dev       libpng-dev       libjpeg-turbo-dev       py-mysqldb       && mkdir /app/logs       && pip install -r requirements.txt       && cp -a /usr/lib/libmysqlclient.so.18* /tmp/       && cp -a /usr/lib/libmemcached* /tmp/       && cp -a /usr/lib/libsas* /tmp/       && cp -a /usr/lib/libjpeg* /tmp/       && apk del .build-deps       && cp -a /tmp/lib* /usr/lib/       && python manage.py collectstatic --noinput       && rm -rf /root/.cache       && rm -rf /tmp/*       && rm -rf /app/ui/www/static/www/weavescope" shape="box"];
  "sha256:b1a2332c4dcdfdb9deca1645f318b3f75e8d8505d96e46d98cce21077376453f" [label="sha256:b1a2332c4dcdfdb9deca1645f318b3f75e8d8505d96e46d98cce21077376453f" shape="plaintext"];
  "sha256:7ddd05728eeb98a280e096f3b4337b6a93c017d2a00f8b41f0753806bf017dfa" -> "sha256:731cd00352d97ad3704a4f9df6adeb5c3adc6e0de16da5788cc013230f60d3d1" [label=""];
  "sha256:731cd00352d97ad3704a4f9df6adeb5c3adc6e0de16da5788cc013230f60d3d1" -> "sha256:e6df4ff2f5f19638d04798fcba970ce63158b569f0d010822a365a3a950eff94" [label=""];
  "sha256:2e2bd743d07a7c035d7b19c29f8f3f942cf8a7414a6878bbf388e0909d407b5e" -> "sha256:e6df4ff2f5f19638d04798fcba970ce63158b569f0d010822a365a3a950eff94" [label=""];
  "sha256:e6df4ff2f5f19638d04798fcba970ce63158b569f0d010822a365a3a950eff94" -> "sha256:345300631c5534ee6523029cf6c402b16b3bd029823fe281b92cd8b2e0fb58dd" [label=""];
  "sha256:345300631c5534ee6523029cf6c402b16b3bd029823fe281b92cd8b2e0fb58dd" -> "sha256:3bff9a897f297cef723becd002f08ca892a62d68f9e8d517798ec4afba4c5cf1" [label=""];
  "sha256:3bff9a897f297cef723becd002f08ca892a62d68f9e8d517798ec4afba4c5cf1" -> "sha256:b92af187abffdb92933d6b2f4ab7f9226cd314309ec9e57ef09c1790bcf98297" [label=""];
  "sha256:b92af187abffdb92933d6b2f4ab7f9226cd314309ec9e57ef09c1790bcf98297" -> "sha256:b1a2332c4dcdfdb9deca1645f318b3f75e8d8505d96e46d98cce21077376453f" [label=""];
}

