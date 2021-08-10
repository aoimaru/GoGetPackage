[app/sources/132379914.Dockerfile]
digraph {
  "sha256:539680138299151bc5c88eebbabdf3860de54121c76ba4e7fcaec0fc5dcfd699" [label="docker-image://docker.io/library/fedora:27" shape="ellipse"];
  "sha256:2849ec631845acab0c0dcdf1dad5bb0eef4d4d51e35c5e10b8dea5b23b6236ac" [label="/bin/sh -c rpm -Uvh https://packages.microsoft.com/config/fedora/27/packages-microsoft-prod.rpm" shape="box"];
  "sha256:8be53fa52905c288838c6f7ba36091c297f2733040f99f45211d3be7d9f76b51" [label="/bin/sh -c yum install -y dotnet-runtime-$DOTNET_VERSION.x86_64 unzip libgit2-devel.x86_64     && yum clean all     && rm -rf /tmp/*" shape="box"];
  "sha256:dc2f15c83c8cb02770894d27931c6f36d83703b5a4c34cdf7a83a16861c7f083" [label="/bin/sh -c ln -s /usr/lib64/libgit2.so /usr/lib64/libgit2-15e1193.so" shape="box"];
  "sha256:032beb3b1cf4729eba2412a61a3645a2741e5f0c874409f61cd42a9bc41c1b1a" [label="mkdir{path=/app}" shape="note"];
  "sha256:87dc44b123ac660c2524324566b07829ba42aa2429ec6311aac9a17ee51d74e0" [label="local://context" shape="ellipse"];
  "sha256:3bc3dabbdf46310e844926649ec867d7e886af88571b7eefe341ff14017240c5" [label="copy{src=/, dest=/app/}" shape="note"];
  "sha256:270dc8df484ac4f366d461f4d7c17e1241ea50f277ba4e5b1981b9054292b0e4" [label="sha256:270dc8df484ac4f366d461f4d7c17e1241ea50f277ba4e5b1981b9054292b0e4" shape="plaintext"];
  "sha256:539680138299151bc5c88eebbabdf3860de54121c76ba4e7fcaec0fc5dcfd699" -> "sha256:2849ec631845acab0c0dcdf1dad5bb0eef4d4d51e35c5e10b8dea5b23b6236ac" [label=""];
  "sha256:2849ec631845acab0c0dcdf1dad5bb0eef4d4d51e35c5e10b8dea5b23b6236ac" -> "sha256:8be53fa52905c288838c6f7ba36091c297f2733040f99f45211d3be7d9f76b51" [label=""];
  "sha256:8be53fa52905c288838c6f7ba36091c297f2733040f99f45211d3be7d9f76b51" -> "sha256:dc2f15c83c8cb02770894d27931c6f36d83703b5a4c34cdf7a83a16861c7f083" [label=""];
  "sha256:dc2f15c83c8cb02770894d27931c6f36d83703b5a4c34cdf7a83a16861c7f083" -> "sha256:032beb3b1cf4729eba2412a61a3645a2741e5f0c874409f61cd42a9bc41c1b1a" [label=""];
  "sha256:032beb3b1cf4729eba2412a61a3645a2741e5f0c874409f61cd42a9bc41c1b1a" -> "sha256:3bc3dabbdf46310e844926649ec867d7e886af88571b7eefe341ff14017240c5" [label=""];
  "sha256:87dc44b123ac660c2524324566b07829ba42aa2429ec6311aac9a17ee51d74e0" -> "sha256:3bc3dabbdf46310e844926649ec867d7e886af88571b7eefe341ff14017240c5" [label=""];
  "sha256:3bc3dabbdf46310e844926649ec867d7e886af88571b7eefe341ff14017240c5" -> "sha256:270dc8df484ac4f366d461f4d7c17e1241ea50f277ba4e5b1981b9054292b0e4" [label=""];
}

