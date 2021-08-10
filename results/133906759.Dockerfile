[app/sources/133906759.Dockerfile]
digraph {
  "sha256:5195fb88bd5e726fa6cb24629400a591fdb429ccf8a80888da34e016c949f07d" [label="docker-image://docker.io/klaemo/couchdb:1.6.1" shape="ellipse"];
  "sha256:c6c37e61d76c448d12d6dab57c697107e38668b064400eb71da3c17c75fa7dff" [label="/bin/sh -c apt-key adv --keyserver hkp://pgp.mit.edu:80 --recv-keys 573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62  && echo \"deb http://nginx.org/packages/mainline/debian/ jessie nginx\" >> /etc/apt/sources.list  && apt-get update  && apt-get install -y ca-certificates nginx=${NGINX_VERSION} gettext-base  && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:e35efcac6d87932610985a9666796e250edc1d2d9ec07aa3f485ecf5d89fa21f" [label="/bin/sh -c ln -sf /dev/stdout /var/log/nginx/access.log  && ln -sf /dev/stderr /var/log/nginx/error.log" shape="box"];
  "sha256:8ef2411471161c5970e9c52dfd46c0836611b07020d9c50e5797f8c0be36dccb" [label="local://context" shape="ellipse"];
  "sha256:195aceeabd67407ae86832a9c8fad9c4cfeedd341d35678eb71bc9bbc250a860" [label="copy{src=/nginx.conf, dest=/etc/nginx/}" shape="note"];
  "sha256:de3fdf43032c0583eb682b483fa6ef2e14a590c7963b9cf00020f5dd1869fe74" [label="copy{src=/server.crt, dest=/etc/nginx/certs/server.crt}" shape="note"];
  "sha256:187aafd13764d80166c16dcdf1d17b6bc4784a8a5c48af29ec149f34a59393b7" [label="copy{src=/server.key, dest=/etc/nginx/certs/server.key}" shape="note"];
  "sha256:a698edd8d46e486d170a7abde76987b4daed5ce500b394febb57bba117da308f" [label="copy{src=/dhparams.pem, dest=/etc/nginx/certs/dhparams.pem}" shape="note"];
  "sha256:442f6812a33e12d324abcf2cbc2cd46ae3e3208092376a836322f1113afb8104" [label="/bin/sh -c cd /etc/nginx/certs && cat server.key server.crt dhparams.pem > chain.pem" shape="box"];
  "sha256:3e0d00cda9eec9a10be2f4a972fee5047d5013c445667f449e76980240b3cede" [label="copy{src=/entrypoint-nginx.sh, dest=/}" shape="note"];
  "sha256:c63b4e2d93b53f6038359834fafb0ea3badb4ae3bd59039335b2a401d42144c5" [label="sha256:c63b4e2d93b53f6038359834fafb0ea3badb4ae3bd59039335b2a401d42144c5" shape="plaintext"];
  "sha256:5195fb88bd5e726fa6cb24629400a591fdb429ccf8a80888da34e016c949f07d" -> "sha256:c6c37e61d76c448d12d6dab57c697107e38668b064400eb71da3c17c75fa7dff" [label=""];
  "sha256:c6c37e61d76c448d12d6dab57c697107e38668b064400eb71da3c17c75fa7dff" -> "sha256:e35efcac6d87932610985a9666796e250edc1d2d9ec07aa3f485ecf5d89fa21f" [label=""];
  "sha256:e35efcac6d87932610985a9666796e250edc1d2d9ec07aa3f485ecf5d89fa21f" -> "sha256:195aceeabd67407ae86832a9c8fad9c4cfeedd341d35678eb71bc9bbc250a860" [label=""];
  "sha256:8ef2411471161c5970e9c52dfd46c0836611b07020d9c50e5797f8c0be36dccb" -> "sha256:195aceeabd67407ae86832a9c8fad9c4cfeedd341d35678eb71bc9bbc250a860" [label=""];
  "sha256:195aceeabd67407ae86832a9c8fad9c4cfeedd341d35678eb71bc9bbc250a860" -> "sha256:de3fdf43032c0583eb682b483fa6ef2e14a590c7963b9cf00020f5dd1869fe74" [label=""];
  "sha256:8ef2411471161c5970e9c52dfd46c0836611b07020d9c50e5797f8c0be36dccb" -> "sha256:de3fdf43032c0583eb682b483fa6ef2e14a590c7963b9cf00020f5dd1869fe74" [label=""];
  "sha256:de3fdf43032c0583eb682b483fa6ef2e14a590c7963b9cf00020f5dd1869fe74" -> "sha256:187aafd13764d80166c16dcdf1d17b6bc4784a8a5c48af29ec149f34a59393b7" [label=""];
  "sha256:8ef2411471161c5970e9c52dfd46c0836611b07020d9c50e5797f8c0be36dccb" -> "sha256:187aafd13764d80166c16dcdf1d17b6bc4784a8a5c48af29ec149f34a59393b7" [label=""];
  "sha256:187aafd13764d80166c16dcdf1d17b6bc4784a8a5c48af29ec149f34a59393b7" -> "sha256:a698edd8d46e486d170a7abde76987b4daed5ce500b394febb57bba117da308f" [label=""];
  "sha256:8ef2411471161c5970e9c52dfd46c0836611b07020d9c50e5797f8c0be36dccb" -> "sha256:a698edd8d46e486d170a7abde76987b4daed5ce500b394febb57bba117da308f" [label=""];
  "sha256:a698edd8d46e486d170a7abde76987b4daed5ce500b394febb57bba117da308f" -> "sha256:442f6812a33e12d324abcf2cbc2cd46ae3e3208092376a836322f1113afb8104" [label=""];
  "sha256:442f6812a33e12d324abcf2cbc2cd46ae3e3208092376a836322f1113afb8104" -> "sha256:3e0d00cda9eec9a10be2f4a972fee5047d5013c445667f449e76980240b3cede" [label=""];
  "sha256:8ef2411471161c5970e9c52dfd46c0836611b07020d9c50e5797f8c0be36dccb" -> "sha256:3e0d00cda9eec9a10be2f4a972fee5047d5013c445667f449e76980240b3cede" [label=""];
  "sha256:3e0d00cda9eec9a10be2f4a972fee5047d5013c445667f449e76980240b3cede" -> "sha256:c63b4e2d93b53f6038359834fafb0ea3badb4ae3bd59039335b2a401d42144c5" [label=""];
}

