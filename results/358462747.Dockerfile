[app/sources/358462747.Dockerfile]
digraph {
  "sha256:eccdc23ae33ff032265281cdcd61b6bcb08837a6e55df3e7dcb5aef332534337" [label="docker-image://docker.io/library/centos:7" shape="ellipse"];
  "sha256:ea371273f4d2e68a3c8a4ad52966f1752db369c0574cefc4e0ac413939de451b" [label="/bin/sh -c yum install -y https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm" shape="box"];
  "sha256:b16df43a49a92261af59dfdaaf4008559d60cd82eeac17df0a18c6bbe9bef81f" [label="/bin/sh -c yum install -y git ${PYTHON_BINARY}" shape="box"];
  "sha256:6d954969fa5b6918c28407d9630ba70c6e10a188b56f5a9481badaed2115b398" [label="local://context" shape="ellipse"];
  "sha256:7a63adcde7bc4498f3df72fc06bddc5aac20dc891723a0a700a0f471edd0d7d9" [label="copy{src=/, dest=/ohpc}" shape="note"];
  "sha256:31fb5b4aafec26f9a1463f7f6c845a93a42507ae9a054e0db25e963d7689e742" [label="mkdir{path=/ohpc}" shape="note"];
  "sha256:86343a5bedd0ace61a9a8f264c99f1528d00d1a713c828f0a13e42835fc1cf81" [label="/bin/sh -c ${PYTHON_BINARY} tests/travis/check_spec.py ${TRAVIS_COMMIT_RANGE}" shape="box"];
  "sha256:4bd84b3d5d5a3dbfbbc63ab140cbea9d6b346ddc70d570fbc1cf5796619dc5e3" [label="sha256:4bd84b3d5d5a3dbfbbc63ab140cbea9d6b346ddc70d570fbc1cf5796619dc5e3" shape="plaintext"];
  "sha256:eccdc23ae33ff032265281cdcd61b6bcb08837a6e55df3e7dcb5aef332534337" -> "sha256:ea371273f4d2e68a3c8a4ad52966f1752db369c0574cefc4e0ac413939de451b" [label=""];
  "sha256:ea371273f4d2e68a3c8a4ad52966f1752db369c0574cefc4e0ac413939de451b" -> "sha256:b16df43a49a92261af59dfdaaf4008559d60cd82eeac17df0a18c6bbe9bef81f" [label=""];
  "sha256:b16df43a49a92261af59dfdaaf4008559d60cd82eeac17df0a18c6bbe9bef81f" -> "sha256:7a63adcde7bc4498f3df72fc06bddc5aac20dc891723a0a700a0f471edd0d7d9" [label=""];
  "sha256:6d954969fa5b6918c28407d9630ba70c6e10a188b56f5a9481badaed2115b398" -> "sha256:7a63adcde7bc4498f3df72fc06bddc5aac20dc891723a0a700a0f471edd0d7d9" [label=""];
  "sha256:7a63adcde7bc4498f3df72fc06bddc5aac20dc891723a0a700a0f471edd0d7d9" -> "sha256:31fb5b4aafec26f9a1463f7f6c845a93a42507ae9a054e0db25e963d7689e742" [label=""];
  "sha256:31fb5b4aafec26f9a1463f7f6c845a93a42507ae9a054e0db25e963d7689e742" -> "sha256:86343a5bedd0ace61a9a8f264c99f1528d00d1a713c828f0a13e42835fc1cf81" [label=""];
  "sha256:86343a5bedd0ace61a9a8f264c99f1528d00d1a713c828f0a13e42835fc1cf81" -> "sha256:4bd84b3d5d5a3dbfbbc63ab140cbea9d6b346ddc70d570fbc1cf5796619dc5e3" [label=""];
}

