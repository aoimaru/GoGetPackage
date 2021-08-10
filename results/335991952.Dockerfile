[app/sources/335991952.Dockerfile]
digraph {
  "sha256:52e5aeabcbc4c0073dc852bd2b4612e6aa212530c480b5c6f0a340dfe8a01e28" [label="docker-image://docker.io/mbrobbel/libarrow:0.13.0" shape="ellipse"];
  "sha256:ed2f18bfbbba1a066e77c4101efc92a9921c6b868924b15f84e762798ece82b7" [label="mkdir{path=/fletcher}" shape="note"];
  "sha256:d88163341833b623c2731242c12927fa505326d48274ccf27c01f59b612a7e50" [label="local://context" shape="ellipse"];
  "sha256:76a1bad7ace384f08cd52030141bdcb1b56a20ae6789575b8638d933bebc79d9" [label="copy{src=/, dest=/fletcher/}" shape="note"];
  "sha256:c1f21d5807a8e8cc543348bdbe521a356051bd65c3dd2c244f4475ffc71698e3" [label="mkdir{path=/fletcher/build}" shape="note"];
  "sha256:11ea392ab5bc3def5289c98c212c6ef168fd7c3aa8210b8b59bf303a4065e02f" [label="/bin/sh -c apt-get update &&     apt-get install -y $BUILD_PACKAGES &&     cmake       -DCMAKE_BUILD_TYPE=Release       -DFLETCHER_GEN=1       -DFLETCHER_TESTS=0       .. &&     make && make install &&     cd ../.. && rm -rf fletcher &&     apt-get remove -y --purge $BUILD_PACKAGES &&     apt-get autoremove -y &&     rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:85238177caf50072c0e72565886cd7e8764c6423e0c8d3120fdd201427360983" [label="sha256:85238177caf50072c0e72565886cd7e8764c6423e0c8d3120fdd201427360983" shape="plaintext"];
  "sha256:52e5aeabcbc4c0073dc852bd2b4612e6aa212530c480b5c6f0a340dfe8a01e28" -> "sha256:ed2f18bfbbba1a066e77c4101efc92a9921c6b868924b15f84e762798ece82b7" [label=""];
  "sha256:ed2f18bfbbba1a066e77c4101efc92a9921c6b868924b15f84e762798ece82b7" -> "sha256:76a1bad7ace384f08cd52030141bdcb1b56a20ae6789575b8638d933bebc79d9" [label=""];
  "sha256:d88163341833b623c2731242c12927fa505326d48274ccf27c01f59b612a7e50" -> "sha256:76a1bad7ace384f08cd52030141bdcb1b56a20ae6789575b8638d933bebc79d9" [label=""];
  "sha256:76a1bad7ace384f08cd52030141bdcb1b56a20ae6789575b8638d933bebc79d9" -> "sha256:c1f21d5807a8e8cc543348bdbe521a356051bd65c3dd2c244f4475ffc71698e3" [label=""];
  "sha256:c1f21d5807a8e8cc543348bdbe521a356051bd65c3dd2c244f4475ffc71698e3" -> "sha256:11ea392ab5bc3def5289c98c212c6ef168fd7c3aa8210b8b59bf303a4065e02f" [label=""];
  "sha256:11ea392ab5bc3def5289c98c212c6ef168fd7c3aa8210b8b59bf303a4065e02f" -> "sha256:85238177caf50072c0e72565886cd7e8764c6423e0c8d3120fdd201427360983" [label=""];
}

