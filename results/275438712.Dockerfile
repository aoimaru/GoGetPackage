[app/sources/275438712.Dockerfile]
digraph {
  "sha256:c9efb90339c18076f420dd54048779aa84b25d2965dfe9913cdd0c8b76707871" [label="docker-image://docker.io/eboraas/apache-php:latest" shape="ellipse"];
  "sha256:75e474cdf2992e17e17d4bf9d6fcfb2a75e1644a5bae1cbafb4734c270f19361" [label="local://context" shape="ellipse"];
  "sha256:04514b681a907cc5cf32977c8b425f72a3b20a31d7e09f03847cc66b370f63f8" [label="copy{src=/src, dest=/var/www/html/}" shape="note"];
  "sha256:cddb5c1d6991895e64ee1a9541313fbb4a2a42fcf8145b0b18a96d2084a5698d" [label="/bin/sh -c rm /var/www/html/index.html     && chmod -R 755 /var/www/html" shape="box"];
  "sha256:d2f2e156ae3352c2792235d9a2a09c916a6cad41bf0e3a930a1fb7813e03950e" [label="sha256:d2f2e156ae3352c2792235d9a2a09c916a6cad41bf0e3a930a1fb7813e03950e" shape="plaintext"];
  "sha256:c9efb90339c18076f420dd54048779aa84b25d2965dfe9913cdd0c8b76707871" -> "sha256:04514b681a907cc5cf32977c8b425f72a3b20a31d7e09f03847cc66b370f63f8" [label=""];
  "sha256:75e474cdf2992e17e17d4bf9d6fcfb2a75e1644a5bae1cbafb4734c270f19361" -> "sha256:04514b681a907cc5cf32977c8b425f72a3b20a31d7e09f03847cc66b370f63f8" [label=""];
  "sha256:04514b681a907cc5cf32977c8b425f72a3b20a31d7e09f03847cc66b370f63f8" -> "sha256:cddb5c1d6991895e64ee1a9541313fbb4a2a42fcf8145b0b18a96d2084a5698d" [label=""];
  "sha256:cddb5c1d6991895e64ee1a9541313fbb4a2a42fcf8145b0b18a96d2084a5698d" -> "sha256:d2f2e156ae3352c2792235d9a2a09c916a6cad41bf0e3a930a1fb7813e03950e" [label=""];
}

