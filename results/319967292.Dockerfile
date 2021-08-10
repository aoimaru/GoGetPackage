[app/sources/319967292.Dockerfile]
digraph {
  "sha256:d2ee5802ef4e66d369c54e82b95249fae39b2901680b3bf23f2a3f73eba58df0" [label="docker-image://docker.io/library/java:8" shape="ellipse"];
  "sha256:c09115bdfa5d44febac1aa99ddd7c244833fbef601c2480cc7d69bc3d15950b1" [label="/bin/sh -c mkdir /app" shape="box"];
  "sha256:11bcb9645c0fa08d75fe7455915291d3e6bdc975f148ac042eece928a091ef17" [label="local://context" shape="ellipse"];
  "sha256:193cc50e933291185fa152abc1171e5bbda89a12fbcb8271dcbdcf8dd44568e4" [label="copy{src=/discovery-service-0.0.1-SNAPSHOT.jar, dest=/app/app.jar}" shape="note"];
  "sha256:6f95263337f41bf820a6d14cfcb12b3a89db4b82d6fc55ae30cc455e979014e5" [label="copy{src=/runboot.sh, dest=/app/}" shape="note"];
  "sha256:56c83825dca29648dd81aa31ed542edf6bdc64c80701e8c363dbc142501bce1d" [label="/bin/sh -c bash -c 'touch /app/app.jar'" shape="box"];
  "sha256:d4fea42b199c08b72f9917462cde59b38a7a5bcd52068ea77d7ad524fe736e66" [label="mkdir{path=/app}" shape="note"];
  "sha256:c210a0756df7c9a5da9f40398543c56236e6dd6484ea3fcd3e9ec6cc23cb08df" [label="/bin/sh -c chmod a+x runboot.sh" shape="box"];
  "sha256:df8f3347bbac182d455f5a855e97d0b3035e086bd94b032f28788363b32cad93" [label="/bin/sh -c echo \"Asia/Shanghai\" > /etc/timezone;" shape="box"];
  "sha256:5faf17e1295dcbec6490815160b1b59e89a151af6a5e5a310a526a308ec50e64" [label="sha256:5faf17e1295dcbec6490815160b1b59e89a151af6a5e5a310a526a308ec50e64" shape="plaintext"];
  "sha256:d2ee5802ef4e66d369c54e82b95249fae39b2901680b3bf23f2a3f73eba58df0" -> "sha256:c09115bdfa5d44febac1aa99ddd7c244833fbef601c2480cc7d69bc3d15950b1" [label=""];
  "sha256:c09115bdfa5d44febac1aa99ddd7c244833fbef601c2480cc7d69bc3d15950b1" -> "sha256:193cc50e933291185fa152abc1171e5bbda89a12fbcb8271dcbdcf8dd44568e4" [label=""];
  "sha256:11bcb9645c0fa08d75fe7455915291d3e6bdc975f148ac042eece928a091ef17" -> "sha256:193cc50e933291185fa152abc1171e5bbda89a12fbcb8271dcbdcf8dd44568e4" [label=""];
  "sha256:193cc50e933291185fa152abc1171e5bbda89a12fbcb8271dcbdcf8dd44568e4" -> "sha256:6f95263337f41bf820a6d14cfcb12b3a89db4b82d6fc55ae30cc455e979014e5" [label=""];
  "sha256:11bcb9645c0fa08d75fe7455915291d3e6bdc975f148ac042eece928a091ef17" -> "sha256:6f95263337f41bf820a6d14cfcb12b3a89db4b82d6fc55ae30cc455e979014e5" [label=""];
  "sha256:6f95263337f41bf820a6d14cfcb12b3a89db4b82d6fc55ae30cc455e979014e5" -> "sha256:56c83825dca29648dd81aa31ed542edf6bdc64c80701e8c363dbc142501bce1d" [label=""];
  "sha256:56c83825dca29648dd81aa31ed542edf6bdc64c80701e8c363dbc142501bce1d" -> "sha256:d4fea42b199c08b72f9917462cde59b38a7a5bcd52068ea77d7ad524fe736e66" [label=""];
  "sha256:d4fea42b199c08b72f9917462cde59b38a7a5bcd52068ea77d7ad524fe736e66" -> "sha256:c210a0756df7c9a5da9f40398543c56236e6dd6484ea3fcd3e9ec6cc23cb08df" [label=""];
  "sha256:c210a0756df7c9a5da9f40398543c56236e6dd6484ea3fcd3e9ec6cc23cb08df" -> "sha256:df8f3347bbac182d455f5a855e97d0b3035e086bd94b032f28788363b32cad93" [label=""];
  "sha256:df8f3347bbac182d455f5a855e97d0b3035e086bd94b032f28788363b32cad93" -> "sha256:5faf17e1295dcbec6490815160b1b59e89a151af6a5e5a310a526a308ec50e64" [label=""];
}

