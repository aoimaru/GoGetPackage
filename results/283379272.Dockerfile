[app/sources/283379272.Dockerfile]
digraph {
  "sha256:4e7a6726d116097e8c4db9f497f8239a68ba9cf2a6e7a98a8fa38824cd6fa17e" [label="docker-image://docker.io/library/ruby:2.5" shape="ellipse"];
  "sha256:f5670d9a8ca5eb72eb51f196283a414057139e243eeb10e6f3a82a39e81ef5fd" [label="/bin/sh -c apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs" shape="box"];
  "sha256:64be8799eeedd4550c9d2ce3685a2e16a448179c5bb7beca04942e135fdb6abb" [label="/bin/sh -c mkdir /myapp" shape="box"];
  "sha256:c553190084a975d4fdccf7ed43774479eb95758d5487de7095a5d9b708047a0d" [label="mkdir{path=/myapp}" shape="note"];
  "sha256:0e44e46806bc875102013b373e5d9323fe85690abcee01a8b827fa720001a3bf" [label="local://context" shape="ellipse"];
  "sha256:28d2c2b777163e4d1110ffe844ea54b5096d4c9ab2632443a0c41c2e16451c5c" [label="copy{src=/Gemfile, dest=/myapp/Gemfile}" shape="note"];
  "sha256:ea7c5d7148d2eca02cc1aee3c5676b4621563effe0d5d02449b8c149dbd77788" [label="copy{src=/Gemfile.lock, dest=/myapp/Gemfile.lock}" shape="note"];
  "sha256:642aa045851602b4ac88aa3c88a7ee706349ccc9fadae8cccada82e344acb52d" [label="/bin/sh -c bundle install" shape="box"];
  "sha256:41ca08b36e624eb7a2019bef3f36ffd64ac95f795aca84214b57f73d5f2d1feb" [label="copy{src=/, dest=/myapp}" shape="note"];
  "sha256:5e086b53a097b00b600ca68c4799ca90a04921b185e4431a77e9ba5c93712d75" [label="sha256:5e086b53a097b00b600ca68c4799ca90a04921b185e4431a77e9ba5c93712d75" shape="plaintext"];
  "sha256:4e7a6726d116097e8c4db9f497f8239a68ba9cf2a6e7a98a8fa38824cd6fa17e" -> "sha256:f5670d9a8ca5eb72eb51f196283a414057139e243eeb10e6f3a82a39e81ef5fd" [label=""];
  "sha256:f5670d9a8ca5eb72eb51f196283a414057139e243eeb10e6f3a82a39e81ef5fd" -> "sha256:64be8799eeedd4550c9d2ce3685a2e16a448179c5bb7beca04942e135fdb6abb" [label=""];
  "sha256:64be8799eeedd4550c9d2ce3685a2e16a448179c5bb7beca04942e135fdb6abb" -> "sha256:c553190084a975d4fdccf7ed43774479eb95758d5487de7095a5d9b708047a0d" [label=""];
  "sha256:c553190084a975d4fdccf7ed43774479eb95758d5487de7095a5d9b708047a0d" -> "sha256:28d2c2b777163e4d1110ffe844ea54b5096d4c9ab2632443a0c41c2e16451c5c" [label=""];
  "sha256:0e44e46806bc875102013b373e5d9323fe85690abcee01a8b827fa720001a3bf" -> "sha256:28d2c2b777163e4d1110ffe844ea54b5096d4c9ab2632443a0c41c2e16451c5c" [label=""];
  "sha256:28d2c2b777163e4d1110ffe844ea54b5096d4c9ab2632443a0c41c2e16451c5c" -> "sha256:ea7c5d7148d2eca02cc1aee3c5676b4621563effe0d5d02449b8c149dbd77788" [label=""];
  "sha256:0e44e46806bc875102013b373e5d9323fe85690abcee01a8b827fa720001a3bf" -> "sha256:ea7c5d7148d2eca02cc1aee3c5676b4621563effe0d5d02449b8c149dbd77788" [label=""];
  "sha256:ea7c5d7148d2eca02cc1aee3c5676b4621563effe0d5d02449b8c149dbd77788" -> "sha256:642aa045851602b4ac88aa3c88a7ee706349ccc9fadae8cccada82e344acb52d" [label=""];
  "sha256:642aa045851602b4ac88aa3c88a7ee706349ccc9fadae8cccada82e344acb52d" -> "sha256:41ca08b36e624eb7a2019bef3f36ffd64ac95f795aca84214b57f73d5f2d1feb" [label=""];
  "sha256:0e44e46806bc875102013b373e5d9323fe85690abcee01a8b827fa720001a3bf" -> "sha256:41ca08b36e624eb7a2019bef3f36ffd64ac95f795aca84214b57f73d5f2d1feb" [label=""];
  "sha256:41ca08b36e624eb7a2019bef3f36ffd64ac95f795aca84214b57f73d5f2d1feb" -> "sha256:5e086b53a097b00b600ca68c4799ca90a04921b185e4431a77e9ba5c93712d75" [label=""];
}

