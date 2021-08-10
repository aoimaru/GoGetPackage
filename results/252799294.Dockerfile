[app/sources/252799294.Dockerfile]
digraph {
  "sha256:c75195e762116c0f57dfcc525e15f33187c6595b42ae6d2f9e313e730e56e0e2" [label="docker-image://docker.io/library/nginx:alpine" shape="ellipse"];
  "sha256:023a0ba3c2b9bcf26782018f5c8c43b0af77113725d9bc683da82b8d11abb0e0" [label="local://context" shape="ellipse"];
  "sha256:399be71913bdc14684120c6ae11df8894bfdbe6a847f9e56e27289996536d7d7" [label="copy{src=/vhost.conf, dest=/etc/nginx/conf.d/default.conf}" shape="note"];
  "sha256:c31b9ed77ecc30fb0b72845a042cd81925c876140ddca85c1fa5a60185704203" [label="mkdir{path=/var/www/html}" shape="note"];
  "sha256:2f61f33f3f8252bfd7d7e9740f38967c3694d2bd0264c57d5e6e26ef9e81911b" [label="sha256:2f61f33f3f8252bfd7d7e9740f38967c3694d2bd0264c57d5e6e26ef9e81911b" shape="plaintext"];
  "sha256:c75195e762116c0f57dfcc525e15f33187c6595b42ae6d2f9e313e730e56e0e2" -> "sha256:399be71913bdc14684120c6ae11df8894bfdbe6a847f9e56e27289996536d7d7" [label=""];
  "sha256:023a0ba3c2b9bcf26782018f5c8c43b0af77113725d9bc683da82b8d11abb0e0" -> "sha256:399be71913bdc14684120c6ae11df8894bfdbe6a847f9e56e27289996536d7d7" [label=""];
  "sha256:399be71913bdc14684120c6ae11df8894bfdbe6a847f9e56e27289996536d7d7" -> "sha256:c31b9ed77ecc30fb0b72845a042cd81925c876140ddca85c1fa5a60185704203" [label=""];
  "sha256:c31b9ed77ecc30fb0b72845a042cd81925c876140ddca85c1fa5a60185704203" -> "sha256:2f61f33f3f8252bfd7d7e9740f38967c3694d2bd0264c57d5e6e26ef9e81911b" [label=""];
}

