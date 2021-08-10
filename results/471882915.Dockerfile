[app/sources/471882915.Dockerfile]
digraph {
  "sha256:09423f338757da5b59d3090ed6d8531f21c8d5ab987570e69be410bde4a6742b" [label="docker-image://docker.io/hassioaddons/base:4.0.1" shape="ellipse"];
  "sha256:906c14017fd6ac7196597c12b23b0f157ea031f456bfadb4da0ce40a6dc23b0e" [label="/bin/bash -o pipefail -c apk add --no-cache         lua-resty-http=0.13-r0         nginx-mod-http-lua=1.16.0-r2         nginx=1.16.0-r2         && if [[ \"${BUILD_ARCH}\" = \"aarch64\" ]]; then ARCH=\"arm64\"; fi     && if [[ \"${BUILD_ARCH}\" = \"amd64\" ]]; then ARCH=\"amd64\"; fi     && if [[ \"${BUILD_ARCH}\" = \"armhf\" ]]; then ARCH=\"arm\"; fi     && if [[ \"${BUILD_ARCH}\" = \"armv7\" ]]; then ARCH=\"arm\"; fi     && if [[ \"${BUILD_ARCH}\" = \"i386\" ]]; then ARCH=\"386\"; fi         && curl -L -s         \"https://github.com/AdguardTeam/AdGuardHome/releases/download/v0.96-hotfix/AdGuardHome_linux_${ARCH}.tar.gz\"         | tar zxvf - -C /opt/     && chmod a+x /opt/AdGuardHome/AdGuardHome         && rm -fr         /etc/nginx" shape="box"];
  "sha256:43761041fa87a034906b0243eba3a51e94b41b4f0a82184defb53631fc3646d5" [label="local://context" shape="ellipse"];
  "sha256:a2a50b39bd2f018327d224ed3bef9a4ed224edb405d39a935f29ea561ccfa9a0" [label="copy{src=/rootfs, dest=/}" shape="note"];
  "sha256:a8238144af85d372f70b927d868c6fcb4a227cf176e37fb814c48907bbb884b1" [label="sha256:a8238144af85d372f70b927d868c6fcb4a227cf176e37fb814c48907bbb884b1" shape="plaintext"];
  "sha256:09423f338757da5b59d3090ed6d8531f21c8d5ab987570e69be410bde4a6742b" -> "sha256:906c14017fd6ac7196597c12b23b0f157ea031f456bfadb4da0ce40a6dc23b0e" [label=""];
  "sha256:906c14017fd6ac7196597c12b23b0f157ea031f456bfadb4da0ce40a6dc23b0e" -> "sha256:a2a50b39bd2f018327d224ed3bef9a4ed224edb405d39a935f29ea561ccfa9a0" [label=""];
  "sha256:43761041fa87a034906b0243eba3a51e94b41b4f0a82184defb53631fc3646d5" -> "sha256:a2a50b39bd2f018327d224ed3bef9a4ed224edb405d39a935f29ea561ccfa9a0" [label=""];
  "sha256:a2a50b39bd2f018327d224ed3bef9a4ed224edb405d39a935f29ea561ccfa9a0" -> "sha256:a8238144af85d372f70b927d868c6fcb4a227cf176e37fb814c48907bbb884b1" [label=""];
}

