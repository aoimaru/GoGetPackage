[app/sources/208797903.Dockerfile]
digraph {
  "sha256:fbc1865a0c8782a4e330e68c092b66a76ee392f59ac88917f14e9e8cdebf785d" [label="docker-image://docker.io/library/php:7.0-apache" shape="ellipse"];
  "sha256:ac0595a2ab136b6a4d918ecf4c187f9f42d2bb334ba4ef3b2cb769ef7b18e179" [label="/bin/sh -c apt-get update && apt-get install -y \tlibfreetype6-dev \tlibjpeg62-turbo-dev \tlibmcrypt-dev \tlibpng12-dev \tcurl" shape="box"];
  "sha256:146e0f891e86ed6a175de0e9a5d3f5dc6071fe9d674c5935ac05e082c065e6db" [label="/bin/sh -c docker-php-ext-install \tzip \tmcrypt \tmysqli \t&& docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ \t&& docker-php-ext-install -j$(nproc) gd" shape="box"];
  "sha256:9d80878b53ec75ac006325b7604c8219d509e2944e1150a3ac2fccd64b8b5582" [label="/bin/sh -c usermod -u 1000 www-data" shape="box"];
  "sha256:de675e5fec014630fb2b56944738bb638629c73c63330e42955824f817ccf9dc" [label="/bin/sh -c a2enmod rewrite" shape="box"];
  "sha256:8a78e62722299b682ffef4d8cf91b196c3fbd31e864daf4a77391c5dd8f50ea4" [label="local://context" shape="ellipse"];
  "sha256:ba6c4f1dfff18c8be4f656943435582e9f08716e9aaf2fddceaf7d4f872f60bf" [label="copy{src=/apache2.conf, dest=/etc/apache2/apache2.conf}" shape="note"];
  "sha256:c4e976894b4c172dff68457fe3c59d4139a310c259228e6887a196712fbd59d1" [label="mkdir{path=/var/www/wordpress}" shape="note"];
  "sha256:179b425c0c6f6de3f6db0ee6014c113d80d9948340800be5ff5f51f58c004330" [label="sha256:179b425c0c6f6de3f6db0ee6014c113d80d9948340800be5ff5f51f58c004330" shape="plaintext"];
  "sha256:fbc1865a0c8782a4e330e68c092b66a76ee392f59ac88917f14e9e8cdebf785d" -> "sha256:ac0595a2ab136b6a4d918ecf4c187f9f42d2bb334ba4ef3b2cb769ef7b18e179" [label=""];
  "sha256:ac0595a2ab136b6a4d918ecf4c187f9f42d2bb334ba4ef3b2cb769ef7b18e179" -> "sha256:146e0f891e86ed6a175de0e9a5d3f5dc6071fe9d674c5935ac05e082c065e6db" [label=""];
  "sha256:146e0f891e86ed6a175de0e9a5d3f5dc6071fe9d674c5935ac05e082c065e6db" -> "sha256:9d80878b53ec75ac006325b7604c8219d509e2944e1150a3ac2fccd64b8b5582" [label=""];
  "sha256:9d80878b53ec75ac006325b7604c8219d509e2944e1150a3ac2fccd64b8b5582" -> "sha256:de675e5fec014630fb2b56944738bb638629c73c63330e42955824f817ccf9dc" [label=""];
  "sha256:de675e5fec014630fb2b56944738bb638629c73c63330e42955824f817ccf9dc" -> "sha256:ba6c4f1dfff18c8be4f656943435582e9f08716e9aaf2fddceaf7d4f872f60bf" [label=""];
  "sha256:8a78e62722299b682ffef4d8cf91b196c3fbd31e864daf4a77391c5dd8f50ea4" -> "sha256:ba6c4f1dfff18c8be4f656943435582e9f08716e9aaf2fddceaf7d4f872f60bf" [label=""];
  "sha256:ba6c4f1dfff18c8be4f656943435582e9f08716e9aaf2fddceaf7d4f872f60bf" -> "sha256:c4e976894b4c172dff68457fe3c59d4139a310c259228e6887a196712fbd59d1" [label=""];
  "sha256:c4e976894b4c172dff68457fe3c59d4139a310c259228e6887a196712fbd59d1" -> "sha256:179b425c0c6f6de3f6db0ee6014c113d80d9948340800be5ff5f51f58c004330" [label=""];
}

