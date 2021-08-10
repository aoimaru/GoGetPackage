[app/sources/322387556.Dockerfile]
digraph {
  "sha256:b4b4eda9b53ad41a678b6926e421758efcb14701dc51eb94e5cfce7b04ebd7d0" [label="docker-image://docker.io/aliyunfc/runtime-nodejs6:base" shape="ellipse"];
  "sha256:e5705f6a257933c58c8ee906c11726c038a095d42c4e539952fc0a2b50fb3e18" [label="/bin/sh -c rm -rf /var/runtime /var/lang &&   curl https://my-fc-testt.oss-cn-shanghai.aliyuncs.com/nodejs6.tgz | tar -zx -C / &&   rm -rf /var/fc/runtime/*/var/log/*" shape="box"];
  "sha256:7414c452859735df867a1d2226c1da08de7b44e1b2e2b25c25a4579fbf8e7787" [label="local://context" shape="ellipse"];
  "sha256:9bf148bb1ee6c25befa3856c97f139932922415deeceeeab94f00220107393db" [label="copy{src=/commons/function-compute-mock.sh, dest=/var/fc/runtime/nodejs6/mock.sh}" shape="note"];
  "sha256:85abaad26c134493e47bbf183302a54214f0ef4f9ae48ca85056a6f5b9ee720c" [label="copy{src=/nodejs6/run/agent.sh, dest=/var/fc/runtime/nodejs6/agent.sh}" shape="note"];
  "sha256:1d2f2495d7186906d7f04bfe309679f2bec6e391cc44467bbdeb25a3147afe3c" [label="sha256:1d2f2495d7186906d7f04bfe309679f2bec6e391cc44467bbdeb25a3147afe3c" shape="plaintext"];
  "sha256:b4b4eda9b53ad41a678b6926e421758efcb14701dc51eb94e5cfce7b04ebd7d0" -> "sha256:e5705f6a257933c58c8ee906c11726c038a095d42c4e539952fc0a2b50fb3e18" [label=""];
  "sha256:e5705f6a257933c58c8ee906c11726c038a095d42c4e539952fc0a2b50fb3e18" -> "sha256:9bf148bb1ee6c25befa3856c97f139932922415deeceeeab94f00220107393db" [label=""];
  "sha256:7414c452859735df867a1d2226c1da08de7b44e1b2e2b25c25a4579fbf8e7787" -> "sha256:9bf148bb1ee6c25befa3856c97f139932922415deeceeeab94f00220107393db" [label=""];
  "sha256:9bf148bb1ee6c25befa3856c97f139932922415deeceeeab94f00220107393db" -> "sha256:85abaad26c134493e47bbf183302a54214f0ef4f9ae48ca85056a6f5b9ee720c" [label=""];
  "sha256:7414c452859735df867a1d2226c1da08de7b44e1b2e2b25c25a4579fbf8e7787" -> "sha256:85abaad26c134493e47bbf183302a54214f0ef4f9ae48ca85056a6f5b9ee720c" [label=""];
  "sha256:85abaad26c134493e47bbf183302a54214f0ef4f9ae48ca85056a6f5b9ee720c" -> "sha256:1d2f2495d7186906d7f04bfe309679f2bec6e391cc44467bbdeb25a3147afe3c" [label=""];
}

