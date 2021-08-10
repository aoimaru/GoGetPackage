[app/sources/326855833.Dockerfile]
digraph {
  "sha256:56dbfc7ecef8b6bbe4bc3cd95b405269ecce3ffa67f4a1f5976ff56e11f0c647" [label="docker-image://docker.io/library/php:7.2-apache" shape="ellipse"];
  "sha256:5d62783e3d67751fc31f55e2374c1510a93ee9d909fe5c455aa39438372d9074" [label="/bin/sh -c sed -i 's/Listen 80/Listen 8080/' /etc/apache2/ports.conf" shape="box"];
  "sha256:fd11dc4c8bc11bee3f2889afd4b74b22d43983d22075c8ab709aa4c2ff8348d0" [label="/bin/sh -c cat /etc/apache2/ports.conf" shape="box"];
  "sha256:16f99b8d3408e7242b7b6d620c23516a7aba43c3bb41706ba572537061d12ed2" [label="/bin/sh -c chmod 777 /var/run/apache2" shape="box"];
  "sha256:d393e7e0a4bdf4d38e34292e0bc7fc04bc14ab84a14790b1da7ee13e65815abf" [label="/bin/sh -c a2enmod rewrite" shape="box"];
  "sha256:7319ab1403cc18de591603687f24d5850c55586fddb5ef2edbe1766e1c1575fa" [label="local://context" shape="ellipse"];
  "sha256:9531ad040d71191d544c3435dfedad8aaed74329f280b203ee955467461f783e" [label="copy{src=/.htaccess, dest=/var/www/html/}" shape="note"];
  "sha256:1e8bd124dee7ef2e332ad433ac2ff9ea605b0ed8407124fff65cb5b59ba3834c" [label="copy{src=/*.php, dest=/var/www/html/}" shape="note"];
  "sha256:5fc9e32fb342e4dea36e9a054c34d0ca6e8179d95f73bc6967f575e771582a40" [label="sha256:5fc9e32fb342e4dea36e9a054c34d0ca6e8179d95f73bc6967f575e771582a40" shape="plaintext"];
  "sha256:56dbfc7ecef8b6bbe4bc3cd95b405269ecce3ffa67f4a1f5976ff56e11f0c647" -> "sha256:5d62783e3d67751fc31f55e2374c1510a93ee9d909fe5c455aa39438372d9074" [label=""];
  "sha256:5d62783e3d67751fc31f55e2374c1510a93ee9d909fe5c455aa39438372d9074" -> "sha256:fd11dc4c8bc11bee3f2889afd4b74b22d43983d22075c8ab709aa4c2ff8348d0" [label=""];
  "sha256:fd11dc4c8bc11bee3f2889afd4b74b22d43983d22075c8ab709aa4c2ff8348d0" -> "sha256:16f99b8d3408e7242b7b6d620c23516a7aba43c3bb41706ba572537061d12ed2" [label=""];
  "sha256:16f99b8d3408e7242b7b6d620c23516a7aba43c3bb41706ba572537061d12ed2" -> "sha256:d393e7e0a4bdf4d38e34292e0bc7fc04bc14ab84a14790b1da7ee13e65815abf" [label=""];
  "sha256:d393e7e0a4bdf4d38e34292e0bc7fc04bc14ab84a14790b1da7ee13e65815abf" -> "sha256:9531ad040d71191d544c3435dfedad8aaed74329f280b203ee955467461f783e" [label=""];
  "sha256:7319ab1403cc18de591603687f24d5850c55586fddb5ef2edbe1766e1c1575fa" -> "sha256:9531ad040d71191d544c3435dfedad8aaed74329f280b203ee955467461f783e" [label=""];
  "sha256:9531ad040d71191d544c3435dfedad8aaed74329f280b203ee955467461f783e" -> "sha256:1e8bd124dee7ef2e332ad433ac2ff9ea605b0ed8407124fff65cb5b59ba3834c" [label=""];
  "sha256:7319ab1403cc18de591603687f24d5850c55586fddb5ef2edbe1766e1c1575fa" -> "sha256:1e8bd124dee7ef2e332ad433ac2ff9ea605b0ed8407124fff65cb5b59ba3834c" [label=""];
  "sha256:1e8bd124dee7ef2e332ad433ac2ff9ea605b0ed8407124fff65cb5b59ba3834c" -> "sha256:5fc9e32fb342e4dea36e9a054c34d0ca6e8179d95f73bc6967f575e771582a40" [label=""];
}

