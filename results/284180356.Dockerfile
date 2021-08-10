[app/sources/284180356.Dockerfile]
digraph {
  "sha256:a1e4d4739a356c44842652818db166340b5d2f978f1b177ab0a23adb6f9b5fc8" [label="docker-image://docker.io/library/centos:7.3.1611" shape="ellipse"];
  "sha256:80d6f573a76c46f702cad141b98c0507e2d457ffebf92a60ae3e4875cd370af9" [label="/bin/sh -c mkdir -m 777 /poc" shape="box"];
  "sha256:2a15048a5063af0efb77a24edd953577526c07bbe9d49cdccee9f13cfe1cd3a8" [label="mkdir{path=/poc}" shape="note"];
  "sha256:0604aaaf8e5e18b34ef5209738ec753a1fab68d06b5aa2777a621c21232debfa" [label="local://context" shape="ellipse"];
  "sha256:9c1186cb55764c4f32e4f9b2e9c6d968b402d090dff288f5a3a8703b1e6bc2b4" [label="copy{src=/CVE-2017-1000253, dest=/poc/}" shape="note"];
  "sha256:59539d67cf934d01abe88f4fcb74849c9f5bd2f9778e7a990a099772106c57f6" [label="copy{src=/CVE-2017-1000253.c, dest=/poc/}" shape="note"];
  "sha256:522fcfc7510bcc390d1c342e80bdda44bd163c95cef7e04d409ccf37741f04fd" [label="copy{src=/rootshell, dest=/poc/}" shape="note"];
  "sha256:bff615388756f786f9a11951d4c92c8e8042ead2e9db5dcca136beadaa48bc07" [label="copy{src=/rootshell.c, dest=/poc/}" shape="note"];
  "sha256:235d35817f56c05a78a789e881e4fac4fced9fe78d87599601130ae157a2f3a2" [label="copy{src=/rootshell.h, dest=/poc/}" shape="note"];
  "sha256:61df504aa5f535e58b86c7f049d7f34737be69dca696524b95a307c886f94faf" [label="copy{src=/ping, dest=/poc/}" shape="note"];
  "sha256:c1780096239425e51beba279ecdbbf66259c691ae6b5d1d96f4686c055aabf01" [label="/bin/sh -c chown root:root ping && chmod 4755 ping" shape="box"];
  "sha256:b09e266b6c692ecb29404159a45fc4e412c430de2133f0c7a8b639d3d9c909f7" [label="sha256:b09e266b6c692ecb29404159a45fc4e412c430de2133f0c7a8b639d3d9c909f7" shape="plaintext"];
  "sha256:a1e4d4739a356c44842652818db166340b5d2f978f1b177ab0a23adb6f9b5fc8" -> "sha256:80d6f573a76c46f702cad141b98c0507e2d457ffebf92a60ae3e4875cd370af9" [label=""];
  "sha256:80d6f573a76c46f702cad141b98c0507e2d457ffebf92a60ae3e4875cd370af9" -> "sha256:2a15048a5063af0efb77a24edd953577526c07bbe9d49cdccee9f13cfe1cd3a8" [label=""];
  "sha256:2a15048a5063af0efb77a24edd953577526c07bbe9d49cdccee9f13cfe1cd3a8" -> "sha256:9c1186cb55764c4f32e4f9b2e9c6d968b402d090dff288f5a3a8703b1e6bc2b4" [label=""];
  "sha256:0604aaaf8e5e18b34ef5209738ec753a1fab68d06b5aa2777a621c21232debfa" -> "sha256:9c1186cb55764c4f32e4f9b2e9c6d968b402d090dff288f5a3a8703b1e6bc2b4" [label=""];
  "sha256:9c1186cb55764c4f32e4f9b2e9c6d968b402d090dff288f5a3a8703b1e6bc2b4" -> "sha256:59539d67cf934d01abe88f4fcb74849c9f5bd2f9778e7a990a099772106c57f6" [label=""];
  "sha256:0604aaaf8e5e18b34ef5209738ec753a1fab68d06b5aa2777a621c21232debfa" -> "sha256:59539d67cf934d01abe88f4fcb74849c9f5bd2f9778e7a990a099772106c57f6" [label=""];
  "sha256:59539d67cf934d01abe88f4fcb74849c9f5bd2f9778e7a990a099772106c57f6" -> "sha256:522fcfc7510bcc390d1c342e80bdda44bd163c95cef7e04d409ccf37741f04fd" [label=""];
  "sha256:0604aaaf8e5e18b34ef5209738ec753a1fab68d06b5aa2777a621c21232debfa" -> "sha256:522fcfc7510bcc390d1c342e80bdda44bd163c95cef7e04d409ccf37741f04fd" [label=""];
  "sha256:522fcfc7510bcc390d1c342e80bdda44bd163c95cef7e04d409ccf37741f04fd" -> "sha256:bff615388756f786f9a11951d4c92c8e8042ead2e9db5dcca136beadaa48bc07" [label=""];
  "sha256:0604aaaf8e5e18b34ef5209738ec753a1fab68d06b5aa2777a621c21232debfa" -> "sha256:bff615388756f786f9a11951d4c92c8e8042ead2e9db5dcca136beadaa48bc07" [label=""];
  "sha256:bff615388756f786f9a11951d4c92c8e8042ead2e9db5dcca136beadaa48bc07" -> "sha256:235d35817f56c05a78a789e881e4fac4fced9fe78d87599601130ae157a2f3a2" [label=""];
  "sha256:0604aaaf8e5e18b34ef5209738ec753a1fab68d06b5aa2777a621c21232debfa" -> "sha256:235d35817f56c05a78a789e881e4fac4fced9fe78d87599601130ae157a2f3a2" [label=""];
  "sha256:235d35817f56c05a78a789e881e4fac4fced9fe78d87599601130ae157a2f3a2" -> "sha256:61df504aa5f535e58b86c7f049d7f34737be69dca696524b95a307c886f94faf" [label=""];
  "sha256:0604aaaf8e5e18b34ef5209738ec753a1fab68d06b5aa2777a621c21232debfa" -> "sha256:61df504aa5f535e58b86c7f049d7f34737be69dca696524b95a307c886f94faf" [label=""];
  "sha256:61df504aa5f535e58b86c7f049d7f34737be69dca696524b95a307c886f94faf" -> "sha256:c1780096239425e51beba279ecdbbf66259c691ae6b5d1d96f4686c055aabf01" [label=""];
  "sha256:c1780096239425e51beba279ecdbbf66259c691ae6b5d1d96f4686c055aabf01" -> "sha256:b09e266b6c692ecb29404159a45fc4e412c430de2133f0c7a8b639d3d9c909f7" [label=""];
}

