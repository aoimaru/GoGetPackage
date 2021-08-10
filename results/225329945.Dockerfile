[app/sources/225329945.Dockerfile]
digraph {
  "sha256:58a496fdc06b9e39d2ea2b6c8c9bfc8f42a4b9d8f7702119eb1db187373e35ab" [label="docker-image://docker.io/voidlock/elixir:1.1" shape="ellipse"];
  "sha256:0def8a777d3dd8906a146d9e9161e6220f5d5782964128292cd760edcb3d3a98" [label="/bin/sh -c apt-get update && apt-get install -y postgresql-client" shape="box"];
  "sha256:6b4cc7f1bb07843d026770e93f288c21469ca2b08e1ed57ee996fc8019147966" [label="/bin/sh -c mix local.hex --force &&     mix local.rebar --force" shape="box"];
  "sha256:2f1671d94a51f30a5fee69d47c9037120c2b71826499198fcea5683671655a72" [label="/bin/sh -c mkdir -p /usr/src/app" shape="box"];
  "sha256:c65891344bd02fd80f622f83d05e7bf638c395e47db54ad7f777cb73634215cd" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:4a44323984b721ae66896bd77f8f5240f37d3f03d4af87f5ddad76a0b7970cc4" [label="local://context" shape="ellipse"];
  "sha256:5f6b79b22134516b9d318b92b1cf321d567af961bbb37a5ad45003b89d6ba1ec" [label="copy{src=/mix.*, dest=/usr/src/app/}" shape="note"];
  "sha256:6723a63d612a895c29333d7689ecd5807cfa14601ee3b71eafe2214b08450156" [label="copy{src=/config, dest=/usr/src/app/}" shape="note"];
  "sha256:903e698d181ed3853722fb32458084a20edeb98636c1fbc9fdb2cfec3d34a845" [label="/bin/sh -c mix do deps.get, deps.compile" shape="box"];
  "sha256:0922d84b429b75c1d3244845dadf7fe227d3f351afded9605c79e34ee2345dc0" [label="sha256:0922d84b429b75c1d3244845dadf7fe227d3f351afded9605c79e34ee2345dc0" shape="plaintext"];
  "sha256:58a496fdc06b9e39d2ea2b6c8c9bfc8f42a4b9d8f7702119eb1db187373e35ab" -> "sha256:0def8a777d3dd8906a146d9e9161e6220f5d5782964128292cd760edcb3d3a98" [label=""];
  "sha256:0def8a777d3dd8906a146d9e9161e6220f5d5782964128292cd760edcb3d3a98" -> "sha256:6b4cc7f1bb07843d026770e93f288c21469ca2b08e1ed57ee996fc8019147966" [label=""];
  "sha256:6b4cc7f1bb07843d026770e93f288c21469ca2b08e1ed57ee996fc8019147966" -> "sha256:2f1671d94a51f30a5fee69d47c9037120c2b71826499198fcea5683671655a72" [label=""];
  "sha256:2f1671d94a51f30a5fee69d47c9037120c2b71826499198fcea5683671655a72" -> "sha256:c65891344bd02fd80f622f83d05e7bf638c395e47db54ad7f777cb73634215cd" [label=""];
  "sha256:c65891344bd02fd80f622f83d05e7bf638c395e47db54ad7f777cb73634215cd" -> "sha256:5f6b79b22134516b9d318b92b1cf321d567af961bbb37a5ad45003b89d6ba1ec" [label=""];
  "sha256:4a44323984b721ae66896bd77f8f5240f37d3f03d4af87f5ddad76a0b7970cc4" -> "sha256:5f6b79b22134516b9d318b92b1cf321d567af961bbb37a5ad45003b89d6ba1ec" [label=""];
  "sha256:5f6b79b22134516b9d318b92b1cf321d567af961bbb37a5ad45003b89d6ba1ec" -> "sha256:6723a63d612a895c29333d7689ecd5807cfa14601ee3b71eafe2214b08450156" [label=""];
  "sha256:4a44323984b721ae66896bd77f8f5240f37d3f03d4af87f5ddad76a0b7970cc4" -> "sha256:6723a63d612a895c29333d7689ecd5807cfa14601ee3b71eafe2214b08450156" [label=""];
  "sha256:6723a63d612a895c29333d7689ecd5807cfa14601ee3b71eafe2214b08450156" -> "sha256:903e698d181ed3853722fb32458084a20edeb98636c1fbc9fdb2cfec3d34a845" [label=""];
  "sha256:903e698d181ed3853722fb32458084a20edeb98636c1fbc9fdb2cfec3d34a845" -> "sha256:0922d84b429b75c1d3244845dadf7fe227d3f351afded9605c79e34ee2345dc0" [label=""];
}

