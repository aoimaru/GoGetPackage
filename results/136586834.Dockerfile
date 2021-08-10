[app/sources/136586834.Dockerfile]
digraph {
  "sha256:14c42e6e039b32ee2b0d4102c75c452274af1ce24a8695bd1abfba26f9307a2e" [label="docker-image://docker.io/library/golang:1.11-alpine" shape="ellipse"];
  "sha256:77add6e5bda00977df3fe629c1eb8960a64f34654d6482ce3d7bab9a28519b7c" [label="mkdir{path=/go/src/app}" shape="note"];
  "sha256:b2c5d7a613673c01ed47f640c40c0a641d03bfd183941dc319303db551a1f3e2" [label="local://context" shape="ellipse"];
  "sha256:8d81d162d45aaa86539fc30137828115ad7ad2f9ed94d50ef32ddddfa7fceb99" [label="copy{src=/main.go, dest=/go/src/app/main.go}" shape="note"];
  "sha256:c3a228937e66522bb412f19876ce44e68804514986baead5ffca9b0b14a472cb" [label="/bin/sh -c CGO_ENABLED=0 go build       -ldflags=\"-w -s\"       -o /app main.go" shape="box"];
  "sha256:83c26c4d0abaca299f13dd5e45ff0bb5baa10e5771bae5d28b9434a0595df713" [label="copy{src=/app, dest=/app}" shape="note"];
  "sha256:2f83aa1de4b56c8d6589c9955f19a012d638b6dbddc65854b8201bcd5738c716" [label="sha256:2f83aa1de4b56c8d6589c9955f19a012d638b6dbddc65854b8201bcd5738c716" shape="plaintext"];
  "sha256:14c42e6e039b32ee2b0d4102c75c452274af1ce24a8695bd1abfba26f9307a2e" -> "sha256:77add6e5bda00977df3fe629c1eb8960a64f34654d6482ce3d7bab9a28519b7c" [label=""];
  "sha256:77add6e5bda00977df3fe629c1eb8960a64f34654d6482ce3d7bab9a28519b7c" -> "sha256:8d81d162d45aaa86539fc30137828115ad7ad2f9ed94d50ef32ddddfa7fceb99" [label=""];
  "sha256:b2c5d7a613673c01ed47f640c40c0a641d03bfd183941dc319303db551a1f3e2" -> "sha256:8d81d162d45aaa86539fc30137828115ad7ad2f9ed94d50ef32ddddfa7fceb99" [label=""];
  "sha256:8d81d162d45aaa86539fc30137828115ad7ad2f9ed94d50ef32ddddfa7fceb99" -> "sha256:c3a228937e66522bb412f19876ce44e68804514986baead5ffca9b0b14a472cb" [label=""];
  "sha256:c3a228937e66522bb412f19876ce44e68804514986baead5ffca9b0b14a472cb" -> "sha256:83c26c4d0abaca299f13dd5e45ff0bb5baa10e5771bae5d28b9434a0595df713" [label=""];
  "sha256:83c26c4d0abaca299f13dd5e45ff0bb5baa10e5771bae5d28b9434a0595df713" -> "sha256:2f83aa1de4b56c8d6589c9955f19a012d638b6dbddc65854b8201bcd5738c716" [label=""];
}

