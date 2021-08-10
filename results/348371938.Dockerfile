[app/sources/348371938.Dockerfile]
digraph {
  "sha256:1da08bb44a8f05b0929c2b192c193efecdf99d2e286b171b8835c55d6afcece7" [label="docker-image://docker.io/microsoft/aspnet:1.0.0-beta7" shape="ellipse"];
  "sha256:71e0cb695e461e76335cfaaba135fb8f774bffa2cb51a60a6e813ce3123a3e3f" [label="local://context" shape="ellipse"];
  "sha256:3a35db6eb23d954f22518eb7a74afbeab02d4c0eaf430b633f6039421d550988" [label="copy{src=/, dest=/app}" shape="note"];
  "sha256:96533145c60a6b7d385a711a1c597bdfb6f1d59d3b0288fdc5c95e501669e901" [label="mkdir{path=/app}" shape="note"];
  "sha256:cdcfa443c5fb937ecfe4cee0b5f44b2bd1cd369ee8ccceaf5df2656adb178154" [label="sha256:cdcfa443c5fb937ecfe4cee0b5f44b2bd1cd369ee8ccceaf5df2656adb178154" shape="plaintext"];
  "sha256:1da08bb44a8f05b0929c2b192c193efecdf99d2e286b171b8835c55d6afcece7" -> "sha256:3a35db6eb23d954f22518eb7a74afbeab02d4c0eaf430b633f6039421d550988" [label=""];
  "sha256:71e0cb695e461e76335cfaaba135fb8f774bffa2cb51a60a6e813ce3123a3e3f" -> "sha256:3a35db6eb23d954f22518eb7a74afbeab02d4c0eaf430b633f6039421d550988" [label=""];
  "sha256:3a35db6eb23d954f22518eb7a74afbeab02d4c0eaf430b633f6039421d550988" -> "sha256:96533145c60a6b7d385a711a1c597bdfb6f1d59d3b0288fdc5c95e501669e901" [label=""];
  "sha256:96533145c60a6b7d385a711a1c597bdfb6f1d59d3b0288fdc5c95e501669e901" -> "sha256:cdcfa443c5fb937ecfe4cee0b5f44b2bd1cd369ee8ccceaf5df2656adb178154" [label=""];
}

