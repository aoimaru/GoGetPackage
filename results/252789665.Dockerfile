[app/sources/252789665.Dockerfile]
digraph {
  "sha256:ec0fbfd54e10a4882219dee7609524b72ff6a8a1694b6ce7214ea298242065c0" [label="docker-image://quay.io/strimoid/php@sha256:97a71a6f982fd1e678e42df47c1009f2f3c6c2c5b81e1405502f36ae1e0acd3a" shape="ellipse"];
  "sha256:61740417291892a93630286d8c0ec671df864513a43ff02c0cbcb272c49d46eb" [label="local://context" shape="ellipse"];
  "sha256:891588e65fe5e2a6da2aac2e4e9f8fc21a63d1062a28b2056ae5cf42dd82e291" [label="copy{src=/docker-entrypoint.sh, dest=/}" shape="note"];
  "sha256:cbd06283f3dc3db274d563a804612935c729b73e4493b66df687c3d63beb61de" [label="mkdir{path=/src}" shape="note"];
  "sha256:b02515fe4b326650e9d936f5e4ede0b20af416b10dbcced37775d0acdda3d727" [label="copy{src=/, dest=/src}" shape="note"];
  "sha256:e94c1accd6bad6b539798dd86da40e94503caa6cac83500feb79df68c66549b3" [label="copy{src=/--from=assets, dest=/src},copy{src=/src/public/assets, dest=/src}" shape="note"];
  "sha256:b5921a4cca1a60b53aa159d87459661ceb0e26963c742459b3894489b6142bae" [label="/bin/sh -c composer install -n" shape="box"];
  "sha256:06d620d0b1cd4ad7aefabab589b560894c3c6235d7306e8f20a21859fedef000" [label="sha256:06d620d0b1cd4ad7aefabab589b560894c3c6235d7306e8f20a21859fedef000" shape="plaintext"];
  "sha256:ec0fbfd54e10a4882219dee7609524b72ff6a8a1694b6ce7214ea298242065c0" -> "sha256:891588e65fe5e2a6da2aac2e4e9f8fc21a63d1062a28b2056ae5cf42dd82e291" [label=""];
  "sha256:61740417291892a93630286d8c0ec671df864513a43ff02c0cbcb272c49d46eb" -> "sha256:891588e65fe5e2a6da2aac2e4e9f8fc21a63d1062a28b2056ae5cf42dd82e291" [label=""];
  "sha256:891588e65fe5e2a6da2aac2e4e9f8fc21a63d1062a28b2056ae5cf42dd82e291" -> "sha256:cbd06283f3dc3db274d563a804612935c729b73e4493b66df687c3d63beb61de" [label=""];
  "sha256:cbd06283f3dc3db274d563a804612935c729b73e4493b66df687c3d63beb61de" -> "sha256:b02515fe4b326650e9d936f5e4ede0b20af416b10dbcced37775d0acdda3d727" [label=""];
  "sha256:61740417291892a93630286d8c0ec671df864513a43ff02c0cbcb272c49d46eb" -> "sha256:b02515fe4b326650e9d936f5e4ede0b20af416b10dbcced37775d0acdda3d727" [label=""];
  "sha256:b02515fe4b326650e9d936f5e4ede0b20af416b10dbcced37775d0acdda3d727" -> "sha256:e94c1accd6bad6b539798dd86da40e94503caa6cac83500feb79df68c66549b3" [label=""];
  "sha256:61740417291892a93630286d8c0ec671df864513a43ff02c0cbcb272c49d46eb" -> "sha256:e94c1accd6bad6b539798dd86da40e94503caa6cac83500feb79df68c66549b3" [label=""];
  "sha256:e94c1accd6bad6b539798dd86da40e94503caa6cac83500feb79df68c66549b3" -> "sha256:b5921a4cca1a60b53aa159d87459661ceb0e26963c742459b3894489b6142bae" [label=""];
  "sha256:b5921a4cca1a60b53aa159d87459661ceb0e26963c742459b3894489b6142bae" -> "sha256:06d620d0b1cd4ad7aefabab589b560894c3c6235d7306e8f20a21859fedef000" [label=""];
}

