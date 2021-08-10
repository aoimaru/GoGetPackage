[app/sources/262666675.Dockerfile]
digraph {
  "sha256:f3f1165bd9fb04ce080ca04bc398a11faa97a64135e61b127ce74c2cc83ddecb" [label="docker-image://docker.io/library/java:openjdk-8" shape="ellipse"];
  "sha256:07291d0c28363e5c42630f8865858d04d23c69d64f246b5a122b46e23719f830" [label="local://context" shape="ellipse"];
  "sha256:9ed572ebb1a8e24d7645a4dc10dc52b178b9ad9019d3380067d76f27ee0a8d10" [label="copy{src=/build/libs/app.backend.jar, dest=/api-server/app.backend.jar}" shape="note"];
  "sha256:3423174ca9f8a91bdd74247d96663f5c5ad2447f7f31a67cf2d0af762c800fca" [label="copy{src=/entrypoint.sh, dest=/entrypoint.sh}" shape="note"];
  "sha256:4ead192461699210e879ad4ba8e6418673e74e1c8aa046d5f612935b22a740ca" [label="/bin/sh -c apt-get update &&     apt-get upgrade -y &&     apt-get install -y ca-certificates&&     echo \"export LANG=C.UTF-8\" > /etc/profile.d/locale.sh &&     rm -rf /etc/localtime &&     ln -sf /usr/share/zoneinfo/Asia/Tokyo /etc/localtime &&         mkdir -p /usr/local/api-server/lib &&     cp -R /api-server/app.backend.jar /usr/local/api-server/lib/app.backend.jar &&     rm -rf /api-server" shape="box"];
  "sha256:b7033dbc22a9a3d53cf6ba650786a8fac873586059e458161b8a1c5b6667a708" [label="sha256:b7033dbc22a9a3d53cf6ba650786a8fac873586059e458161b8a1c5b6667a708" shape="plaintext"];
  "sha256:f3f1165bd9fb04ce080ca04bc398a11faa97a64135e61b127ce74c2cc83ddecb" -> "sha256:9ed572ebb1a8e24d7645a4dc10dc52b178b9ad9019d3380067d76f27ee0a8d10" [label=""];
  "sha256:07291d0c28363e5c42630f8865858d04d23c69d64f246b5a122b46e23719f830" -> "sha256:9ed572ebb1a8e24d7645a4dc10dc52b178b9ad9019d3380067d76f27ee0a8d10" [label=""];
  "sha256:9ed572ebb1a8e24d7645a4dc10dc52b178b9ad9019d3380067d76f27ee0a8d10" -> "sha256:3423174ca9f8a91bdd74247d96663f5c5ad2447f7f31a67cf2d0af762c800fca" [label=""];
  "sha256:07291d0c28363e5c42630f8865858d04d23c69d64f246b5a122b46e23719f830" -> "sha256:3423174ca9f8a91bdd74247d96663f5c5ad2447f7f31a67cf2d0af762c800fca" [label=""];
  "sha256:3423174ca9f8a91bdd74247d96663f5c5ad2447f7f31a67cf2d0af762c800fca" -> "sha256:4ead192461699210e879ad4ba8e6418673e74e1c8aa046d5f612935b22a740ca" [label=""];
  "sha256:4ead192461699210e879ad4ba8e6418673e74e1c8aa046d5f612935b22a740ca" -> "sha256:b7033dbc22a9a3d53cf6ba650786a8fac873586059e458161b8a1c5b6667a708" [label=""];
}

