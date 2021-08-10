[app/sources/418730947.Dockerfile]
digraph {
  "sha256:2b2b4e887949b86501c0a86d161d9bf34fc7850c7e7140d2b3e2f5549c388245" [label="docker-image://docker.io/library/nginx:1.15.8-perl" shape="ellipse"];
  "sha256:4a63c343b71e97f2cb6b035abc2cc7db53a81ff7b7175636adb2fab1cb13e5f7" [label="/bin/sh -c apt-get update     && apt-get install -y curl     && curl -L https://github.com/swagger-api/swagger-ui/archive/v${SWAGGER_UI_VERSION}.tar.gz | tar -zxv -C /tmp     && cp -R /tmp/swagger-ui-${SWAGGER_UI_VERSION}/dist/* /usr/share/nginx/html     && rm -rf /tmp/*" shape="box"];
  "sha256:da531f5eb857a00a19bb68728745c05601ccb5af1e6e5124a97a7c06a6727ef3" [label="/bin/sh -c rm /etc/nginx/conf.d/default.conf" shape="box"];
  "sha256:ecb23621070e8a83d772e521484057a589bfd9360e0ed35f99a4e473a7798441" [label="local://context" shape="ellipse"];
  "sha256:5ee5cf5a707fd54f4916f4d9b943df3151127237b68b4b1fa928e3457a366eb0" [label="copy{src=/nginx.conf, dest=/etc/nginx/conf.d}" shape="note"];
  "sha256:fae034f099fa965c6a173fa24f8bb8047d31ac598cd4705acd5a140ef95cfbb7" [label="copy{src=/swagger.json, dest=/usr/share/nginx/html/swagger.json}" shape="note"];
  "sha256:2d4dfee2d201172f03fd33f5c815490b1aab08315191cc12d9c40dd4de7007bd" [label="copy{src=/start.sh, dest=/start.sh}" shape="note"];
  "sha256:28fb251b24db5b9792449fd92edcf1d7bb57ca1a2a4061257a2b0e6cbdfc6616" [label="chmod +x /start.sh" shape="box"];
  "sha256:9d3699c76fa0ca23ca42e1e48747a6172ad3282f1f729b3502f1a7a171e207de" [label="sha256:9d3699c76fa0ca23ca42e1e48747a6172ad3282f1f729b3502f1a7a171e207de" shape="plaintext"];
  "sha256:2b2b4e887949b86501c0a86d161d9bf34fc7850c7e7140d2b3e2f5549c388245" -> "sha256:4a63c343b71e97f2cb6b035abc2cc7db53a81ff7b7175636adb2fab1cb13e5f7" [label=""];
  "sha256:4a63c343b71e97f2cb6b035abc2cc7db53a81ff7b7175636adb2fab1cb13e5f7" -> "sha256:da531f5eb857a00a19bb68728745c05601ccb5af1e6e5124a97a7c06a6727ef3" [label=""];
  "sha256:da531f5eb857a00a19bb68728745c05601ccb5af1e6e5124a97a7c06a6727ef3" -> "sha256:5ee5cf5a707fd54f4916f4d9b943df3151127237b68b4b1fa928e3457a366eb0" [label=""];
  "sha256:ecb23621070e8a83d772e521484057a589bfd9360e0ed35f99a4e473a7798441" -> "sha256:5ee5cf5a707fd54f4916f4d9b943df3151127237b68b4b1fa928e3457a366eb0" [label=""];
  "sha256:5ee5cf5a707fd54f4916f4d9b943df3151127237b68b4b1fa928e3457a366eb0" -> "sha256:fae034f099fa965c6a173fa24f8bb8047d31ac598cd4705acd5a140ef95cfbb7" [label=""];
  "sha256:ecb23621070e8a83d772e521484057a589bfd9360e0ed35f99a4e473a7798441" -> "sha256:fae034f099fa965c6a173fa24f8bb8047d31ac598cd4705acd5a140ef95cfbb7" [label=""];
  "sha256:fae034f099fa965c6a173fa24f8bb8047d31ac598cd4705acd5a140ef95cfbb7" -> "sha256:2d4dfee2d201172f03fd33f5c815490b1aab08315191cc12d9c40dd4de7007bd" [label=""];
  "sha256:ecb23621070e8a83d772e521484057a589bfd9360e0ed35f99a4e473a7798441" -> "sha256:2d4dfee2d201172f03fd33f5c815490b1aab08315191cc12d9c40dd4de7007bd" [label=""];
  "sha256:2d4dfee2d201172f03fd33f5c815490b1aab08315191cc12d9c40dd4de7007bd" -> "sha256:28fb251b24db5b9792449fd92edcf1d7bb57ca1a2a4061257a2b0e6cbdfc6616" [label=""];
  "sha256:28fb251b24db5b9792449fd92edcf1d7bb57ca1a2a4061257a2b0e6cbdfc6616" -> "sha256:9d3699c76fa0ca23ca42e1e48747a6172ad3282f1f729b3502f1a7a171e207de" [label=""];
}

