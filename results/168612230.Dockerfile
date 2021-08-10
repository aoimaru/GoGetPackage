[app/sources/168612230.Dockerfile]
digraph {
  "sha256:a75282b4b527f08939ded646b241a19d71ba6701b1737f18d1e458bd2c520383" [label="local://context" shape="ellipse"];
  "sha256:67aec52188d7a99006c17eb64d1f0e5d6169cc4f2713c55b495a726e82f1effa" [label="docker-image://docker.io/library/postgres:9.6" shape="ellipse"];
  "sha256:ec245a9bebd91aa469d5608512f7280b0d4a391a6540239859543c45ea734396" [label="/bin/sh -c apt-get update       && apt-cache showpkg postgresql-$PG_MAJOR-postgis-$POSTGIS_MAJOR       && apt-get install -y --no-install-recommends            postgresql-$PG_MAJOR-postgis-$POSTGIS_MAJOR=$POSTGIS_VERSION            postgresql-$PG_MAJOR-postgis-$POSTGIS_MAJOR-scripts=$POSTGIS_VERSION            postgis=$POSTGIS_VERSION       && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:9ef4956c8dfecd81cb74a3ab14bfb9bd309566bef84fc8741aee9753396b310c" [label="/bin/sh -c mkdir -p /docker-entrypoint-initdb.d" shape="box"];
  "sha256:80f9e1286c7ff524a32a1f5d4c9d78d6f9efe038eb68a2c3a12aed521668f1e5" [label="copy{src=/initdb-postgis.sh, dest=/docker-entrypoint-initdb.d/postgis.sh}" shape="note"];
  "sha256:ac0917c7ee4f8dd3cf5ccf2f28a41adcdf3dcee97cef6a5740b9710bd5b01c8c" [label="copy{src=/update-postgis.sh, dest=/usr/local/bin}" shape="note"];
  "sha256:ae17a6bec934d3837fe9639ab4c0c18d0291bee595be068fc0a8ad44c2875e42" [label="sha256:ae17a6bec934d3837fe9639ab4c0c18d0291bee595be068fc0a8ad44c2875e42" shape="plaintext"];
  "sha256:67aec52188d7a99006c17eb64d1f0e5d6169cc4f2713c55b495a726e82f1effa" -> "sha256:ec245a9bebd91aa469d5608512f7280b0d4a391a6540239859543c45ea734396" [label=""];
  "sha256:ec245a9bebd91aa469d5608512f7280b0d4a391a6540239859543c45ea734396" -> "sha256:9ef4956c8dfecd81cb74a3ab14bfb9bd309566bef84fc8741aee9753396b310c" [label=""];
  "sha256:9ef4956c8dfecd81cb74a3ab14bfb9bd309566bef84fc8741aee9753396b310c" -> "sha256:80f9e1286c7ff524a32a1f5d4c9d78d6f9efe038eb68a2c3a12aed521668f1e5" [label=""];
  "sha256:a75282b4b527f08939ded646b241a19d71ba6701b1737f18d1e458bd2c520383" -> "sha256:80f9e1286c7ff524a32a1f5d4c9d78d6f9efe038eb68a2c3a12aed521668f1e5" [label=""];
  "sha256:80f9e1286c7ff524a32a1f5d4c9d78d6f9efe038eb68a2c3a12aed521668f1e5" -> "sha256:ac0917c7ee4f8dd3cf5ccf2f28a41adcdf3dcee97cef6a5740b9710bd5b01c8c" [label=""];
  "sha256:a75282b4b527f08939ded646b241a19d71ba6701b1737f18d1e458bd2c520383" -> "sha256:ac0917c7ee4f8dd3cf5ccf2f28a41adcdf3dcee97cef6a5740b9710bd5b01c8c" [label=""];
  "sha256:ac0917c7ee4f8dd3cf5ccf2f28a41adcdf3dcee97cef6a5740b9710bd5b01c8c" -> "sha256:ae17a6bec934d3837fe9639ab4c0c18d0291bee595be068fc0a8ad44c2875e42" [label=""];
}

