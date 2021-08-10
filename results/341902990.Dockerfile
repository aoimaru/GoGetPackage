[app/sources/341902990.Dockerfile]
digraph {
  "sha256:7cbcdea8d273923f0040dd3dba056ea21dc5a4f56c64cf12d36b1951dfa1d21c" [label="local://context" shape="ellipse"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" [label="docker-image://docker.io/library/python:2.7.13" shape="ellipse"];
  "sha256:719259fcc57dbcbd467d2c0c2e40ccb3d56d8e742ad67dccc4b66746e85f306a" [label="copy{src=/snippet.py, dest=/snippet.py}" shape="note"];
  "sha256:580602b1c416cfa76ec5d48e0ed606b80aa9789faa4230ac673a3ad5ec76e8df" [label="pip install icalendar" shape="box"];
  "sha256:31dce5ce8792da99f22573d957882f9f945390afdd1eae84b17346764e257420" [label="pip install icalendar" shape="box"];
  "sha256:a40c26ad55245f11f463be2928c04648cf47c25a5d47d7c99fdfddbc343852bd" [label="sha256:a40c26ad55245f11f463be2928c04648cf47c25a5d47d7c99fdfddbc343852bd" shape="plaintext"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" -> "sha256:719259fcc57dbcbd467d2c0c2e40ccb3d56d8e742ad67dccc4b66746e85f306a" [label=""];
  "sha256:7cbcdea8d273923f0040dd3dba056ea21dc5a4f56c64cf12d36b1951dfa1d21c" -> "sha256:719259fcc57dbcbd467d2c0c2e40ccb3d56d8e742ad67dccc4b66746e85f306a" [label=""];
  "sha256:719259fcc57dbcbd467d2c0c2e40ccb3d56d8e742ad67dccc4b66746e85f306a" -> "sha256:580602b1c416cfa76ec5d48e0ed606b80aa9789faa4230ac673a3ad5ec76e8df" [label=""];
  "sha256:580602b1c416cfa76ec5d48e0ed606b80aa9789faa4230ac673a3ad5ec76e8df" -> "sha256:31dce5ce8792da99f22573d957882f9f945390afdd1eae84b17346764e257420" [label=""];
  "sha256:31dce5ce8792da99f22573d957882f9f945390afdd1eae84b17346764e257420" -> "sha256:a40c26ad55245f11f463be2928c04648cf47c25a5d47d7c99fdfddbc343852bd" [label=""];
}

