[app/sources/252785131.Dockerfile]
digraph {
  "sha256:61ee93ab0464078492470667136963a9f5b630bb44c9c01d0ecfbaa2fe2ad235" [label="docker-image://docker.io/coduno/base:latest" shape="ellipse"];
  "sha256:ff35e0642dea58c23daeca4a0d99eda536fe993f8563c024a6b758e2e9da060b" [label="/bin/sh -c mkdir /node" shape="box"];
  "sha256:d1426076b52105f394e8710d7e83cd55a7073b830f8e3459141030bf48e3ff0a" [label="/bin/sh -c apt-get update -y && apt-get install fp-compiler -y" shape="box"];
  "sha256:54b6c0bce8bca7bebba66a326d2e97f6f15418fd306f13b3aeb599ffec2eab62" [label="local://context" shape="ellipse"];
  "sha256:7958828a4842cafd6504e3e102bfdf229af93bcf3f44dcabf5c834fe044f3772" [label="copy{src=/, dest=/run}" shape="note"];
  "sha256:3216155155d4ba6f94d2f8977151a4d9f8e5704a3a713c1ec3f7bea548ccd22f" [label="sha256:3216155155d4ba6f94d2f8977151a4d9f8e5704a3a713c1ec3f7bea548ccd22f" shape="plaintext"];
  "sha256:61ee93ab0464078492470667136963a9f5b630bb44c9c01d0ecfbaa2fe2ad235" -> "sha256:ff35e0642dea58c23daeca4a0d99eda536fe993f8563c024a6b758e2e9da060b" [label=""];
  "sha256:ff35e0642dea58c23daeca4a0d99eda536fe993f8563c024a6b758e2e9da060b" -> "sha256:d1426076b52105f394e8710d7e83cd55a7073b830f8e3459141030bf48e3ff0a" [label=""];
  "sha256:d1426076b52105f394e8710d7e83cd55a7073b830f8e3459141030bf48e3ff0a" -> "sha256:7958828a4842cafd6504e3e102bfdf229af93bcf3f44dcabf5c834fe044f3772" [label=""];
  "sha256:54b6c0bce8bca7bebba66a326d2e97f6f15418fd306f13b3aeb599ffec2eab62" -> "sha256:7958828a4842cafd6504e3e102bfdf229af93bcf3f44dcabf5c834fe044f3772" [label=""];
  "sha256:7958828a4842cafd6504e3e102bfdf229af93bcf3f44dcabf5c834fe044f3772" -> "sha256:3216155155d4ba6f94d2f8977151a4d9f8e5704a3a713c1ec3f7bea548ccd22f" [label=""];
}

