[app/sources/255689612.Dockerfile]
digraph {
  "sha256:f4d02dc7fde2dda730a4fea4f2ad31bd993431fc9a6332c3524bc7f951e63d6d" [label="docker-image://docker.io/ingi/inginious-c-base:latest" shape="ellipse"];
  "sha256:552c05ca5edc6b70db6f0ab43292c645dd170aa37efe595a9ba02c930d4621c7" [label="/bin/sh -c set -x &&       yum -y install xorg-x11-server-Xvfb libXrender.x86_64 java-1.7.0-openjdk.x86_64 &&       tarball=\"processing-${PROCESSING_VERSION}-linux64.tgz\" &&       curl -fSL \"http://download.processing.org/${tarball}\" -O &&       tar -xzf \"$tarball\" &&       mv \"processing-${PROCESSING_VERSION}\" /opt/processing &&       rm \"$tarball\" &&       ln -s /opt/processing/processing /usr/bin/processing &&       ln -s /opt/processing/processing-java /usr/bin/processing-java &&       yum clean all" shape="box"];
  "sha256:aa1968c70e117d0aef4c7640267d7fa7a17623f7b661697cd7c894c4f7c9b007" [label="local://context" shape="ellipse"];
  "sha256:58aa99895c1de0874756109a29c6b481fc8ccedf362c87c63af37919f811a6ba" [label="copy{src=/create_display.bash, dest=/usr/sbin/}" shape="note"];
  "sha256:1921af7a7ab59c78d78d82f8c242362df401967ce4ce406346049f98357f14f7" [label="/bin/sh -c chmod +x /usr/sbin/create_display.bash" shape="box"];
  "sha256:188198411a02921a09aaa75849b705d46945806355a24df134a5622847c6ec99" [label="sha256:188198411a02921a09aaa75849b705d46945806355a24df134a5622847c6ec99" shape="plaintext"];
  "sha256:f4d02dc7fde2dda730a4fea4f2ad31bd993431fc9a6332c3524bc7f951e63d6d" -> "sha256:552c05ca5edc6b70db6f0ab43292c645dd170aa37efe595a9ba02c930d4621c7" [label=""];
  "sha256:552c05ca5edc6b70db6f0ab43292c645dd170aa37efe595a9ba02c930d4621c7" -> "sha256:58aa99895c1de0874756109a29c6b481fc8ccedf362c87c63af37919f811a6ba" [label=""];
  "sha256:aa1968c70e117d0aef4c7640267d7fa7a17623f7b661697cd7c894c4f7c9b007" -> "sha256:58aa99895c1de0874756109a29c6b481fc8ccedf362c87c63af37919f811a6ba" [label=""];
  "sha256:58aa99895c1de0874756109a29c6b481fc8ccedf362c87c63af37919f811a6ba" -> "sha256:1921af7a7ab59c78d78d82f8c242362df401967ce4ce406346049f98357f14f7" [label=""];
  "sha256:1921af7a7ab59c78d78d82f8c242362df401967ce4ce406346049f98357f14f7" -> "sha256:188198411a02921a09aaa75849b705d46945806355a24df134a5622847c6ec99" [label=""];
}

