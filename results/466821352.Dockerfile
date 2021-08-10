[app/sources/466821352.Dockerfile]
digraph {
  "sha256:ec7b304bff21116f9e98130d13dd0d9aaf17f894bdbf053a88fa8e7f9aa5e379" [label="docker-image://docker.io/library/node:10.13-alpine" shape="ellipse"];
  "sha256:586bb963bca3443745d74d4306ed82550b4d84f2d42cd8485c55f96cfb475838" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:db1616e08a48797ac8e27b9f302f9db43dc98e220047e0d7f97d769a039a7ca4" [label="local://context" shape="ellipse"];
  "sha256:b80e292044fe9e3e559551f8d9e55911245f1da42bf120ddc179a5e732deb3eb" [label="copy{src=/package.json, dest=/usr/src/app/},copy{src=/npm-shrinkwrap.json*, dest=/usr/src/app/}" shape="note"];
  "sha256:6ca3b7ec3a75e1603cf7dd0a0fdafe7e53e68869fd34d2713cab4eeaeef9bd1c" [label="/bin/sh -c npm install --production --silent && mv node_modules ../" shape="box"];
  "sha256:229d30c1576f4d42d19f31f62ff7d6f6edbbc434e695ac9d4820a490772a7585" [label="copy{src=/server.js, dest=/usr/src/app/}" shape="note"];
  "sha256:833039005ca5bbf552827c2cce4d915cc55f1210adc78a32298cc38d901f9ed8" [label="copy{src=/usr/src, dest=/usr/src}" shape="note"];
  "sha256:74699ae7ea7d886a41204c3a5eb94115945d29c1c72f0913cc830ae40c1f7bc5" [label="/bin/sh -c npm install --silent" shape="box"];
  "sha256:30f8d14196b0f1f457e05991385e5841f9508dc4b537f3df1e2e0141b88ee784" [label="copy{src=/, dest=/usr/src/app/}" shape="note"];
  "sha256:6e49e41a0123af07760e6521a0f3cd479a30829ce53a3a20295fe4322d276d1a" [label="/bin/sh -c npx ng build --prod" shape="box"];
  "sha256:b6fd42bbbae6b47f06571c46e595364737b614be29a3bb0cddd3a95a80aa1b2b" [label="copy{src=/usr/src/app/dist/heroes-angular, dest=/usr/src/app/public}" shape="note"];
  "sha256:9c41fdc688a0cfdb7ca069f3f872d916c6e090ffae625d65c2819cd8602f72a1" [label="sha256:9c41fdc688a0cfdb7ca069f3f872d916c6e090ffae625d65c2819cd8602f72a1" shape="plaintext"];
  "sha256:ec7b304bff21116f9e98130d13dd0d9aaf17f894bdbf053a88fa8e7f9aa5e379" -> "sha256:586bb963bca3443745d74d4306ed82550b4d84f2d42cd8485c55f96cfb475838" [label=""];
  "sha256:586bb963bca3443745d74d4306ed82550b4d84f2d42cd8485c55f96cfb475838" -> "sha256:b80e292044fe9e3e559551f8d9e55911245f1da42bf120ddc179a5e732deb3eb" [label=""];
  "sha256:db1616e08a48797ac8e27b9f302f9db43dc98e220047e0d7f97d769a039a7ca4" -> "sha256:b80e292044fe9e3e559551f8d9e55911245f1da42bf120ddc179a5e732deb3eb" [label=""];
  "sha256:b80e292044fe9e3e559551f8d9e55911245f1da42bf120ddc179a5e732deb3eb" -> "sha256:6ca3b7ec3a75e1603cf7dd0a0fdafe7e53e68869fd34d2713cab4eeaeef9bd1c" [label=""];
  "sha256:6ca3b7ec3a75e1603cf7dd0a0fdafe7e53e68869fd34d2713cab4eeaeef9bd1c" -> "sha256:229d30c1576f4d42d19f31f62ff7d6f6edbbc434e695ac9d4820a490772a7585" [label=""];
  "sha256:db1616e08a48797ac8e27b9f302f9db43dc98e220047e0d7f97d769a039a7ca4" -> "sha256:229d30c1576f4d42d19f31f62ff7d6f6edbbc434e695ac9d4820a490772a7585" [label=""];
  "sha256:586bb963bca3443745d74d4306ed82550b4d84f2d42cd8485c55f96cfb475838" -> "sha256:833039005ca5bbf552827c2cce4d915cc55f1210adc78a32298cc38d901f9ed8" [label=""];
  "sha256:229d30c1576f4d42d19f31f62ff7d6f6edbbc434e695ac9d4820a490772a7585" -> "sha256:833039005ca5bbf552827c2cce4d915cc55f1210adc78a32298cc38d901f9ed8" [label=""];
  "sha256:b80e292044fe9e3e559551f8d9e55911245f1da42bf120ddc179a5e732deb3eb" -> "sha256:74699ae7ea7d886a41204c3a5eb94115945d29c1c72f0913cc830ae40c1f7bc5" [label=""];
  "sha256:74699ae7ea7d886a41204c3a5eb94115945d29c1c72f0913cc830ae40c1f7bc5" -> "sha256:30f8d14196b0f1f457e05991385e5841f9508dc4b537f3df1e2e0141b88ee784" [label=""];
  "sha256:db1616e08a48797ac8e27b9f302f9db43dc98e220047e0d7f97d769a039a7ca4" -> "sha256:30f8d14196b0f1f457e05991385e5841f9508dc4b537f3df1e2e0141b88ee784" [label=""];
  "sha256:30f8d14196b0f1f457e05991385e5841f9508dc4b537f3df1e2e0141b88ee784" -> "sha256:6e49e41a0123af07760e6521a0f3cd479a30829ce53a3a20295fe4322d276d1a" [label=""];
  "sha256:833039005ca5bbf552827c2cce4d915cc55f1210adc78a32298cc38d901f9ed8" -> "sha256:b6fd42bbbae6b47f06571c46e595364737b614be29a3bb0cddd3a95a80aa1b2b" [label=""];
  "sha256:6e49e41a0123af07760e6521a0f3cd479a30829ce53a3a20295fe4322d276d1a" -> "sha256:b6fd42bbbae6b47f06571c46e595364737b614be29a3bb0cddd3a95a80aa1b2b" [label=""];
  "sha256:b6fd42bbbae6b47f06571c46e595364737b614be29a3bb0cddd3a95a80aa1b2b" -> "sha256:9c41fdc688a0cfdb7ca069f3f872d916c6e090ffae625d65c2819cd8602f72a1" [label=""];
}

