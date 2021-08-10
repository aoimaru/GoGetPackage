[app/sources/285656003.Dockerfile]
digraph {
  "sha256:6e46e8a4294c363ac6f38d27510cf18cad44d87d41e64283749539e0f18793e7" [label="local://context" shape="ellipse"];
  "sha256:41fd22cdbd9ce09a6a60826c8a9ef9bad1acc47038b7403637e2e97b9bc3303b" [label="docker-image://docker.io/library/nginx:1.9" shape="ellipse"];
  "sha256:5d5a5f10b081974aa05ec72fbb72a39a71715f40139ae473084b3ac00cdfb61a" [label="copy{src=/nginx.conf, dest=/etc/nginx/nginx.conf}" shape="note"];
  "sha256:93b6a943fa871c169a6b902a54f8901a19b99df8eabad03209ebfb2843e7d6e8" [label="copy{src=/registry.conf, dest=/etc/nginx/conf.d/registry.conf}" shape="note"];
  "sha256:7ebe575858a577507e1a2ee5f7bd95750496a81331bc32345d2c41870facb93f" [label="copy{src=/docker-registry-v2.conf, dest=/etc/nginx/docker-registry-v2.conf}" shape="note"];
  "sha256:2a03bdc9131d98d3f2da052c77a1cfae14ac3498444d679d284d0ca982538307" [label="copy{src=/registry-noauth.conf, dest=/etc/nginx/registry-noauth.conf}" shape="note"];
  "sha256:e2ff11ebfb5fe4a1c83176689cba7e88621b69685bd049492547b124bffb6c6d" [label="copy{src=/registry-basic.conf, dest=/etc/nginx/registry-basic.conf}" shape="note"];
  "sha256:2bf8a8f28fb85f840926e88bc1c75ca3ac3999cd05a6b305260ceca80355db53" [label="copy{src=/test.passwd, dest=/etc/nginx/test.passwd}" shape="note"];
  "sha256:6914447aecb45cf2c7f0dc4889a486ffac22f6fd5bab37e2a240380eedd11e22" [label="copy{src=/ssl, dest=/etc/nginx/ssl}" shape="note"];
  "sha256:edc7f870ed545d11c1f48471cb1bb36bc0f0d6ffb5340864dd15085992831bfa" [label="copy{src=/v1, dest=/var/www/html/v1}" shape="note"];
  "sha256:32b154a4955dd52cddb3e7036113d2fbb1e0ef8a6e05bc12c8a442b67d12a7ea" [label="sha256:32b154a4955dd52cddb3e7036113d2fbb1e0ef8a6e05bc12c8a442b67d12a7ea" shape="plaintext"];
  "sha256:41fd22cdbd9ce09a6a60826c8a9ef9bad1acc47038b7403637e2e97b9bc3303b" -> "sha256:5d5a5f10b081974aa05ec72fbb72a39a71715f40139ae473084b3ac00cdfb61a" [label=""];
  "sha256:6e46e8a4294c363ac6f38d27510cf18cad44d87d41e64283749539e0f18793e7" -> "sha256:5d5a5f10b081974aa05ec72fbb72a39a71715f40139ae473084b3ac00cdfb61a" [label=""];
  "sha256:5d5a5f10b081974aa05ec72fbb72a39a71715f40139ae473084b3ac00cdfb61a" -> "sha256:93b6a943fa871c169a6b902a54f8901a19b99df8eabad03209ebfb2843e7d6e8" [label=""];
  "sha256:6e46e8a4294c363ac6f38d27510cf18cad44d87d41e64283749539e0f18793e7" -> "sha256:93b6a943fa871c169a6b902a54f8901a19b99df8eabad03209ebfb2843e7d6e8" [label=""];
  "sha256:93b6a943fa871c169a6b902a54f8901a19b99df8eabad03209ebfb2843e7d6e8" -> "sha256:7ebe575858a577507e1a2ee5f7bd95750496a81331bc32345d2c41870facb93f" [label=""];
  "sha256:6e46e8a4294c363ac6f38d27510cf18cad44d87d41e64283749539e0f18793e7" -> "sha256:7ebe575858a577507e1a2ee5f7bd95750496a81331bc32345d2c41870facb93f" [label=""];
  "sha256:7ebe575858a577507e1a2ee5f7bd95750496a81331bc32345d2c41870facb93f" -> "sha256:2a03bdc9131d98d3f2da052c77a1cfae14ac3498444d679d284d0ca982538307" [label=""];
  "sha256:6e46e8a4294c363ac6f38d27510cf18cad44d87d41e64283749539e0f18793e7" -> "sha256:2a03bdc9131d98d3f2da052c77a1cfae14ac3498444d679d284d0ca982538307" [label=""];
  "sha256:2a03bdc9131d98d3f2da052c77a1cfae14ac3498444d679d284d0ca982538307" -> "sha256:e2ff11ebfb5fe4a1c83176689cba7e88621b69685bd049492547b124bffb6c6d" [label=""];
  "sha256:6e46e8a4294c363ac6f38d27510cf18cad44d87d41e64283749539e0f18793e7" -> "sha256:e2ff11ebfb5fe4a1c83176689cba7e88621b69685bd049492547b124bffb6c6d" [label=""];
  "sha256:e2ff11ebfb5fe4a1c83176689cba7e88621b69685bd049492547b124bffb6c6d" -> "sha256:2bf8a8f28fb85f840926e88bc1c75ca3ac3999cd05a6b305260ceca80355db53" [label=""];
  "sha256:6e46e8a4294c363ac6f38d27510cf18cad44d87d41e64283749539e0f18793e7" -> "sha256:2bf8a8f28fb85f840926e88bc1c75ca3ac3999cd05a6b305260ceca80355db53" [label=""];
  "sha256:2bf8a8f28fb85f840926e88bc1c75ca3ac3999cd05a6b305260ceca80355db53" -> "sha256:6914447aecb45cf2c7f0dc4889a486ffac22f6fd5bab37e2a240380eedd11e22" [label=""];
  "sha256:6e46e8a4294c363ac6f38d27510cf18cad44d87d41e64283749539e0f18793e7" -> "sha256:6914447aecb45cf2c7f0dc4889a486ffac22f6fd5bab37e2a240380eedd11e22" [label=""];
  "sha256:6914447aecb45cf2c7f0dc4889a486ffac22f6fd5bab37e2a240380eedd11e22" -> "sha256:edc7f870ed545d11c1f48471cb1bb36bc0f0d6ffb5340864dd15085992831bfa" [label=""];
  "sha256:6e46e8a4294c363ac6f38d27510cf18cad44d87d41e64283749539e0f18793e7" -> "sha256:edc7f870ed545d11c1f48471cb1bb36bc0f0d6ffb5340864dd15085992831bfa" [label=""];
  "sha256:edc7f870ed545d11c1f48471cb1bb36bc0f0d6ffb5340864dd15085992831bfa" -> "sha256:32b154a4955dd52cddb3e7036113d2fbb1e0ef8a6e05bc12c8a442b67d12a7ea" [label=""];
}

