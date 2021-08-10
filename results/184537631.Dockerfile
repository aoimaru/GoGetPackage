[app/sources/184537631.Dockerfile]
digraph {
  "sha256:46ba8dcf36bce17766bb9269d32fbab7350896256fca306d49a9942302aac0f3" [label="local://context" shape="ellipse"];
  "sha256:afba07df7ea4cf20a8875c501a3e770fd4b23486135eb7f35c1f05b1f2d3f061" [label="docker-image://docker.io/library/ruby:2.3-alpine" shape="ellipse"];
  "sha256:593de12b318ceeaf69a138f06289fd6cf5b62515caaa78878252d75960d2db91" [label="/bin/sh -c apk add --update --no-cache       build-base       mysql-dev       postgresql-dev       sqlite-dev     && rm -rf /var/cache/apk/*" shape="box"];
  "sha256:800e4b8e2354e609900d06b692534aaf4729232dce1830f48175c693c5c76efe" [label="/bin/sh -c mkdir /app_config" shape="box"];
  "sha256:2ecfed5b99a35318409f3f40ff47a3a85b647ecf7cbddfafd94c778a085841f9" [label="mkdir{path=/app_config}" shape="note"];
  "sha256:209106521822743b1814429b9f9fe326f0bcba511fb7570c69f67ffd10294b5c" [label="copy{src=/APP_CONFIG_VERSION, dest=/app_config/APP_CONFIG_VERSION}" shape="note"];
  "sha256:8bac6c991a269268694e97d7267caacb9582e10973d3d93835af7c9311094695" [label="copy{src=/app_config.gemspec, dest=/app_config/app_config.gemspec}" shape="note"];
  "sha256:35e6914b1ba131d0fb118035698741b32f391e595b370a295af94d20262d008e" [label="copy{src=/Gemfile, dest=/app_config/Gemfile}" shape="note"];
  "sha256:f58f9039db9a784ff0e828bd11e5cf894a028f64238bb5670145b31129e7c5d0" [label="copy{src=/Gemfile.lock, dest=/app_config/Gemfile.lock}" shape="note"];
  "sha256:7e0f36471cb91defa7ad27015f5c827acad12614eef60bc64efa82c73b682ece" [label="/bin/sh -c bundle install" shape="box"];
  "sha256:8cdd2d9fa613d24a9aae010ac2afb49d1a8b7971f55c175df1acb0ad3606514e" [label="copy{src=/, dest=/app_config}" shape="note"];
  "sha256:7f057dd9ebbb83586a1576a0f463d95468562cb87535aef00ac9a773d4032411" [label="sha256:7f057dd9ebbb83586a1576a0f463d95468562cb87535aef00ac9a773d4032411" shape="plaintext"];
  "sha256:afba07df7ea4cf20a8875c501a3e770fd4b23486135eb7f35c1f05b1f2d3f061" -> "sha256:593de12b318ceeaf69a138f06289fd6cf5b62515caaa78878252d75960d2db91" [label=""];
  "sha256:593de12b318ceeaf69a138f06289fd6cf5b62515caaa78878252d75960d2db91" -> "sha256:800e4b8e2354e609900d06b692534aaf4729232dce1830f48175c693c5c76efe" [label=""];
  "sha256:800e4b8e2354e609900d06b692534aaf4729232dce1830f48175c693c5c76efe" -> "sha256:2ecfed5b99a35318409f3f40ff47a3a85b647ecf7cbddfafd94c778a085841f9" [label=""];
  "sha256:2ecfed5b99a35318409f3f40ff47a3a85b647ecf7cbddfafd94c778a085841f9" -> "sha256:209106521822743b1814429b9f9fe326f0bcba511fb7570c69f67ffd10294b5c" [label=""];
  "sha256:46ba8dcf36bce17766bb9269d32fbab7350896256fca306d49a9942302aac0f3" -> "sha256:209106521822743b1814429b9f9fe326f0bcba511fb7570c69f67ffd10294b5c" [label=""];
  "sha256:209106521822743b1814429b9f9fe326f0bcba511fb7570c69f67ffd10294b5c" -> "sha256:8bac6c991a269268694e97d7267caacb9582e10973d3d93835af7c9311094695" [label=""];
  "sha256:46ba8dcf36bce17766bb9269d32fbab7350896256fca306d49a9942302aac0f3" -> "sha256:8bac6c991a269268694e97d7267caacb9582e10973d3d93835af7c9311094695" [label=""];
  "sha256:8bac6c991a269268694e97d7267caacb9582e10973d3d93835af7c9311094695" -> "sha256:35e6914b1ba131d0fb118035698741b32f391e595b370a295af94d20262d008e" [label=""];
  "sha256:46ba8dcf36bce17766bb9269d32fbab7350896256fca306d49a9942302aac0f3" -> "sha256:35e6914b1ba131d0fb118035698741b32f391e595b370a295af94d20262d008e" [label=""];
  "sha256:35e6914b1ba131d0fb118035698741b32f391e595b370a295af94d20262d008e" -> "sha256:f58f9039db9a784ff0e828bd11e5cf894a028f64238bb5670145b31129e7c5d0" [label=""];
  "sha256:46ba8dcf36bce17766bb9269d32fbab7350896256fca306d49a9942302aac0f3" -> "sha256:f58f9039db9a784ff0e828bd11e5cf894a028f64238bb5670145b31129e7c5d0" [label=""];
  "sha256:f58f9039db9a784ff0e828bd11e5cf894a028f64238bb5670145b31129e7c5d0" -> "sha256:7e0f36471cb91defa7ad27015f5c827acad12614eef60bc64efa82c73b682ece" [label=""];
  "sha256:7e0f36471cb91defa7ad27015f5c827acad12614eef60bc64efa82c73b682ece" -> "sha256:8cdd2d9fa613d24a9aae010ac2afb49d1a8b7971f55c175df1acb0ad3606514e" [label=""];
  "sha256:46ba8dcf36bce17766bb9269d32fbab7350896256fca306d49a9942302aac0f3" -> "sha256:8cdd2d9fa613d24a9aae010ac2afb49d1a8b7971f55c175df1acb0ad3606514e" [label=""];
  "sha256:8cdd2d9fa613d24a9aae010ac2afb49d1a8b7971f55c175df1acb0ad3606514e" -> "sha256:7f057dd9ebbb83586a1576a0f463d95468562cb87535aef00ac9a773d4032411" [label=""];
}

