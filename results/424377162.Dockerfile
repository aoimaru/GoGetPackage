[app/sources/424377162.Dockerfile]
digraph {
  "sha256:fb0b5f3e3df60ee7340bd6c35ef35660fd30484802060fe6deefaf441391f4c0" [label="docker-image://docker.io/library/alpine:3.8" shape="ellipse"];
  "sha256:432b7727822cf29fd859606e362bd8e2d44ddcda769c7c97021612e8d9c70f07" [label="mkdir{path=/usr/local/searx}" shape="note"];
  "sha256:ab4b587d0b442aa7a1baa7d7e77532fcc67453f671c51670a9cdaa374225f589" [label="/bin/sh -c adduser -D -h /usr/local/searx -s /bin/sh searx searx  && echo '#!/bin/sh' >> run.sh  && echo 'sed -i \"s|base_url : False|base_url : $BASE_URL|g\" searx/settings.yml' >> run.sh  && echo 'sed -i \"s/image_proxy : False/image_proxy : $IMAGE_PROXY/g\" searx/settings.yml' >> run.sh  && echo 'sed -i \"s/ultrasecretkey/`openssl rand -hex 16`/g\" searx/settings.yml' >> run.sh  && echo 'if [ -n \"$HTTP_PROXY_URL\" ] || [ -n \"$HTTPS_PROXY_URL\" ]; then' >> run.sh  && echo '  sed -i \"s~^#    proxies :~    proxies:\\\\n      http: ${HTTP_PROXY_URL}\\\\n      https: ${HTTPS_PROXY_URL}\\\\n~\" searx/settings.yml' >> run.sh  && echo 'fi' >> run.sh  && echo 'python searx/webapp.py' >> run.sh  && chmod +x run.sh" shape="box"];
  "sha256:7c9add9d89c75d7800f5f4baa84de0e6e1cb858b7958ca2bc4d11aacbdfd15d2" [label="local://context" shape="ellipse"];
  "sha256:1ea01dcde5ed445843e7c16cabd60072a1f0f2e0d7ecddc7c6938a47a8800983" [label="copy{src=/requirements.txt, dest=/usr/local/searx/requirements.txt}" shape="note"];
  "sha256:3ef028e19ff696b8e26a5492642a9949ef66d23c55fea3e360e9fae221164e9e" [label="/bin/sh -c echo \"@commuedge http://nl.alpinelinux.org/alpine/edge/community\" >> /etc/apk/repositories  && apk -U add     build-base     python     python-dev     py-pip     libxml2     libxml2-dev     libxslt     libxslt-dev     libffi-dev     openssl     openssl-dev     ca-certificates     tini@commuedge  && pip install --upgrade pip  && pip install --no-cache -r requirements.txt  && apk del     build-base     python-dev     libffi-dev     openssl-dev     libxslt-dev     libxml2-dev     openssl-dev     ca-certificates  && rm -f /var/cache/apk/*" shape="box"];
  "sha256:77dd65807db03e9726dbcf8a2887a42eea9fdae5534c35888c4761ba52c9c544" [label="copy{src=/, dest=/usr/local/searx/}" shape="note"];
  "sha256:f0c79e38db341442f185a0623d278514523beec68060e54bf81eae04b9c934cf" [label="/bin/sh -c chown -R searx:searx *" shape="box"];
  "sha256:4a6053c4ed91c3d64b4869707533a8aaa93de1ad6bb2dd304a22f67271f44df0" [label="/bin/sh -c sed -i \"s/127.0.0.1/0.0.0.0/g\" searx/settings.yml" shape="box"];
  "sha256:126032c73be825f0fd6b1c4bc5cb4897479dd6603188941c779b3345fa2d2e1f" [label="sha256:126032c73be825f0fd6b1c4bc5cb4897479dd6603188941c779b3345fa2d2e1f" shape="plaintext"];
  "sha256:fb0b5f3e3df60ee7340bd6c35ef35660fd30484802060fe6deefaf441391f4c0" -> "sha256:432b7727822cf29fd859606e362bd8e2d44ddcda769c7c97021612e8d9c70f07" [label=""];
  "sha256:432b7727822cf29fd859606e362bd8e2d44ddcda769c7c97021612e8d9c70f07" -> "sha256:ab4b587d0b442aa7a1baa7d7e77532fcc67453f671c51670a9cdaa374225f589" [label=""];
  "sha256:ab4b587d0b442aa7a1baa7d7e77532fcc67453f671c51670a9cdaa374225f589" -> "sha256:1ea01dcde5ed445843e7c16cabd60072a1f0f2e0d7ecddc7c6938a47a8800983" [label=""];
  "sha256:7c9add9d89c75d7800f5f4baa84de0e6e1cb858b7958ca2bc4d11aacbdfd15d2" -> "sha256:1ea01dcde5ed445843e7c16cabd60072a1f0f2e0d7ecddc7c6938a47a8800983" [label=""];
  "sha256:1ea01dcde5ed445843e7c16cabd60072a1f0f2e0d7ecddc7c6938a47a8800983" -> "sha256:3ef028e19ff696b8e26a5492642a9949ef66d23c55fea3e360e9fae221164e9e" [label=""];
  "sha256:3ef028e19ff696b8e26a5492642a9949ef66d23c55fea3e360e9fae221164e9e" -> "sha256:77dd65807db03e9726dbcf8a2887a42eea9fdae5534c35888c4761ba52c9c544" [label=""];
  "sha256:7c9add9d89c75d7800f5f4baa84de0e6e1cb858b7958ca2bc4d11aacbdfd15d2" -> "sha256:77dd65807db03e9726dbcf8a2887a42eea9fdae5534c35888c4761ba52c9c544" [label=""];
  "sha256:77dd65807db03e9726dbcf8a2887a42eea9fdae5534c35888c4761ba52c9c544" -> "sha256:f0c79e38db341442f185a0623d278514523beec68060e54bf81eae04b9c934cf" [label=""];
  "sha256:f0c79e38db341442f185a0623d278514523beec68060e54bf81eae04b9c934cf" -> "sha256:4a6053c4ed91c3d64b4869707533a8aaa93de1ad6bb2dd304a22f67271f44df0" [label=""];
  "sha256:4a6053c4ed91c3d64b4869707533a8aaa93de1ad6bb2dd304a22f67271f44df0" -> "sha256:126032c73be825f0fd6b1c4bc5cb4897479dd6603188941c779b3345fa2d2e1f" [label=""];
}

