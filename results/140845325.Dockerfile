[app/sources/140845325.Dockerfile]
digraph {
  "sha256:5e691c7ba4998fa4b60d1218bbc4ed9845bfa527d7d91b0c48922bbea45ce425" [label="docker-image://docker.io/library/ubuntu:18.04" shape="ellipse"];
  "sha256:cb90a865c999fcbcd11b62a3a9e5177b2f071d75f666cfcc698ff1c50d885002" [label="/bin/sh -c cat /etc/lsb-release" shape="box"];
  "sha256:588664dfcf44f6440770a1cf0ab4ba736f79ed401907d9668fb4ab5bd2774f6a" [label="/bin/sh -c apt-get -u update  && DEBIAN_FRONTEND=noninteractive apt-get -y install clang ninja-build pkg-config libpng-dev libsdl2-dev libopenal-dev libphysfs-dev libvorbis-dev libtheora-dev libglew-dev libxrandr-dev zip unzip qtscript5-dev qt5-default libfribidi-dev libfreetype6-dev libharfbuzz-dev libfontconfig1-dev docbook-xsl xsltproc asciidoc gettext git cmake sudo  && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:1f6172638a59f270ceb02d445ab31e305c559b6b72e78309c8abd53821b40fcf" [label="mkdir{path=/code}" shape="note"];
  "sha256:ef3d4e364c8f5e381c7b1de73bd9a188a0fd5d71b422118a6516f2d20102e781" [label="sha256:ef3d4e364c8f5e381c7b1de73bd9a188a0fd5d71b422118a6516f2d20102e781" shape="plaintext"];
  "sha256:5e691c7ba4998fa4b60d1218bbc4ed9845bfa527d7d91b0c48922bbea45ce425" -> "sha256:cb90a865c999fcbcd11b62a3a9e5177b2f071d75f666cfcc698ff1c50d885002" [label=""];
  "sha256:cb90a865c999fcbcd11b62a3a9e5177b2f071d75f666cfcc698ff1c50d885002" -> "sha256:588664dfcf44f6440770a1cf0ab4ba736f79ed401907d9668fb4ab5bd2774f6a" [label=""];
  "sha256:588664dfcf44f6440770a1cf0ab4ba736f79ed401907d9668fb4ab5bd2774f6a" -> "sha256:1f6172638a59f270ceb02d445ab31e305c559b6b72e78309c8abd53821b40fcf" [label=""];
  "sha256:1f6172638a59f270ceb02d445ab31e305c559b6b72e78309c8abd53821b40fcf" -> "sha256:ef3d4e364c8f5e381c7b1de73bd9a188a0fd5d71b422118a6516f2d20102e781" [label=""];
}

