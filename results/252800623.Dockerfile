[app/sources/252800623.Dockerfile]
digraph {
  "sha256:d2ee5802ef4e66d369c54e82b95249fae39b2901680b3bf23f2a3f73eba58df0" [label="docker-image://docker.io/library/java:8" shape="ellipse"];
  "sha256:00059ef6b408f0a9f5dd15ab1c15ea4f2f12622b14e97a52faa0208d0e1d63ec" [label="local://context" shape="ellipse"];
  "sha256:ad559969b414d80d1df4073bada82c2fc2ac78379cac2d8f9435eefd68cbadc1" [label="copy{src=/HelloWorld.java, dest=/}" shape="note"];
  "sha256:a3f5f332c645240421b611677c31292d4064cda311c22211a62c8be847ae5fa0" [label="/bin/sh -c javac HelloWorld.java" shape="box"];
  "sha256:744401e8aecfbc15977c96ae000a0cf30d24dd342dfdf1cfe41a582b10b3a0b8" [label="sha256:744401e8aecfbc15977c96ae000a0cf30d24dd342dfdf1cfe41a582b10b3a0b8" shape="plaintext"];
  "sha256:d2ee5802ef4e66d369c54e82b95249fae39b2901680b3bf23f2a3f73eba58df0" -> "sha256:ad559969b414d80d1df4073bada82c2fc2ac78379cac2d8f9435eefd68cbadc1" [label=""];
  "sha256:00059ef6b408f0a9f5dd15ab1c15ea4f2f12622b14e97a52faa0208d0e1d63ec" -> "sha256:ad559969b414d80d1df4073bada82c2fc2ac78379cac2d8f9435eefd68cbadc1" [label=""];
  "sha256:ad559969b414d80d1df4073bada82c2fc2ac78379cac2d8f9435eefd68cbadc1" -> "sha256:a3f5f332c645240421b611677c31292d4064cda311c22211a62c8be847ae5fa0" [label=""];
  "sha256:a3f5f332c645240421b611677c31292d4064cda311c22211a62c8be847ae5fa0" -> "sha256:744401e8aecfbc15977c96ae000a0cf30d24dd342dfdf1cfe41a582b10b3a0b8" [label=""];
}

