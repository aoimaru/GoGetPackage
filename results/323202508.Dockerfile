[app/sources/323202508.Dockerfile]
digraph {
  "sha256:0b51ac54a1d107f72468f0453ccfbc20f71f16525194ffb907225b65258ffa64" [label="local://context" shape="ellipse"];
  "sha256:09423f338757da5b59d3090ed6d8531f21c8d5ab987570e69be410bde4a6742b" [label="docker-image://docker.io/hassioaddons/base:4.0.1" shape="ellipse"];
  "sha256:99490a15180a6b592347642c7287844689dce6564befc356f07c702f441040e1" [label="/bin/bash -o pipefail -c apk add --no-cache         lua-resty-http=0.13-r0         nginx-mod-http-lua=1.16.0-r2         nginx=1.16.0-r2         nodejs=10.16.0-r0         npm=10.16.0-r0         && apk add --no-cache --virtual .build-dependencies         git=2.22.0-r0         && npm set unsafe-perm true         && VERSION=\"c5b60e75dab012bb5fb01096898c643fafe09bb5\"     && npm -g i         \"git+https://github.com/frenck/ws-log.git#${VERSION}\"         && apk del --no-cache --purge .build-dependencies     && rm -f -r /etc/nginx" shape="box"];
  "sha256:d4711b1938aff758aa60d926e1984bd71ca9d4c7ed0fdac57f821112d7c8df22" [label="copy{src=/rootfs, dest=/}" shape="note"];
  "sha256:8184847300b725e3ad8314129aa0c828f9ca4d94793a0fe005a3c62bf5d7d82b" [label="sha256:8184847300b725e3ad8314129aa0c828f9ca4d94793a0fe005a3c62bf5d7d82b" shape="plaintext"];
  "sha256:09423f338757da5b59d3090ed6d8531f21c8d5ab987570e69be410bde4a6742b" -> "sha256:99490a15180a6b592347642c7287844689dce6564befc356f07c702f441040e1" [label=""];
  "sha256:99490a15180a6b592347642c7287844689dce6564befc356f07c702f441040e1" -> "sha256:d4711b1938aff758aa60d926e1984bd71ca9d4c7ed0fdac57f821112d7c8df22" [label=""];
  "sha256:0b51ac54a1d107f72468f0453ccfbc20f71f16525194ffb907225b65258ffa64" -> "sha256:d4711b1938aff758aa60d926e1984bd71ca9d4c7ed0fdac57f821112d7c8df22" [label=""];
  "sha256:d4711b1938aff758aa60d926e1984bd71ca9d4c7ed0fdac57f821112d7c8df22" -> "sha256:8184847300b725e3ad8314129aa0c828f9ca4d94793a0fe005a3c62bf5d7d82b" [label=""];
}

