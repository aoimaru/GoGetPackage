[app/sources/381313079.Dockerfile]
digraph {
  "sha256:16481fb8270a2e665968f4483248de9f0b3df65ed41b0f4aad991d65c190653a" [label="docker-image://docker.io/nlpbox/nlpbox-base:16.04" shape="ellipse"];
  "sha256:d4eab366227d2b90108eb881da4cbeb2d927ff8e67f7b87169ef380fed6c1484" [label="/bin/sh -c apt-get update && apt-get install python-pip -y" shape="box"];
  "sha256:7d846f44c6d6aa11179689680376eabe8fe27f2c1d4de169e52aec6ef752f8ea" [label="mkdir{path=/opt}" shape="note"];
  "sha256:4a732ba4bdecb6dd02c2606862cef61e340d0f2e4a0325132ad789d153ff7b27" [label="/bin/sh -c wget http://hal3.name/megam/megam_src.tgz &&     tar xzf megam_src.tgz && rm megam_src.tgz &&     git clone https://github.com/arne-cl/nltk-maxent-pos-tagger.git" shape="box"];
  "sha256:43506dde8465b8052aece468c7127e38d51aebe09e6ba8c868235ce1df5cfa17" [label="mkdir{path=/opt/megam_0.92}" shape="note"];
  "sha256:5d19a2aa563ba3386a762070ee568db288696737ea5d89c92d64111a3d3710fa" [label="/bin/sh -c apt-get install ocaml -y &&     ln -s /usr/lib/ocaml/libcamlstr.a /usr/lib/ocaml/libstr.a &&     make opt &&     mv megam.opt /usr/bin/megam &&     apt-get purge ocaml -y && apt autoremove -y" shape="box"];
  "sha256:e39dde009f763e0af23bd582352b45f06f19c4a5d5f504abe124bd40ed538ae5" [label="mkdir{path=/opt/nltk-maxent-pos-tagger}" shape="note"];
  "sha256:1fa8f44469aad3e985363ab092dd6e0333a62c4545a2c6aced484dde599589b6" [label="/bin/sh -c pip install -r requirements.txt &&     python -c \"import nltk; nltk.download('brown'); nltk.download('treebank')\"" shape="box"];
  "sha256:d9e14bf64746bd8704c01a380db622406a670b6fbd60c016b16a8944c639ec3a" [label="sha256:d9e14bf64746bd8704c01a380db622406a670b6fbd60c016b16a8944c639ec3a" shape="plaintext"];
  "sha256:16481fb8270a2e665968f4483248de9f0b3df65ed41b0f4aad991d65c190653a" -> "sha256:d4eab366227d2b90108eb881da4cbeb2d927ff8e67f7b87169ef380fed6c1484" [label=""];
  "sha256:d4eab366227d2b90108eb881da4cbeb2d927ff8e67f7b87169ef380fed6c1484" -> "sha256:7d846f44c6d6aa11179689680376eabe8fe27f2c1d4de169e52aec6ef752f8ea" [label=""];
  "sha256:7d846f44c6d6aa11179689680376eabe8fe27f2c1d4de169e52aec6ef752f8ea" -> "sha256:4a732ba4bdecb6dd02c2606862cef61e340d0f2e4a0325132ad789d153ff7b27" [label=""];
  "sha256:4a732ba4bdecb6dd02c2606862cef61e340d0f2e4a0325132ad789d153ff7b27" -> "sha256:43506dde8465b8052aece468c7127e38d51aebe09e6ba8c868235ce1df5cfa17" [label=""];
  "sha256:43506dde8465b8052aece468c7127e38d51aebe09e6ba8c868235ce1df5cfa17" -> "sha256:5d19a2aa563ba3386a762070ee568db288696737ea5d89c92d64111a3d3710fa" [label=""];
  "sha256:5d19a2aa563ba3386a762070ee568db288696737ea5d89c92d64111a3d3710fa" -> "sha256:e39dde009f763e0af23bd582352b45f06f19c4a5d5f504abe124bd40ed538ae5" [label=""];
  "sha256:e39dde009f763e0af23bd582352b45f06f19c4a5d5f504abe124bd40ed538ae5" -> "sha256:1fa8f44469aad3e985363ab092dd6e0333a62c4545a2c6aced484dde599589b6" [label=""];
  "sha256:1fa8f44469aad3e985363ab092dd6e0333a62c4545a2c6aced484dde599589b6" -> "sha256:d9e14bf64746bd8704c01a380db622406a670b6fbd60c016b16a8944c639ec3a" [label=""];
}

