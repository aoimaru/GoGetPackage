[app/sources/333675092.Dockerfile]
digraph {
  "sha256:cf5c4b6b69338838a5833c9782b00fb22a0dd2cb9b545de4fbe96fd0b8beb0a5" [label="local://context" shape="ellipse"];
  "sha256:64512b51e388eb9f51661bcd68213fcb1e166b3d94eda951f218d1765db02f8e" [label="copy{src=/ca-certificates.crt, dest=/etc/ssl/certs/}" shape="note"];
  "sha256:551648ff57b55915df8525a7408e1acc995b5164076be42b745cc11f686df91d" [label="copy{src=/h2demo, dest=/}" shape="note"];
  "sha256:522d8da5f70ac5ad5c6eebbd4287d07817f9ec1dbf7954d837c01afaea79866d" [label="sha256:522d8da5f70ac5ad5c6eebbd4287d07817f9ec1dbf7954d837c01afaea79866d" shape="plaintext"];
  "sha256:cf5c4b6b69338838a5833c9782b00fb22a0dd2cb9b545de4fbe96fd0b8beb0a5" -> "sha256:64512b51e388eb9f51661bcd68213fcb1e166b3d94eda951f218d1765db02f8e" [label=""];
  "sha256:64512b51e388eb9f51661bcd68213fcb1e166b3d94eda951f218d1765db02f8e" -> "sha256:551648ff57b55915df8525a7408e1acc995b5164076be42b745cc11f686df91d" [label=""];
  "sha256:cf5c4b6b69338838a5833c9782b00fb22a0dd2cb9b545de4fbe96fd0b8beb0a5" -> "sha256:551648ff57b55915df8525a7408e1acc995b5164076be42b745cc11f686df91d" [label=""];
  "sha256:551648ff57b55915df8525a7408e1acc995b5164076be42b745cc11f686df91d" -> "sha256:522d8da5f70ac5ad5c6eebbd4287d07817f9ec1dbf7954d837c01afaea79866d" [label=""];
}

