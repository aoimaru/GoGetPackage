[app/sources/162046558.Dockerfile]
digraph {
  "sha256:df6608d9d88922911804fce8f739b0ca3b2a4e1917414dcc9426764d66f18185" [label="local://context" shape="ellipse"];
  "sha256:326a0588de29476d1bad73c39e7f9aa979af9e7d551a1f897f06f91166636846" [label="docker-image://docker.io/library/java:7" shape="ellipse"];
  "sha256:11ef70885c126b716ccbd0e73b940846ef9b0e1c9d620260cfdecfb0d3bdcb7a" [label="copy{src=/target/spring-boot-admin-sample-eureka.jar, dest=/app.jar}" shape="note"];
  "sha256:0057736380718ed5b7dbaf6ddaf1529413c73ebcfb4358214c17ec939012ac0e" [label="/bin/sh -c bash -c 'touch /app.jar'" shape="box"];
  "sha256:60fa99da9ffcc0d41caa1c8ab8fefcd19ba07b19317a79abe8401700cb5be1af" [label="sha256:60fa99da9ffcc0d41caa1c8ab8fefcd19ba07b19317a79abe8401700cb5be1af" shape="plaintext"];
  "sha256:326a0588de29476d1bad73c39e7f9aa979af9e7d551a1f897f06f91166636846" -> "sha256:11ef70885c126b716ccbd0e73b940846ef9b0e1c9d620260cfdecfb0d3bdcb7a" [label=""];
  "sha256:df6608d9d88922911804fce8f739b0ca3b2a4e1917414dcc9426764d66f18185" -> "sha256:11ef70885c126b716ccbd0e73b940846ef9b0e1c9d620260cfdecfb0d3bdcb7a" [label=""];
  "sha256:11ef70885c126b716ccbd0e73b940846ef9b0e1c9d620260cfdecfb0d3bdcb7a" -> "sha256:0057736380718ed5b7dbaf6ddaf1529413c73ebcfb4358214c17ec939012ac0e" [label=""];
  "sha256:0057736380718ed5b7dbaf6ddaf1529413c73ebcfb4358214c17ec939012ac0e" -> "sha256:60fa99da9ffcc0d41caa1c8ab8fefcd19ba07b19317a79abe8401700cb5be1af" [label=""];
}

