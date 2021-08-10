[app/sources/158065022.Dockerfile]
digraph {
  "sha256:fab1c280940aa45d4276d16fc4c57965176e81fcd682e35910723f75b963827a" [label="local://context" shape="ellipse"];
  "sha256:41fd22cdbd9ce09a6a60826c8a9ef9bad1acc47038b7403637e2e97b9bc3303b" [label="docker-image://docker.io/library/nginx:1.9" shape="ellipse"];
  "sha256:bbbd478de9007ab93ec4b836c4e0bfe120b67efb876cc25210030bcb50f6fbc1" [label="copy{src=/nginx.conf, dest=/etc/nginx/nginx.conf}" shape="note"];
  "sha256:694d1fcda2ca51d19733f3792e32a39c63f99c82347836182cbbf4c3880088cb" [label="copy{src=/registry.conf, dest=/etc/nginx/conf.d/registry.conf}" shape="note"];
  "sha256:34fd0f9710edf63761696c53b5f55f542a8d60a0db1c2ee79a38a4c24376c717" [label="copy{src=/docker-registry-v2.conf, dest=/etc/nginx/docker-registry-v2.conf}" shape="note"];
  "sha256:22ba0ecba136aea7a5e0b88336533428d61aff54aefbe3f90617f6b3122d8265" [label="copy{src=/registry-noauth.conf, dest=/etc/nginx/registry-noauth.conf}" shape="note"];
  "sha256:c2005c4238935ee3e1947ec3c80ab3b73cfbf7c2621a376f498b4f14dea2da79" [label="copy{src=/registry-basic.conf, dest=/etc/nginx/registry-basic.conf}" shape="note"];
  "sha256:b5d1a4f191fda54c6f5b465b3e141393c5ba24938a5db7699f22b99974b95711" [label="copy{src=/test.passwd, dest=/etc/nginx/test.passwd}" shape="note"];
  "sha256:0306b65deb5c00f4d8208f85d97e96fb9f7157114ad735b2c2c4008a1cf764b2" [label="copy{src=/ssl, dest=/etc/nginx/ssl}" shape="note"];
  "sha256:9bc04a448fe09e2ad302e05303984d5937942f0e2d495630dfcad89f67a29643" [label="copy{src=/v1, dest=/var/www/html/v1}" shape="note"];
  "sha256:2e5477628e2e394fbfe45dbc196893b792acbfeb8387386e6be9c45a7ef97af0" [label="sha256:2e5477628e2e394fbfe45dbc196893b792acbfeb8387386e6be9c45a7ef97af0" shape="plaintext"];
  "sha256:41fd22cdbd9ce09a6a60826c8a9ef9bad1acc47038b7403637e2e97b9bc3303b" -> "sha256:bbbd478de9007ab93ec4b836c4e0bfe120b67efb876cc25210030bcb50f6fbc1" [label=""];
  "sha256:fab1c280940aa45d4276d16fc4c57965176e81fcd682e35910723f75b963827a" -> "sha256:bbbd478de9007ab93ec4b836c4e0bfe120b67efb876cc25210030bcb50f6fbc1" [label=""];
  "sha256:bbbd478de9007ab93ec4b836c4e0bfe120b67efb876cc25210030bcb50f6fbc1" -> "sha256:694d1fcda2ca51d19733f3792e32a39c63f99c82347836182cbbf4c3880088cb" [label=""];
  "sha256:fab1c280940aa45d4276d16fc4c57965176e81fcd682e35910723f75b963827a" -> "sha256:694d1fcda2ca51d19733f3792e32a39c63f99c82347836182cbbf4c3880088cb" [label=""];
  "sha256:694d1fcda2ca51d19733f3792e32a39c63f99c82347836182cbbf4c3880088cb" -> "sha256:34fd0f9710edf63761696c53b5f55f542a8d60a0db1c2ee79a38a4c24376c717" [label=""];
  "sha256:fab1c280940aa45d4276d16fc4c57965176e81fcd682e35910723f75b963827a" -> "sha256:34fd0f9710edf63761696c53b5f55f542a8d60a0db1c2ee79a38a4c24376c717" [label=""];
  "sha256:34fd0f9710edf63761696c53b5f55f542a8d60a0db1c2ee79a38a4c24376c717" -> "sha256:22ba0ecba136aea7a5e0b88336533428d61aff54aefbe3f90617f6b3122d8265" [label=""];
  "sha256:fab1c280940aa45d4276d16fc4c57965176e81fcd682e35910723f75b963827a" -> "sha256:22ba0ecba136aea7a5e0b88336533428d61aff54aefbe3f90617f6b3122d8265" [label=""];
  "sha256:22ba0ecba136aea7a5e0b88336533428d61aff54aefbe3f90617f6b3122d8265" -> "sha256:c2005c4238935ee3e1947ec3c80ab3b73cfbf7c2621a376f498b4f14dea2da79" [label=""];
  "sha256:fab1c280940aa45d4276d16fc4c57965176e81fcd682e35910723f75b963827a" -> "sha256:c2005c4238935ee3e1947ec3c80ab3b73cfbf7c2621a376f498b4f14dea2da79" [label=""];
  "sha256:c2005c4238935ee3e1947ec3c80ab3b73cfbf7c2621a376f498b4f14dea2da79" -> "sha256:b5d1a4f191fda54c6f5b465b3e141393c5ba24938a5db7699f22b99974b95711" [label=""];
  "sha256:fab1c280940aa45d4276d16fc4c57965176e81fcd682e35910723f75b963827a" -> "sha256:b5d1a4f191fda54c6f5b465b3e141393c5ba24938a5db7699f22b99974b95711" [label=""];
  "sha256:b5d1a4f191fda54c6f5b465b3e141393c5ba24938a5db7699f22b99974b95711" -> "sha256:0306b65deb5c00f4d8208f85d97e96fb9f7157114ad735b2c2c4008a1cf764b2" [label=""];
  "sha256:fab1c280940aa45d4276d16fc4c57965176e81fcd682e35910723f75b963827a" -> "sha256:0306b65deb5c00f4d8208f85d97e96fb9f7157114ad735b2c2c4008a1cf764b2" [label=""];
  "sha256:0306b65deb5c00f4d8208f85d97e96fb9f7157114ad735b2c2c4008a1cf764b2" -> "sha256:9bc04a448fe09e2ad302e05303984d5937942f0e2d495630dfcad89f67a29643" [label=""];
  "sha256:fab1c280940aa45d4276d16fc4c57965176e81fcd682e35910723f75b963827a" -> "sha256:9bc04a448fe09e2ad302e05303984d5937942f0e2d495630dfcad89f67a29643" [label=""];
  "sha256:9bc04a448fe09e2ad302e05303984d5937942f0e2d495630dfcad89f67a29643" -> "sha256:2e5477628e2e394fbfe45dbc196893b792acbfeb8387386e6be9c45a7ef97af0" [label=""];
}

