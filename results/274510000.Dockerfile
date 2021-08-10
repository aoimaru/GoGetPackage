[app/sources/274510000.Dockerfile]
digraph {
  "sha256:02aa3009932c0a1368b12ef7d83a8c786351eab2712a1673173cc968f8deb733" [label="docker-image://docker.io/gendosu/alpine-apache:latest" shape="ellipse"];
  "sha256:c077e45f96573469a5239c0d82f3da555b6a974d8860c5721f910013c9d5bd9d" [label="/bin/sh -c apk add --no-cache apache2-proxy;      addgroup -g 1000 -S www;      adduser -G www -u 1000 -s /bin/sh -D www;" shape="box"];
  "sha256:2bc717237e7236962db578b2ceb2b73c8aaa23bc2f017e5de50a3035b67236b7" [label="local://context" shape="ellipse"];
  "sha256:c2d1d6c60d079c928b5c24eddcd60cb422bdf1d42d1c8a06c34dd45513cb356d" [label="copy{src=/conf, dest=/etc/apache2}" shape="note"];
  "sha256:bdc3b84f2e7fbbac3cafccb55267d8ff0d8aa9e8da94533255fd09315b2ddcec" [label="sha256:bdc3b84f2e7fbbac3cafccb55267d8ff0d8aa9e8da94533255fd09315b2ddcec" shape="plaintext"];
  "sha256:02aa3009932c0a1368b12ef7d83a8c786351eab2712a1673173cc968f8deb733" -> "sha256:c077e45f96573469a5239c0d82f3da555b6a974d8860c5721f910013c9d5bd9d" [label=""];
  "sha256:c077e45f96573469a5239c0d82f3da555b6a974d8860c5721f910013c9d5bd9d" -> "sha256:c2d1d6c60d079c928b5c24eddcd60cb422bdf1d42d1c8a06c34dd45513cb356d" [label=""];
  "sha256:2bc717237e7236962db578b2ceb2b73c8aaa23bc2f017e5de50a3035b67236b7" -> "sha256:c2d1d6c60d079c928b5c24eddcd60cb422bdf1d42d1c8a06c34dd45513cb356d" [label=""];
  "sha256:c2d1d6c60d079c928b5c24eddcd60cb422bdf1d42d1c8a06c34dd45513cb356d" -> "sha256:bdc3b84f2e7fbbac3cafccb55267d8ff0d8aa9e8da94533255fd09315b2ddcec" [label=""];
}

