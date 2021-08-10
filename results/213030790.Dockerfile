[app/sources/213030790.Dockerfile]
digraph {
  "sha256:2beec29df4b343e0dbf7adb589a613b17f1c676e089b989521eed6d23c1421d8" [label="docker-image://docker.io/library/python:2.7" shape="ellipse"];
  "sha256:468389adb429af2f8078a86edd8024bfe7fd774ca8456a3e3520e2b3671a8d47" [label="/bin/sh -c apt-get update && apt-get install -y bsdmainutils" shape="box"];
  "sha256:217078d0c5144b53bca0144ffdbc69499bf2efc7f659dce85f89eb50f4ff94a1" [label="local://context" shape="ellipse"];
  "sha256:0d32785361d98fb7802341abb394387c1eec727a9a437cf849cb224911b9a059" [label="copy{src=/, dest=/workspace}" shape="note"];
  "sha256:5557babd0a1747d983c4c11b4b3006171905a7bc368899b78837b0175b4ab133" [label="mkdir{path=/workspace}" shape="note"];
  "sha256:e76b590ff7a8644a218815198d1f194888e0ad98fdde3dc17edff43f033e53ca" [label="sha256:e76b590ff7a8644a218815198d1f194888e0ad98fdde3dc17edff43f033e53ca" shape="plaintext"];
  "sha256:2beec29df4b343e0dbf7adb589a613b17f1c676e089b989521eed6d23c1421d8" -> "sha256:468389adb429af2f8078a86edd8024bfe7fd774ca8456a3e3520e2b3671a8d47" [label=""];
  "sha256:468389adb429af2f8078a86edd8024bfe7fd774ca8456a3e3520e2b3671a8d47" -> "sha256:0d32785361d98fb7802341abb394387c1eec727a9a437cf849cb224911b9a059" [label=""];
  "sha256:217078d0c5144b53bca0144ffdbc69499bf2efc7f659dce85f89eb50f4ff94a1" -> "sha256:0d32785361d98fb7802341abb394387c1eec727a9a437cf849cb224911b9a059" [label=""];
  "sha256:0d32785361d98fb7802341abb394387c1eec727a9a437cf849cb224911b9a059" -> "sha256:5557babd0a1747d983c4c11b4b3006171905a7bc368899b78837b0175b4ab133" [label=""];
  "sha256:5557babd0a1747d983c4c11b4b3006171905a7bc368899b78837b0175b4ab133" -> "sha256:e76b590ff7a8644a218815198d1f194888e0ad98fdde3dc17edff43f033e53ca" [label=""];
}

