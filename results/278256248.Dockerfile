[app/sources/278256248.Dockerfile]
digraph {
  "sha256:1f43afb13d1a0fa62ff4a891706cc31d2ca249b6b55109014d938d5fbc71b92e" [label="docker-image://docker.io/library/node:8.5.0-alpine" shape="ellipse"];
  "sha256:a3bd380cde17fb7f6f511967bb09cc4ca7727210aed1b2bbf05a289bae2f8b6e" [label="/bin/sh -c apk --no-cache add ca-certificates wget && update-ca-certificates" shape="box"];
  "sha256:4b8c581dcccc88cc4bf5f2432b0e6e36d1a26ecf2edae45bc5b95c2164724b9d" [label="/bin/sh -c mkdir -p /opt/yarn && cd /opt/yarn && wget https://yarnpkg.com/latest.tar.gz && tar zxf latest.tar.gz" shape="box"];
  "sha256:821fabef3d4632a20812e0bb0292dc5c1204fe72ea049ebb90af505d8669b8a7" [label="/bin/sh -c mkdir -p /opt/frontend && mkdir /cache" shape="box"];
  "sha256:ec7a8c55eda36c02fb420d445ddb5113f058fd10efa3d9324da3332bdaebf979" [label="mkdir{path=/opt/frontend}" shape="note"];
  "sha256:9a0dff52016f4435addbf0f45336a9f0b2619db56f74f2940cae7a8f4a69773a" [label="local://context" shape="ellipse"];
  "sha256:cefa6ce135e76635bcb9be011aec1165430f693c24c06dda0427d36135dc0947" [label="copy{src=/package.json, dest=/cache/},copy{src=/yarn.lock, dest=/cache/}" shape="note"];
  "sha256:c8c09db1ffddad273f35e816e577ba78b444a4d2dc88e9981c747a90d43de686" [label="copy{src=/.yarn-cache.tgz, dest=/}" shape="note"];
  "sha256:0b149d41016caa27247b5887845a18475ee30527bf2a5b0c5a54b0d35f70eae5" [label="/bin/sh -c cd /cache   && yarn config set cache-folder /usr/local/share/.cache/yarn   && yarn   && cd /opt/frontend && ln -s /cache/node_modules node_modules   && tar czf /.yarn-cache.tgz /usr/local/share/.cache/yarn" shape="box"];
  "sha256:df3346862687f3227742ea04c3c07754afb80ffc97d8149720ce5a15dd326b27" [label="copy{src=/, dest=/opt/frontend}" shape="note"];
  "sha256:7002564e8ba33831badedec896407d59b89f793b9440366d40548398de6c102f" [label="sha256:7002564e8ba33831badedec896407d59b89f793b9440366d40548398de6c102f" shape="plaintext"];
  "sha256:1f43afb13d1a0fa62ff4a891706cc31d2ca249b6b55109014d938d5fbc71b92e" -> "sha256:a3bd380cde17fb7f6f511967bb09cc4ca7727210aed1b2bbf05a289bae2f8b6e" [label=""];
  "sha256:a3bd380cde17fb7f6f511967bb09cc4ca7727210aed1b2bbf05a289bae2f8b6e" -> "sha256:4b8c581dcccc88cc4bf5f2432b0e6e36d1a26ecf2edae45bc5b95c2164724b9d" [label=""];
  "sha256:4b8c581dcccc88cc4bf5f2432b0e6e36d1a26ecf2edae45bc5b95c2164724b9d" -> "sha256:821fabef3d4632a20812e0bb0292dc5c1204fe72ea049ebb90af505d8669b8a7" [label=""];
  "sha256:821fabef3d4632a20812e0bb0292dc5c1204fe72ea049ebb90af505d8669b8a7" -> "sha256:ec7a8c55eda36c02fb420d445ddb5113f058fd10efa3d9324da3332bdaebf979" [label=""];
  "sha256:ec7a8c55eda36c02fb420d445ddb5113f058fd10efa3d9324da3332bdaebf979" -> "sha256:cefa6ce135e76635bcb9be011aec1165430f693c24c06dda0427d36135dc0947" [label=""];
  "sha256:9a0dff52016f4435addbf0f45336a9f0b2619db56f74f2940cae7a8f4a69773a" -> "sha256:cefa6ce135e76635bcb9be011aec1165430f693c24c06dda0427d36135dc0947" [label=""];
  "sha256:cefa6ce135e76635bcb9be011aec1165430f693c24c06dda0427d36135dc0947" -> "sha256:c8c09db1ffddad273f35e816e577ba78b444a4d2dc88e9981c747a90d43de686" [label=""];
  "sha256:9a0dff52016f4435addbf0f45336a9f0b2619db56f74f2940cae7a8f4a69773a" -> "sha256:c8c09db1ffddad273f35e816e577ba78b444a4d2dc88e9981c747a90d43de686" [label=""];
  "sha256:c8c09db1ffddad273f35e816e577ba78b444a4d2dc88e9981c747a90d43de686" -> "sha256:0b149d41016caa27247b5887845a18475ee30527bf2a5b0c5a54b0d35f70eae5" [label=""];
  "sha256:0b149d41016caa27247b5887845a18475ee30527bf2a5b0c5a54b0d35f70eae5" -> "sha256:df3346862687f3227742ea04c3c07754afb80ffc97d8149720ce5a15dd326b27" [label=""];
  "sha256:9a0dff52016f4435addbf0f45336a9f0b2619db56f74f2940cae7a8f4a69773a" -> "sha256:df3346862687f3227742ea04c3c07754afb80ffc97d8149720ce5a15dd326b27" [label=""];
  "sha256:df3346862687f3227742ea04c3c07754afb80ffc97d8149720ce5a15dd326b27" -> "sha256:7002564e8ba33831badedec896407d59b89f793b9440366d40548398de6c102f" [label=""];
}

