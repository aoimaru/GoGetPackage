[app/sources/223123406.Dockerfile]
digraph {
  "sha256:143ec88cc5d5a87ccf4d9a3f3e619d1419376a646dc6c35d4e3f1bb75624ff56" [label="docker-image://docker.io/library/python:3.5" shape="ellipse"];
  "sha256:4c20b292b529a7e70dcf5c33d31103e9032f14c8d91d55eb803a8b8dd34244e7" [label="local://context" shape="ellipse"];
  "sha256:93bc2dc37070cc9da803b19e83e38f8465c31c4234b564ba9853da6cd1b1b045" [label="copy{src=/requirements, dest=/requirements}" shape="note"];
  "sha256:e776871c3f07ad0466f16a61ef7f3074d0b9d071f9e4509e98b9446eb1a2a716" [label="/bin/sh -c mkdir geos     && wget -q http://download.osgeo.org/geos/geos-3.4.2.tar.bz2 -O - | tar xfj - -C geos --strip-components 1     && cd geos && ./configure && make && make install && cd -     && rm -r geos" shape="box"];
  "sha256:11c464c06ed6c416aa7b7a0dabf80e184b44e724cd631b145d36343085c67799" [label="/bin/sh -c pip install --no-cache-dir -r /requirements/production.txt     && groupadd -r django     && useradd -r -g django django" shape="box"];
  "sha256:d817f40c19ad4fcbaa58afcefc420e3e37ef941d65adbffa39de64e96518ae76" [label="copy{src=/, dest=/app}" shape="note"];
  "sha256:bd083a5efaa3b1dc698bf5482580b840e8d68d77e3986399c117b5590090260a" [label="/bin/sh -c chown -R django /app" shape="box"];
  "sha256:c6fcebd3576c5777ec1c7b7713de7cfb8bdd040fb37fe9aa569a55c8d8c17f52" [label="copy{src=/compose/django/gunicorn.sh, dest=/gunicorn.sh}" shape="note"];
  "sha256:f04f6a3eeb3bd048bfa4752ae8431509c11b73697780583f4548d818c95ee814" [label="copy{src=/compose/django/entrypoint.sh, dest=/entrypoint.sh}" shape="note"];
  "sha256:da1b63bcd2b4b89f2ff44227685ddd912948dc64482381a7a8f1febdb24b16a5" [label="/bin/sh -c sed -i 's/\\r//' /entrypoint.sh     && sed -i 's/\\r//' /gunicorn.sh     && chmod +x /entrypoint.sh     && chown django /entrypoint.sh     && chmod +x /gunicorn.sh     && chown django /gunicorn.sh" shape="box"];
  "sha256:fb525c7eb0125831a439414030efb241e3513719aa85df9dc3059be72a2f3658" [label="mkdir{path=/app}" shape="note"];
  "sha256:7f3d37c9bc5ec915f705b057e94bc5a49ddbde0f7e654ea6baeca45d49ae4021" [label="sha256:7f3d37c9bc5ec915f705b057e94bc5a49ddbde0f7e654ea6baeca45d49ae4021" shape="plaintext"];
  "sha256:143ec88cc5d5a87ccf4d9a3f3e619d1419376a646dc6c35d4e3f1bb75624ff56" -> "sha256:93bc2dc37070cc9da803b19e83e38f8465c31c4234b564ba9853da6cd1b1b045" [label=""];
  "sha256:4c20b292b529a7e70dcf5c33d31103e9032f14c8d91d55eb803a8b8dd34244e7" -> "sha256:93bc2dc37070cc9da803b19e83e38f8465c31c4234b564ba9853da6cd1b1b045" [label=""];
  "sha256:93bc2dc37070cc9da803b19e83e38f8465c31c4234b564ba9853da6cd1b1b045" -> "sha256:e776871c3f07ad0466f16a61ef7f3074d0b9d071f9e4509e98b9446eb1a2a716" [label=""];
  "sha256:e776871c3f07ad0466f16a61ef7f3074d0b9d071f9e4509e98b9446eb1a2a716" -> "sha256:11c464c06ed6c416aa7b7a0dabf80e184b44e724cd631b145d36343085c67799" [label=""];
  "sha256:11c464c06ed6c416aa7b7a0dabf80e184b44e724cd631b145d36343085c67799" -> "sha256:d817f40c19ad4fcbaa58afcefc420e3e37ef941d65adbffa39de64e96518ae76" [label=""];
  "sha256:4c20b292b529a7e70dcf5c33d31103e9032f14c8d91d55eb803a8b8dd34244e7" -> "sha256:d817f40c19ad4fcbaa58afcefc420e3e37ef941d65adbffa39de64e96518ae76" [label=""];
  "sha256:d817f40c19ad4fcbaa58afcefc420e3e37ef941d65adbffa39de64e96518ae76" -> "sha256:bd083a5efaa3b1dc698bf5482580b840e8d68d77e3986399c117b5590090260a" [label=""];
  "sha256:bd083a5efaa3b1dc698bf5482580b840e8d68d77e3986399c117b5590090260a" -> "sha256:c6fcebd3576c5777ec1c7b7713de7cfb8bdd040fb37fe9aa569a55c8d8c17f52" [label=""];
  "sha256:4c20b292b529a7e70dcf5c33d31103e9032f14c8d91d55eb803a8b8dd34244e7" -> "sha256:c6fcebd3576c5777ec1c7b7713de7cfb8bdd040fb37fe9aa569a55c8d8c17f52" [label=""];
  "sha256:c6fcebd3576c5777ec1c7b7713de7cfb8bdd040fb37fe9aa569a55c8d8c17f52" -> "sha256:f04f6a3eeb3bd048bfa4752ae8431509c11b73697780583f4548d818c95ee814" [label=""];
  "sha256:4c20b292b529a7e70dcf5c33d31103e9032f14c8d91d55eb803a8b8dd34244e7" -> "sha256:f04f6a3eeb3bd048bfa4752ae8431509c11b73697780583f4548d818c95ee814" [label=""];
  "sha256:f04f6a3eeb3bd048bfa4752ae8431509c11b73697780583f4548d818c95ee814" -> "sha256:da1b63bcd2b4b89f2ff44227685ddd912948dc64482381a7a8f1febdb24b16a5" [label=""];
  "sha256:da1b63bcd2b4b89f2ff44227685ddd912948dc64482381a7a8f1febdb24b16a5" -> "sha256:fb525c7eb0125831a439414030efb241e3513719aa85df9dc3059be72a2f3658" [label=""];
  "sha256:fb525c7eb0125831a439414030efb241e3513719aa85df9dc3059be72a2f3658" -> "sha256:7f3d37c9bc5ec915f705b057e94bc5a49ddbde0f7e654ea6baeca45d49ae4021" [label=""];
}

