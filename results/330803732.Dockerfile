[app/sources/330803732.Dockerfile]
digraph {
  "sha256:930c1ba58f9a19122d3828463452df235612d10ba3675ae31ea71ac11735296f" [label="docker-image://docker.io/astronomerinc/ap-base:0.10.0-alpha.1" shape="ellipse"];
  "sha256:39849d1e4ac1f8266ede14a891ec685117b606376b2904884644f4b704d88832" [label="mkdir{path=/tmp/orbit-ui}" shape="note"];
  "sha256:2b058b3dfe659c97536fa36b2d255971bed9c9cdacee1b9c6609b8c53e6f1a1a" [label="/bin/sh -c apk add --no-cache --virtual .build-deps \t\tbuild-base \t\tgit \t&& apk add --no-cache \t\tgettext \t\tnginx \t\tnodejs \t\tnodejs-npm \t\topenssl \t&& git clone \t\t-c advice.detachedHead=false \t\t--depth 1 \t\t--branch ${VERSION} \t\t${REPO_URL} . \t&& npm install \t&& npm run build-production \t&& mkdir -p ${SERVER_ROOT} \t&& mv dist/* ${SERVER_ROOT} \t&& mv src/favicon.ico ${SERVER_ROOT} \t&& rm -rf ${ORBIT_PATH} \t&& mkdir -p /run/nginx \t&& apk del .build-deps" shape="box"];
  "sha256:c1c70187a3b80e13524e727daffc93c140d1223fa3e3413e86b93843deaf2aa3" [label="local://context" shape="ellipse"];
  "sha256:04aa0c0bd5996e713e375f912f3ae98aa6c4310bc385a61d7a9e32a1f293f8df" [label="copy{src=/include/entrypoint, dest=/}" shape="note"];
  "sha256:ed072919c7dec1cea98b28af2b4f32da5bd4dce1a21f3920760eaa8aa1f120ac" [label="copy{src=/include/nginx.conf, dest=/etc/nginx/nginx.conf.tpl}" shape="note"];
  "sha256:ec1cc6d471dcb37253c4a23541a7b20f489c3e34f1b707094434a10a6dfa955b" [label="sha256:ec1cc6d471dcb37253c4a23541a7b20f489c3e34f1b707094434a10a6dfa955b" shape="plaintext"];
  "sha256:930c1ba58f9a19122d3828463452df235612d10ba3675ae31ea71ac11735296f" -> "sha256:39849d1e4ac1f8266ede14a891ec685117b606376b2904884644f4b704d88832" [label=""];
  "sha256:39849d1e4ac1f8266ede14a891ec685117b606376b2904884644f4b704d88832" -> "sha256:2b058b3dfe659c97536fa36b2d255971bed9c9cdacee1b9c6609b8c53e6f1a1a" [label=""];
  "sha256:2b058b3dfe659c97536fa36b2d255971bed9c9cdacee1b9c6609b8c53e6f1a1a" -> "sha256:04aa0c0bd5996e713e375f912f3ae98aa6c4310bc385a61d7a9e32a1f293f8df" [label=""];
  "sha256:c1c70187a3b80e13524e727daffc93c140d1223fa3e3413e86b93843deaf2aa3" -> "sha256:04aa0c0bd5996e713e375f912f3ae98aa6c4310bc385a61d7a9e32a1f293f8df" [label=""];
  "sha256:04aa0c0bd5996e713e375f912f3ae98aa6c4310bc385a61d7a9e32a1f293f8df" -> "sha256:ed072919c7dec1cea98b28af2b4f32da5bd4dce1a21f3920760eaa8aa1f120ac" [label=""];
  "sha256:c1c70187a3b80e13524e727daffc93c140d1223fa3e3413e86b93843deaf2aa3" -> "sha256:ed072919c7dec1cea98b28af2b4f32da5bd4dce1a21f3920760eaa8aa1f120ac" [label=""];
  "sha256:ed072919c7dec1cea98b28af2b4f32da5bd4dce1a21f3920760eaa8aa1f120ac" -> "sha256:ec1cc6d471dcb37253c4a23541a7b20f489c3e34f1b707094434a10a6dfa955b" [label=""];
}

