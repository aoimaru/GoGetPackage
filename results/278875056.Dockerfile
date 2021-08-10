[app/sources/278875056.Dockerfile]
[33mWARN[0m[0002] reference for unknown type: application/octet-stream  [33mdigest[0m="sha256:7ee9d206197038794288f7c8d8c5ee1fc51ca09f05d0cfb004f85da709520b8a" [33mmediatype[0m=application/octet-stream [33msize[0m=6933
digraph {
  "sha256:d72d31df14ca2bc3a2858e19821bb13a7495e50844c6b3a4453137016d150611" [label="docker-image://docker.io/library/postgres:9.5.3" shape="ellipse"];
  "sha256:24ed41cde39d61d1b10a32acfb05325f7071d00da378d990d2bd148efcd05294" [label="local://context" shape="ellipse"];
  "sha256:ad951b814645b2afaebe585e63b771b51979354f7fb022b1a88035ddfff56f8b" [label="copy{src=/docker-entrypoint-initdb.d, dest=/docker-entrypoint-initdb.d}" shape="note"];
  "sha256:aa35605afa7743170b2f6d92c4ba21a4e660880b9975aa005770f4f0ad27e495" [label="sha256:aa35605afa7743170b2f6d92c4ba21a4e660880b9975aa005770f4f0ad27e495" shape="plaintext"];
  "sha256:d72d31df14ca2bc3a2858e19821bb13a7495e50844c6b3a4453137016d150611" -> "sha256:ad951b814645b2afaebe585e63b771b51979354f7fb022b1a88035ddfff56f8b" [label=""];
  "sha256:24ed41cde39d61d1b10a32acfb05325f7071d00da378d990d2bd148efcd05294" -> "sha256:ad951b814645b2afaebe585e63b771b51979354f7fb022b1a88035ddfff56f8b" [label=""];
  "sha256:ad951b814645b2afaebe585e63b771b51979354f7fb022b1a88035ddfff56f8b" -> "sha256:aa35605afa7743170b2f6d92c4ba21a4e660880b9975aa005770f4f0ad27e495" [label=""];
}

