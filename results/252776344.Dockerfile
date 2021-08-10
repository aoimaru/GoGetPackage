[app/sources/252776344.Dockerfile]
digraph {
  "sha256:85d6fa00c118eafc51ac23a7fefe3fb7c564cc5ff296870f1160218c24623229" [label="docker-image://docker.io/dorwardv/wordpress-sqlite-nginx-docker:latest" shape="ellipse"];
  "sha256:ceb871adffbed2b72a1efc7945976497b18b0d6bc1bd08416b87a7c531ac95b6" [label="local://context" shape="ellipse"];
  "sha256:91e5b85709d5f60069e7570dec7a8704d9e6de4f3a862736c4ec0db3a91a42be" [label="copy{src=/wp-content, dest=/usr/share/nginx/html/wp-content/}" shape="note"];
  "sha256:4c7e7616940c322ae61324e57a8dbdf0d1b13daac796a38b692aaf2fcb88b954" [label="/bin/sh -c chown -R www-data /usr/share/nginx/html/wp-content/" shape="box"];
  "sha256:ef144c230c10baa924cbcc054b51813911385d1297de5c608bb4fcc3904c5352" [label="sha256:ef144c230c10baa924cbcc054b51813911385d1297de5c608bb4fcc3904c5352" shape="plaintext"];
  "sha256:85d6fa00c118eafc51ac23a7fefe3fb7c564cc5ff296870f1160218c24623229" -> "sha256:91e5b85709d5f60069e7570dec7a8704d9e6de4f3a862736c4ec0db3a91a42be" [label=""];
  "sha256:ceb871adffbed2b72a1efc7945976497b18b0d6bc1bd08416b87a7c531ac95b6" -> "sha256:91e5b85709d5f60069e7570dec7a8704d9e6de4f3a862736c4ec0db3a91a42be" [label=""];
  "sha256:91e5b85709d5f60069e7570dec7a8704d9e6de4f3a862736c4ec0db3a91a42be" -> "sha256:4c7e7616940c322ae61324e57a8dbdf0d1b13daac796a38b692aaf2fcb88b954" [label=""];
  "sha256:4c7e7616940c322ae61324e57a8dbdf0d1b13daac796a38b692aaf2fcb88b954" -> "sha256:ef144c230c10baa924cbcc054b51813911385d1297de5c608bb4fcc3904c5352" [label=""];
}

