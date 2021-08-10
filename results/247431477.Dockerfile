[app/sources/247431477.Dockerfile]
digraph {
  "sha256:92b07e0dd34478f3e253ee9acf8bad0046fd4a709bc986e5ced4dcf27e612706" [label="docker-image://docker.io/library/nginx:1" shape="ellipse"];
  "sha256:5e618a092d9328c2b1678364511170ba46f4c780d8c62373fd646aec4a06606a" [label="local://context" shape="ellipse"];
  "sha256:bd8f1f6c8985f5acbfef645adda7902dab6dbf2c42afbe356c4ef250623d06a5" [label="copy{src=/dummy_deb_package, dest=/dummy_deb_package}" shape="note"];
  "sha256:c69708a98f3fbf4cc5f149f5fd1f1986eba66edddfe8c6d5e540a419af52a922" [label="/bin/sh -c dpkg --build /dummy_deb_package /usr/share/nginx/html/dummy.deb" shape="box"];
  "sha256:35aa6af9cc93bf0ea62a96d0f265593e2b13c171df2f2213909bc590cddd84f4" [label="sha256:35aa6af9cc93bf0ea62a96d0f265593e2b13c171df2f2213909bc590cddd84f4" shape="plaintext"];
  "sha256:92b07e0dd34478f3e253ee9acf8bad0046fd4a709bc986e5ced4dcf27e612706" -> "sha256:bd8f1f6c8985f5acbfef645adda7902dab6dbf2c42afbe356c4ef250623d06a5" [label=""];
  "sha256:5e618a092d9328c2b1678364511170ba46f4c780d8c62373fd646aec4a06606a" -> "sha256:bd8f1f6c8985f5acbfef645adda7902dab6dbf2c42afbe356c4ef250623d06a5" [label=""];
  "sha256:bd8f1f6c8985f5acbfef645adda7902dab6dbf2c42afbe356c4ef250623d06a5" -> "sha256:c69708a98f3fbf4cc5f149f5fd1f1986eba66edddfe8c6d5e540a419af52a922" [label=""];
  "sha256:c69708a98f3fbf4cc5f149f5fd1f1986eba66edddfe8c6d5e540a419af52a922" -> "sha256:35aa6af9cc93bf0ea62a96d0f265593e2b13c171df2f2213909bc590cddd84f4" [label=""];
}

