[app/sources/211656217.Dockerfile]
digraph {
  "sha256:2373ad8d24f0b330ceaae6b44205c4eb9ead90dedd4cf00a6345f2421baf9cc1" [label="docker-image://docker.io/library/tomcat:8-jre8" shape="ellipse"];
  "sha256:49a6fd403d67562fa7e5eefa1dda68d5b22c2e0b801639ad20240e3482ba34e7" [label="/bin/sh -c rm -rf /usr/local/tomcat/webapps/*" shape="box"];
  "sha256:17758a2669f83a3e1901dfbdaf06a30fb5ad509763e094dc4d9b0faf16109ac3" [label="local://context" shape="ellipse"];
  "sha256:94299f9760f93b0ead7bbfc5717fca9655c33d1166740efd02b1579478913e11" [label="copy{src=/gameoflife-web/target/gameoflife.war, dest=/usr/local/tomcat/webapps/ROOT.war}" shape="note"];
  "sha256:c88e50908179daa771d2edb27caa20efaa7194c74697c9015fce5b9400096fe3" [label="sha256:c88e50908179daa771d2edb27caa20efaa7194c74697c9015fce5b9400096fe3" shape="plaintext"];
  "sha256:2373ad8d24f0b330ceaae6b44205c4eb9ead90dedd4cf00a6345f2421baf9cc1" -> "sha256:49a6fd403d67562fa7e5eefa1dda68d5b22c2e0b801639ad20240e3482ba34e7" [label=""];
  "sha256:49a6fd403d67562fa7e5eefa1dda68d5b22c2e0b801639ad20240e3482ba34e7" -> "sha256:94299f9760f93b0ead7bbfc5717fca9655c33d1166740efd02b1579478913e11" [label=""];
  "sha256:17758a2669f83a3e1901dfbdaf06a30fb5ad509763e094dc4d9b0faf16109ac3" -> "sha256:94299f9760f93b0ead7bbfc5717fca9655c33d1166740efd02b1579478913e11" [label=""];
  "sha256:94299f9760f93b0ead7bbfc5717fca9655c33d1166740efd02b1579478913e11" -> "sha256:c88e50908179daa771d2edb27caa20efaa7194c74697c9015fce5b9400096fe3" [label=""];
}

