[app/sources/224072167.Dockerfile]
digraph {
  "sha256:8403d41d16f170bed95ded8255e27dd2409577d2c1fec9ff5806ed2ba6edf11c" [label="local://context" shape="ellipse"];
  "sha256:a255b48946e357047bdcbf5c8fec6cab6f13fd1917c5ce722904e6ba789ab4be" [label="docker-image://docker.io/library/golang:alpine@sha256:125b5fbad8200b161d62147f7a38525c97319acf5b44f07e0413199ea749e782" shape="ellipse"];
  "sha256:eaad4d44d598eefd2d6a0ab9ca4cd876a480d3ce87fa6b9bbff3948bcd36cd96" [label="/bin/sh -c mkdir -p /service" shape="box"];
  "sha256:98a7c9eed10eab2f9e8fe9ea34e5a0d9e40370a8679caa47ee0cae6fd59faf28" [label="mkdir{path=/service}" shape="note"];
  "sha256:566f4ecd367b15ea9a33917050ff6eb7609154e3acc24823fac9faff57fef1e0" [label="/bin/sh -c apk add --no-cache         git     && go get github.com/julienschmidt/httprouter     && rm -rf /var/cache/apk/*" shape="box"];
  "sha256:536e58215385ad8ffc665ce65baa1182156c9d79f9dfe407d8c355d9c56f98a6" [label="/bin/sh -c go get \"github.com/go-ini/ini\"     && go get \"github.com/antonholmquist/jason\"" shape="box"];
  "sha256:1353d62e4aa5941be027df9a8bc093733bb3589d08c367fe4c65bad2175e89e7" [label="/bin/sh -c mkdir -p src/passivetotal-service" shape="box"];
  "sha256:88575e7bd2fb128ca94b032d267a92f4f64c83eddce2c6c2899a049b835e9fa1" [label="copy{src=/LICENSE, dest=/service}" shape="note"];
  "sha256:e06cdc7ef0d58976d42022bfbf767ea2028d26390fec8073d6af0c013706db9f" [label="copy{src=/README.md, dest=/service}" shape="note"];
  "sha256:ae33652f2361322e6d0d26693bade45eee3417fe3298c60966d4e84f30684add" [label="copy{src=/src/passivetotal-service, dest=/go/src/passivetotal-service}" shape="note"];
  "sha256:3ba83446996c27796a4ef5e5eeb527c6baab0f79b177f5f810a40ae410f25b87" [label="copy{src=/service.conf, dest=/service/service.conf}" shape="note"];
  "sha256:f47c54076468a4065d4717785d93865f5e2b3cde6690de82edcba7cff878bde8" [label="/bin/sh -c wget -O TLDList.txt \"http://data.iana.org/TLD/tlds-alpha-by-domain.txt\"" shape="box"];
  "sha256:9a0a99ae0c98c7cc975beec7e1309e58c8ad4335abbe57ffe70f9bd27cce9b99" [label="/bin/sh -c cd $GOPATH/src/passivetotal-service     && go build     && cp passivetotal-service /service/passivetotal-service" shape="box"];
  "sha256:44eb147205e42a3a2d37ff2daef284cd5ae8a2446695a4b03c868fb4d4ee9538" [label="/bin/sh -c apk del --purge         git     && rm -rf /var/cache/apk/*     && rm -rf $GOPATH     && rm -rf /usr/local/go" shape="box"];
  "sha256:869695ad642684c6c463fcad4f50493e6e43507b0f71332a3a4115f587d4985d" [label="sha256:869695ad642684c6c463fcad4f50493e6e43507b0f71332a3a4115f587d4985d" shape="plaintext"];
  "sha256:a255b48946e357047bdcbf5c8fec6cab6f13fd1917c5ce722904e6ba789ab4be" -> "sha256:eaad4d44d598eefd2d6a0ab9ca4cd876a480d3ce87fa6b9bbff3948bcd36cd96" [label=""];
  "sha256:eaad4d44d598eefd2d6a0ab9ca4cd876a480d3ce87fa6b9bbff3948bcd36cd96" -> "sha256:98a7c9eed10eab2f9e8fe9ea34e5a0d9e40370a8679caa47ee0cae6fd59faf28" [label=""];
  "sha256:98a7c9eed10eab2f9e8fe9ea34e5a0d9e40370a8679caa47ee0cae6fd59faf28" -> "sha256:566f4ecd367b15ea9a33917050ff6eb7609154e3acc24823fac9faff57fef1e0" [label=""];
  "sha256:566f4ecd367b15ea9a33917050ff6eb7609154e3acc24823fac9faff57fef1e0" -> "sha256:536e58215385ad8ffc665ce65baa1182156c9d79f9dfe407d8c355d9c56f98a6" [label=""];
  "sha256:536e58215385ad8ffc665ce65baa1182156c9d79f9dfe407d8c355d9c56f98a6" -> "sha256:1353d62e4aa5941be027df9a8bc093733bb3589d08c367fe4c65bad2175e89e7" [label=""];
  "sha256:1353d62e4aa5941be027df9a8bc093733bb3589d08c367fe4c65bad2175e89e7" -> "sha256:88575e7bd2fb128ca94b032d267a92f4f64c83eddce2c6c2899a049b835e9fa1" [label=""];
  "sha256:8403d41d16f170bed95ded8255e27dd2409577d2c1fec9ff5806ed2ba6edf11c" -> "sha256:88575e7bd2fb128ca94b032d267a92f4f64c83eddce2c6c2899a049b835e9fa1" [label=""];
  "sha256:88575e7bd2fb128ca94b032d267a92f4f64c83eddce2c6c2899a049b835e9fa1" -> "sha256:e06cdc7ef0d58976d42022bfbf767ea2028d26390fec8073d6af0c013706db9f" [label=""];
  "sha256:8403d41d16f170bed95ded8255e27dd2409577d2c1fec9ff5806ed2ba6edf11c" -> "sha256:e06cdc7ef0d58976d42022bfbf767ea2028d26390fec8073d6af0c013706db9f" [label=""];
  "sha256:e06cdc7ef0d58976d42022bfbf767ea2028d26390fec8073d6af0c013706db9f" -> "sha256:ae33652f2361322e6d0d26693bade45eee3417fe3298c60966d4e84f30684add" [label=""];
  "sha256:8403d41d16f170bed95ded8255e27dd2409577d2c1fec9ff5806ed2ba6edf11c" -> "sha256:ae33652f2361322e6d0d26693bade45eee3417fe3298c60966d4e84f30684add" [label=""];
  "sha256:ae33652f2361322e6d0d26693bade45eee3417fe3298c60966d4e84f30684add" -> "sha256:3ba83446996c27796a4ef5e5eeb527c6baab0f79b177f5f810a40ae410f25b87" [label=""];
  "sha256:8403d41d16f170bed95ded8255e27dd2409577d2c1fec9ff5806ed2ba6edf11c" -> "sha256:3ba83446996c27796a4ef5e5eeb527c6baab0f79b177f5f810a40ae410f25b87" [label=""];
  "sha256:3ba83446996c27796a4ef5e5eeb527c6baab0f79b177f5f810a40ae410f25b87" -> "sha256:f47c54076468a4065d4717785d93865f5e2b3cde6690de82edcba7cff878bde8" [label=""];
  "sha256:f47c54076468a4065d4717785d93865f5e2b3cde6690de82edcba7cff878bde8" -> "sha256:9a0a99ae0c98c7cc975beec7e1309e58c8ad4335abbe57ffe70f9bd27cce9b99" [label=""];
  "sha256:9a0a99ae0c98c7cc975beec7e1309e58c8ad4335abbe57ffe70f9bd27cce9b99" -> "sha256:44eb147205e42a3a2d37ff2daef284cd5ae8a2446695a4b03c868fb4d4ee9538" [label=""];
  "sha256:44eb147205e42a3a2d37ff2daef284cd5ae8a2446695a4b03c868fb4d4ee9538" -> "sha256:869695ad642684c6c463fcad4f50493e6e43507b0f71332a3a4115f587d4985d" [label=""];
}

