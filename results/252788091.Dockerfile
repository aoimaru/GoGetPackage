[app/sources/252788091.Dockerfile]
digraph {
  "sha256:5124f75070defae469a6bf435fd368ac04eb3250de4d1aeafec8b6eb84c9a993" [label="local://context" shape="ellipse"];
  "sha256:143ec88cc5d5a87ccf4d9a3f3e619d1419376a646dc6c35d4e3f1bb75624ff56" [label="docker-image://docker.io/library/python:3.5" shape="ellipse"];
  "sha256:648fd8253c997bbf1fbfd27a7d093241d4980d37057a30236e580255d882e5aa" [label="copy{src=/requirements.txt, dest=/app/requirements.txt}" shape="note"];
  "sha256:0da2f6ab2e060a955f6049a0b398e7e4789c1e1cc811b8ae4dc2ff9935556077" [label="mkdir{path=/app}" shape="note"];
  "sha256:0250a977382bfcf78f39552e3bd3d7599b9ac666d953661d43dfca42be0790f1" [label="/bin/sh -c pip install --quiet --disable-pip-version-check -r requirements.txt" shape="box"];
  "sha256:ec3178fec48771f23f31740d744822a7064f87c1821782f765f1dd8df0062460" [label="copy{src=/, dest=/app}" shape="note"];
  "sha256:b951121237d31df24cf6b4112218f73c12a288b334d114bfccc885d85f32e589" [label="sha256:b951121237d31df24cf6b4112218f73c12a288b334d114bfccc885d85f32e589" shape="plaintext"];
  "sha256:143ec88cc5d5a87ccf4d9a3f3e619d1419376a646dc6c35d4e3f1bb75624ff56" -> "sha256:648fd8253c997bbf1fbfd27a7d093241d4980d37057a30236e580255d882e5aa" [label=""];
  "sha256:5124f75070defae469a6bf435fd368ac04eb3250de4d1aeafec8b6eb84c9a993" -> "sha256:648fd8253c997bbf1fbfd27a7d093241d4980d37057a30236e580255d882e5aa" [label=""];
  "sha256:648fd8253c997bbf1fbfd27a7d093241d4980d37057a30236e580255d882e5aa" -> "sha256:0da2f6ab2e060a955f6049a0b398e7e4789c1e1cc811b8ae4dc2ff9935556077" [label=""];
  "sha256:0da2f6ab2e060a955f6049a0b398e7e4789c1e1cc811b8ae4dc2ff9935556077" -> "sha256:0250a977382bfcf78f39552e3bd3d7599b9ac666d953661d43dfca42be0790f1" [label=""];
  "sha256:0250a977382bfcf78f39552e3bd3d7599b9ac666d953661d43dfca42be0790f1" -> "sha256:ec3178fec48771f23f31740d744822a7064f87c1821782f765f1dd8df0062460" [label=""];
  "sha256:5124f75070defae469a6bf435fd368ac04eb3250de4d1aeafec8b6eb84c9a993" -> "sha256:ec3178fec48771f23f31740d744822a7064f87c1821782f765f1dd8df0062460" [label=""];
  "sha256:ec3178fec48771f23f31740d744822a7064f87c1821782f765f1dd8df0062460" -> "sha256:b951121237d31df24cf6b4112218f73c12a288b334d114bfccc885d85f32e589" [label=""];
}

