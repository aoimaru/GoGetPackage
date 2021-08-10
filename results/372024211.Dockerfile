[app/sources/372024211.Dockerfile]
digraph {
  "sha256:17d2e045f70745f4b7eef9abb62566e9de5c9d02c4898fe25b5003c75e3be0d2" [label="docker-image://docker.io/library/gcc:8.2.0" shape="ellipse"];
  "sha256:6259bf022df589acc022af9169ee7d68f7bfe0dbcc9c2791fb40c9e9fa486aa2" [label="local://context" shape="ellipse"];
  "sha256:7919a41802127bd238adb5243b560acebea0213f6825f9375dc3a519b328f4f2" [label="copy{src=/, dest=/project}" shape="note"];
  "sha256:7e04da42e599553ab3435c05c09a08c7545c54c0218b9d701a50c50c32148b5e" [label="mkdir{path=/project}" shape="note"];
  "sha256:c15eb983221d36a983118c12b4cd9cbdcec33f899c94c8d5452676e7c8f749a1" [label="sha256:c15eb983221d36a983118c12b4cd9cbdcec33f899c94c8d5452676e7c8f749a1" shape="plaintext"];
  "sha256:17d2e045f70745f4b7eef9abb62566e9de5c9d02c4898fe25b5003c75e3be0d2" -> "sha256:7919a41802127bd238adb5243b560acebea0213f6825f9375dc3a519b328f4f2" [label=""];
  "sha256:6259bf022df589acc022af9169ee7d68f7bfe0dbcc9c2791fb40c9e9fa486aa2" -> "sha256:7919a41802127bd238adb5243b560acebea0213f6825f9375dc3a519b328f4f2" [label=""];
  "sha256:7919a41802127bd238adb5243b560acebea0213f6825f9375dc3a519b328f4f2" -> "sha256:7e04da42e599553ab3435c05c09a08c7545c54c0218b9d701a50c50c32148b5e" [label=""];
  "sha256:7e04da42e599553ab3435c05c09a08c7545c54c0218b9d701a50c50c32148b5e" -> "sha256:c15eb983221d36a983118c12b4cd9cbdcec33f899c94c8d5452676e7c8f749a1" [label=""];
}

