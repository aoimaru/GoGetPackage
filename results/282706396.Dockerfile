[app/sources/282706396.Dockerfile]
digraph {
  "sha256:42bb93e4f323e97554b050c6a3ed4ca0782ac4863d6c6a3048a4ef5ebad139aa" [label="docker-image://docker.io/library/openjdk:8u171-jre-alpine" shape="ellipse"];
  "sha256:6e0644029a6a9a05652aa0e834833af4104cf77f598ae88d7e5f1fc0a8dd6e7c" [label="/bin/sh -c apk --no-cache add curl" shape="box"];
  "sha256:a62b3f65b20da00b6adebb9840e4d6ebcde38f9519a1a515d9fdeabf8b1287a5" [label="local://context" shape="ellipse"];
  "sha256:199777222c0c28e587cbf3d84d7b5d53956fe4365f2b52ffa91784a6b1bd52e1" [label="copy{src=/build/libs/ftgo-order-service.jar, dest=/}" shape="note"];
  "sha256:92355a3b7df2a03a9c2b933fe2cafcbe9deb4a2b6c55936cbd5b986be19c0bc2" [label="sha256:92355a3b7df2a03a9c2b933fe2cafcbe9deb4a2b6c55936cbd5b986be19c0bc2" shape="plaintext"];
  "sha256:42bb93e4f323e97554b050c6a3ed4ca0782ac4863d6c6a3048a4ef5ebad139aa" -> "sha256:6e0644029a6a9a05652aa0e834833af4104cf77f598ae88d7e5f1fc0a8dd6e7c" [label=""];
  "sha256:6e0644029a6a9a05652aa0e834833af4104cf77f598ae88d7e5f1fc0a8dd6e7c" -> "sha256:199777222c0c28e587cbf3d84d7b5d53956fe4365f2b52ffa91784a6b1bd52e1" [label=""];
  "sha256:a62b3f65b20da00b6adebb9840e4d6ebcde38f9519a1a515d9fdeabf8b1287a5" -> "sha256:199777222c0c28e587cbf3d84d7b5d53956fe4365f2b52ffa91784a6b1bd52e1" [label=""];
  "sha256:199777222c0c28e587cbf3d84d7b5d53956fe4365f2b52ffa91784a6b1bd52e1" -> "sha256:92355a3b7df2a03a9c2b933fe2cafcbe9deb4a2b6c55936cbd5b986be19c0bc2" [label=""];
}

