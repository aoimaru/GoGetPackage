[app/sources/231220977.Dockerfile]
digraph {
  "sha256:41c38fea27e1ef4d64bd90caf59925883c9252db7d7801b14d811563e634f897" [label="docker-image://docker.io/webhippie/golang:edge" shape="ellipse"];
  "sha256:8fed2f9adfcb9327f8465628d4efdd586eab48eb1c101c47f3e6176382b299b3" [label="/bin/sh -c apk add --update autoconf zlib-dev > /dev/null &&     mkdir build &&     curl -sL \"https://github.com/git/git/archive/v1.7.2.tar.gz\" -o git.tar.gz &&     tar -C build -xzf git.tar.gz &&     cd build/git-1.7.2 &&     { autoconf 2> err || { cat err && false; } } &&     ./configure --without-tcltk --prefix=/opt/git-1.7.2 > /dev/null &&     { make install NO_PERL=please > /dev/null 2> err || { cat err && false; } } &&     cd ../.. &&     rm -rf build git.tar.gz" shape="box"];
  "sha256:80ed34e20f6c7b84d86b110a64673e211a7f8a8a50d3f4547374f1af7b3ffc3b" [label="sha256:80ed34e20f6c7b84d86b110a64673e211a7f8a8a50d3f4547374f1af7b3ffc3b" shape="plaintext"];
  "sha256:41c38fea27e1ef4d64bd90caf59925883c9252db7d7801b14d811563e634f897" -> "sha256:8fed2f9adfcb9327f8465628d4efdd586eab48eb1c101c47f3e6176382b299b3" [label=""];
  "sha256:8fed2f9adfcb9327f8465628d4efdd586eab48eb1c101c47f3e6176382b299b3" -> "sha256:80ed34e20f6c7b84d86b110a64673e211a7f8a8a50d3f4547374f1af7b3ffc3b" [label=""];
}

