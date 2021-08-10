[app/sources/152156214.Dockerfile]
digraph {
  "sha256:5302843d2dbcdc70daa768ed854a92ace1acca51c6194779befcaf5558dd1367" [label="docker-image://docker.io/library/alpine:edge@sha256:2f77b6664f181b246244f9cd052155e74fb3f26d2a502edecd5fff0fc4bda388" shape="ellipse"];
  "sha256:1170302dab596fdd7c1e8169735954bf58d8dfe471e393ccf12786a6ec80a6d4" [label="/bin/sh -c apk add --no-cache stunnel" shape="box"];
  "sha256:279da36dc6cc27fb019beb544561d9705375ab744fae12dab8da428f4f10eba5" [label="local://context" shape="ellipse"];
  "sha256:c73a40b131f31e544ece08a4a49dfdccda91e8f8a7e1e1747d23d1564250dc29" [label="copy{src=/stunnel.conf, dest=/etc/stunnel/stunnel.conf}" shape="note"];
  "sha256:95b0a8423fd155579ade19b37d7bee864afe1b69df0d8fb6e6352088296fce38" [label="copy{src=/pki, dest=/etc/pki}" shape="note"];
  "sha256:3c7e96b061c1051f1571a24014a9ab369ff1f01d0eb862f59a75438dd3d30d16" [label="/bin/sh -c chmod 600 /etc/stunnel/stunnel.conf; \tchmod 600 /etc/pki/tls/certs/*; \tchmod 600 /etc/pki/tls/private/*;" shape="box"];
  "sha256:27ff26253e21a3b8867a951c37e4638d590db86a8a64d976bf28a31a3b2e2dc6" [label="sha256:27ff26253e21a3b8867a951c37e4638d590db86a8a64d976bf28a31a3b2e2dc6" shape="plaintext"];
  "sha256:5302843d2dbcdc70daa768ed854a92ace1acca51c6194779befcaf5558dd1367" -> "sha256:1170302dab596fdd7c1e8169735954bf58d8dfe471e393ccf12786a6ec80a6d4" [label=""];
  "sha256:1170302dab596fdd7c1e8169735954bf58d8dfe471e393ccf12786a6ec80a6d4" -> "sha256:c73a40b131f31e544ece08a4a49dfdccda91e8f8a7e1e1747d23d1564250dc29" [label=""];
  "sha256:279da36dc6cc27fb019beb544561d9705375ab744fae12dab8da428f4f10eba5" -> "sha256:c73a40b131f31e544ece08a4a49dfdccda91e8f8a7e1e1747d23d1564250dc29" [label=""];
  "sha256:c73a40b131f31e544ece08a4a49dfdccda91e8f8a7e1e1747d23d1564250dc29" -> "sha256:95b0a8423fd155579ade19b37d7bee864afe1b69df0d8fb6e6352088296fce38" [label=""];
  "sha256:279da36dc6cc27fb019beb544561d9705375ab744fae12dab8da428f4f10eba5" -> "sha256:95b0a8423fd155579ade19b37d7bee864afe1b69df0d8fb6e6352088296fce38" [label=""];
  "sha256:95b0a8423fd155579ade19b37d7bee864afe1b69df0d8fb6e6352088296fce38" -> "sha256:3c7e96b061c1051f1571a24014a9ab369ff1f01d0eb862f59a75438dd3d30d16" [label=""];
  "sha256:3c7e96b061c1051f1571a24014a9ab369ff1f01d0eb862f59a75438dd3d30d16" -> "sha256:27ff26253e21a3b8867a951c37e4638d590db86a8a64d976bf28a31a3b2e2dc6" [label=""];
}

