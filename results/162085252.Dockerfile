[app/sources/162085252.Dockerfile]
digraph {
  "sha256:fb0b5f3e3df60ee7340bd6c35ef35660fd30484802060fe6deefaf441391f4c0" [label="docker-image://docker.io/library/alpine:3.8" shape="ellipse"];
  "sha256:0c6564c77900905a9a73747e42b8ce346585aa2780f878b4e5e28490cab915e3" [label="/bin/sh -c apk update &&     apk upgrade &&     apk add --no-cache         su-exec emacs-nox the_silver_searcher git openssh-client libressl         gnupg &&     rm -rf /usr/share/man /tmp/* /var/cache/apk/* /var/log/* ~/.cache" shape="box"];
  "sha256:fa49af569e2d82434ac79fc195a826e715529dbed99ebaf62d149f5150b875fa" [label="local://context" shape="ellipse"];
  "sha256:822e7aa63721567f8d484ac5cc651255e7401932d2292de1db33a61c29493248" [label="copy{src=/sbin/*, dest=/usr/local/sbin/}" shape="note"];
  "sha256:e1ea286ba7edad9f91c3cc40e8289707efb26201d6ff715c5640d106970b9031" [label="/bin/sh -c chown root /usr/local/sbin/initialize &&     chmod +x /usr/local/sbin/* &&     chmod 700 /usr/local/sbin/initialize" shape="box"];
  "sha256:e76365f005f40244af82e26f2c011cf0a28c3a62d6bc7bea2d5f1b86aa6b2b63" [label="/bin/sh -c apk update &&     apk upgrade &&     apk add --no-cache bash python curl gnutls-utils &&     git clone --depth 1 https://github.com/cask/cask.git \"$CASK\" &&     rm -rf /usr/share/man /tmp/* /var/cache/apk/* /var/log/* ~/.cache" shape="box"];
  "sha256:56b45837e0fbb537df5aebd4bb4ea99a0d4817fc182437ad57474595358cf210" [label="copy{src=/, dest=/home/emacser/.emacs.d/}" shape="note"];
  "sha256:0b120f0f082308c53b70e5f35a0bf46da61ba31e65ae0b7fed0047dd85066760" [label="mkdir{path=/mnt/workspace}" shape="note"];
  "sha256:615cc5b7765e8f044480a72e611e67b50f66af98b7fcf0b7f5be0be62d139059" [label="sha256:615cc5b7765e8f044480a72e611e67b50f66af98b7fcf0b7f5be0be62d139059" shape="plaintext"];
  "sha256:fb0b5f3e3df60ee7340bd6c35ef35660fd30484802060fe6deefaf441391f4c0" -> "sha256:0c6564c77900905a9a73747e42b8ce346585aa2780f878b4e5e28490cab915e3" [label=""];
  "sha256:0c6564c77900905a9a73747e42b8ce346585aa2780f878b4e5e28490cab915e3" -> "sha256:822e7aa63721567f8d484ac5cc651255e7401932d2292de1db33a61c29493248" [label=""];
  "sha256:fa49af569e2d82434ac79fc195a826e715529dbed99ebaf62d149f5150b875fa" -> "sha256:822e7aa63721567f8d484ac5cc651255e7401932d2292de1db33a61c29493248" [label=""];
  "sha256:822e7aa63721567f8d484ac5cc651255e7401932d2292de1db33a61c29493248" -> "sha256:e1ea286ba7edad9f91c3cc40e8289707efb26201d6ff715c5640d106970b9031" [label=""];
  "sha256:e1ea286ba7edad9f91c3cc40e8289707efb26201d6ff715c5640d106970b9031" -> "sha256:e76365f005f40244af82e26f2c011cf0a28c3a62d6bc7bea2d5f1b86aa6b2b63" [label=""];
  "sha256:e76365f005f40244af82e26f2c011cf0a28c3a62d6bc7bea2d5f1b86aa6b2b63" -> "sha256:56b45837e0fbb537df5aebd4bb4ea99a0d4817fc182437ad57474595358cf210" [label=""];
  "sha256:fa49af569e2d82434ac79fc195a826e715529dbed99ebaf62d149f5150b875fa" -> "sha256:56b45837e0fbb537df5aebd4bb4ea99a0d4817fc182437ad57474595358cf210" [label=""];
  "sha256:56b45837e0fbb537df5aebd4bb4ea99a0d4817fc182437ad57474595358cf210" -> "sha256:0b120f0f082308c53b70e5f35a0bf46da61ba31e65ae0b7fed0047dd85066760" [label=""];
  "sha256:0b120f0f082308c53b70e5f35a0bf46da61ba31e65ae0b7fed0047dd85066760" -> "sha256:615cc5b7765e8f044480a72e611e67b50f66af98b7fcf0b7f5be0be62d139059" [label=""];
}

