[app/sources/292522704.Dockerfile]
digraph {
  "sha256:08a03f3ffe5fba421a6403c31e153425ced631d108868f30e04985f99d69326e" [label="docker-image://docker.io/library/busybox:latest" shape="ellipse"];
  "sha256:12a91434b68a5f81368890b9af5eb00e14415ff98254b56055fda85639c812f5" [label="/bin/sh -c touch /file && chown 100:200 /file  && mkdir -p /dir/subdir  && touch /dir/subdir/nestedfile  && chown 100:200 /dir  && chown 101:201 /dir/subdir  && chown 102:202 /dir/subdir/nestedfile" shape="box"];
  "sha256:b40bea77789015c29bd3a26f97c09b4426aad6d4e487c585984cecebd9f4d535" [label="/bin/sh -c mkdir -p /existingdir/existingsubdir  && touch /existingdir/existingfile  && chown 500:600 /existingdir  && chown 501:601 /existingdir/existingsubdir  && chown 501:601 /existingdir/existingfile" shape="box"];
  "sha256:7867fca62ea34c3c8957a1f2bce61100b71e8fa122254125486fa75f86d0479c" [label="copy{src=/file, dest=/}" shape="note"];
  "sha256:719e58256c61a28f7fdbd3727ae5f0f24d0895b8de82570a05e41d466b8e2d07" [label="copy{src=/dir, dest=/dir}" shape="note"];
  "sha256:004b1c55549192d4fbff4d79ebb89bd362fe467841bdcc8bc8947198b759fbc9" [label="copy{src=/dir, dest=/existingdir}" shape="note"];
  "sha256:fe9befdc43c7be698300d026d664b12891b32c045e10cd8a00f1c75429e7cf7e" [label="/bin/sh -c e=\"300:400\"; p=\"/file\"                         ; a=`stat -c \"%u:%g\" \"$p\"`; if [ \"$a\" != \"$e\" ]; then echo \"incorrect ownership on $p. expected $e, got $a\"; exit 1; fi  && e=\"300:400\"; p=\"/dir\"                          ; a=`stat -c \"%u:%g\" \"$p\"`; if [ \"$a\" != \"$e\" ]; then echo \"incorrect ownership on $p. expected $e, got $a\"; exit 1; fi  && e=\"300:400\"; p=\"/dir/subdir\"                   ; a=`stat -c \"%u:%g\" \"$p\"`; if [ \"$a\" != \"$e\" ]; then echo \"incorrect ownership on $p. expected $e, got $a\"; exit 1; fi  && e=\"300:400\"; p=\"/dir/subdir/nestedfile\"        ; a=`stat -c \"%u:%g\" \"$p\"`; if [ \"$a\" != \"$e\" ]; then echo \"incorrect ownership on $p. expected $e, got $a\"; exit 1; fi  && e=\"500:600\"; p=\"/existingdir\"                  ; a=`stat -c \"%u:%g\" \"$p\"`; if [ \"$a\" != \"$e\" ]; then echo \"incorrect ownership on $p. expected $e, got $a\"; exit 1; fi  && e=\"501:601\"; p=\"/existingdir/existingsubdir\"   ; a=`stat -c \"%u:%g\" \"$p\"`; if [ \"$a\" != \"$e\" ]; then echo \"incorrect ownership on $p. expected $e, got $a\"; exit 1; fi  && e=\"501:601\"; p=\"/existingdir/existingfile\"     ; a=`stat -c \"%u:%g\" \"$p\"`; if [ \"$a\" != \"$e\" ]; then echo \"incorrect ownership on $p. expected $e, got $a\"; exit 1; fi  && e=\"300:400\"; p=\"/existingdir/subdir\"           ; a=`stat -c \"%u:%g\" \"$p\"`; if [ \"$a\" != \"$e\" ]; then echo \"incorrect ownership on $p. expected $e, got $a\"; exit 1; fi  && e=\"300:400\"; p=\"/existingdir/subdir/nestedfile\"; a=`stat -c \"%u:%g\" \"$p\"`; if [ \"$a\" != \"$e\" ]; then echo \"incorrect ownership on $p. expected $e, got $a\"; exit 1; fi" shape="box"];
  "sha256:444cf2e2d6b42e3d93ad59aaf47983fdd2e32ec19b5bb6ea71187d14cc898272" [label="sha256:444cf2e2d6b42e3d93ad59aaf47983fdd2e32ec19b5bb6ea71187d14cc898272" shape="plaintext"];
  "sha256:08a03f3ffe5fba421a6403c31e153425ced631d108868f30e04985f99d69326e" -> "sha256:12a91434b68a5f81368890b9af5eb00e14415ff98254b56055fda85639c812f5" [label=""];
  "sha256:08a03f3ffe5fba421a6403c31e153425ced631d108868f30e04985f99d69326e" -> "sha256:b40bea77789015c29bd3a26f97c09b4426aad6d4e487c585984cecebd9f4d535" [label=""];
  "sha256:b40bea77789015c29bd3a26f97c09b4426aad6d4e487c585984cecebd9f4d535" -> "sha256:7867fca62ea34c3c8957a1f2bce61100b71e8fa122254125486fa75f86d0479c" [label=""];
  "sha256:12a91434b68a5f81368890b9af5eb00e14415ff98254b56055fda85639c812f5" -> "sha256:7867fca62ea34c3c8957a1f2bce61100b71e8fa122254125486fa75f86d0479c" [label=""];
  "sha256:7867fca62ea34c3c8957a1f2bce61100b71e8fa122254125486fa75f86d0479c" -> "sha256:719e58256c61a28f7fdbd3727ae5f0f24d0895b8de82570a05e41d466b8e2d07" [label=""];
  "sha256:12a91434b68a5f81368890b9af5eb00e14415ff98254b56055fda85639c812f5" -> "sha256:719e58256c61a28f7fdbd3727ae5f0f24d0895b8de82570a05e41d466b8e2d07" [label=""];
  "sha256:719e58256c61a28f7fdbd3727ae5f0f24d0895b8de82570a05e41d466b8e2d07" -> "sha256:004b1c55549192d4fbff4d79ebb89bd362fe467841bdcc8bc8947198b759fbc9" [label=""];
  "sha256:12a91434b68a5f81368890b9af5eb00e14415ff98254b56055fda85639c812f5" -> "sha256:004b1c55549192d4fbff4d79ebb89bd362fe467841bdcc8bc8947198b759fbc9" [label=""];
  "sha256:004b1c55549192d4fbff4d79ebb89bd362fe467841bdcc8bc8947198b759fbc9" -> "sha256:fe9befdc43c7be698300d026d664b12891b32c045e10cd8a00f1c75429e7cf7e" [label=""];
  "sha256:fe9befdc43c7be698300d026d664b12891b32c045e10cd8a00f1c75429e7cf7e" -> "sha256:444cf2e2d6b42e3d93ad59aaf47983fdd2e32ec19b5bb6ea71187d14cc898272" [label=""];
}

