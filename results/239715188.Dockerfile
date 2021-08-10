[app/sources/239715188.Dockerfile]
digraph {
  "sha256:994b467ebaaf69c4b1fb490eb4bd6d1966c8b0e641e8e66af46cb3283eb96225" [label="local://context" shape="ellipse"];
  "sha256:8ebfbfbea68b15c9db95878f7c1d6bcb0a33e2bb82309687c25e544ac4da57d2" [label="docker-image://docker.io/egovio/flyway:4.1.2" shape="ellipse"];
  "sha256:12aa59c5f1bea1d8d075bbedb941009148c6ca387b2ed0c5bfebadd525ab0254" [label="copy{src=/migration/ddl, dest=/flyway/sql}" shape="note"];
  "sha256:06bad23767fb35f0265814ccb1fc9f36a3f1ec7598f306d56ebc83edbd2c5ab8" [label="copy{src=/migration/seed, dest=/flyway/seed}" shape="note"];
  "sha256:9ab1769e0ea6dda5d669deb87f0127e70877c70fc6e6fa240cec35208f95ec06" [label="copy{src=/migration/dev, dest=/flyway/dev}" shape="note"];
  "sha256:e09d3bd947a71a63d4091b964404a24ea7f9383f852d867af294b7f8eca35b8d" [label="copy{src=/migration/qa, dest=/flyway/qa}" shape="note"];
  "sha256:dd8bb27de61074bad09520b131390ec0235175a6c75ba60102311abfbd4ac149" [label="copy{src=/migration/test, dest=/flyway/test}" shape="note"];
  "sha256:957d99a835f5ae384685716231dc0cc912bf5ddab3f6ef6e50e9d2f6992556ae" [label="copy{src=/migrate.sh, dest=/usr/bin/migrate.sh}" shape="note"];
  "sha256:b4539d0331746f75bf6ec18d9c27221335a67b868f43565430a7872548d3f36c" [label="/bin/sh -c chmod +x /usr/bin/migrate.sh" shape="box"];
  "sha256:7aa99e10ae127528a1fa243647ab0ef2d02e21f714a5ed5cbba9903fb5a6a771" [label="sha256:7aa99e10ae127528a1fa243647ab0ef2d02e21f714a5ed5cbba9903fb5a6a771" shape="plaintext"];
  "sha256:8ebfbfbea68b15c9db95878f7c1d6bcb0a33e2bb82309687c25e544ac4da57d2" -> "sha256:12aa59c5f1bea1d8d075bbedb941009148c6ca387b2ed0c5bfebadd525ab0254" [label=""];
  "sha256:994b467ebaaf69c4b1fb490eb4bd6d1966c8b0e641e8e66af46cb3283eb96225" -> "sha256:12aa59c5f1bea1d8d075bbedb941009148c6ca387b2ed0c5bfebadd525ab0254" [label=""];
  "sha256:12aa59c5f1bea1d8d075bbedb941009148c6ca387b2ed0c5bfebadd525ab0254" -> "sha256:06bad23767fb35f0265814ccb1fc9f36a3f1ec7598f306d56ebc83edbd2c5ab8" [label=""];
  "sha256:994b467ebaaf69c4b1fb490eb4bd6d1966c8b0e641e8e66af46cb3283eb96225" -> "sha256:06bad23767fb35f0265814ccb1fc9f36a3f1ec7598f306d56ebc83edbd2c5ab8" [label=""];
  "sha256:06bad23767fb35f0265814ccb1fc9f36a3f1ec7598f306d56ebc83edbd2c5ab8" -> "sha256:9ab1769e0ea6dda5d669deb87f0127e70877c70fc6e6fa240cec35208f95ec06" [label=""];
  "sha256:994b467ebaaf69c4b1fb490eb4bd6d1966c8b0e641e8e66af46cb3283eb96225" -> "sha256:9ab1769e0ea6dda5d669deb87f0127e70877c70fc6e6fa240cec35208f95ec06" [label=""];
  "sha256:9ab1769e0ea6dda5d669deb87f0127e70877c70fc6e6fa240cec35208f95ec06" -> "sha256:e09d3bd947a71a63d4091b964404a24ea7f9383f852d867af294b7f8eca35b8d" [label=""];
  "sha256:994b467ebaaf69c4b1fb490eb4bd6d1966c8b0e641e8e66af46cb3283eb96225" -> "sha256:e09d3bd947a71a63d4091b964404a24ea7f9383f852d867af294b7f8eca35b8d" [label=""];
  "sha256:e09d3bd947a71a63d4091b964404a24ea7f9383f852d867af294b7f8eca35b8d" -> "sha256:dd8bb27de61074bad09520b131390ec0235175a6c75ba60102311abfbd4ac149" [label=""];
  "sha256:994b467ebaaf69c4b1fb490eb4bd6d1966c8b0e641e8e66af46cb3283eb96225" -> "sha256:dd8bb27de61074bad09520b131390ec0235175a6c75ba60102311abfbd4ac149" [label=""];
  "sha256:dd8bb27de61074bad09520b131390ec0235175a6c75ba60102311abfbd4ac149" -> "sha256:957d99a835f5ae384685716231dc0cc912bf5ddab3f6ef6e50e9d2f6992556ae" [label=""];
  "sha256:994b467ebaaf69c4b1fb490eb4bd6d1966c8b0e641e8e66af46cb3283eb96225" -> "sha256:957d99a835f5ae384685716231dc0cc912bf5ddab3f6ef6e50e9d2f6992556ae" [label=""];
  "sha256:957d99a835f5ae384685716231dc0cc912bf5ddab3f6ef6e50e9d2f6992556ae" -> "sha256:b4539d0331746f75bf6ec18d9c27221335a67b868f43565430a7872548d3f36c" [label=""];
  "sha256:b4539d0331746f75bf6ec18d9c27221335a67b868f43565430a7872548d3f36c" -> "sha256:7aa99e10ae127528a1fa243647ab0ef2d02e21f714a5ed5cbba9903fb5a6a771" [label=""];
}

