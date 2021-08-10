[app/sources/322149200.Dockerfile]
digraph {
  "sha256:f4bc7d0c85e47c037ce9f806d6fec28892ccb5054705dfa4d11c323b2140c737" [label="local://context" shape="ellipse"];
  "sha256:d680c6a82813d080081fbc3c024d21ddfa7ff995981cc7b4bfafe55edf80a319" [label="docker-image://docker.io/library/openjdk:8-jdk-alpine" shape="ellipse"];
  "sha256:efd2ef429d31b3e9559d5028599493ec6b279e64c9f5d726a36957ba1db36a17" [label="copy{src=/lion-demo-provider.jar, dest=/app.jar}" shape="note"];
  "sha256:35b4f686c0f02b8a05d02ba30fe3937da9f2e671afaac377427f5c1ba2d6da4d" [label="sha256:35b4f686c0f02b8a05d02ba30fe3937da9f2e671afaac377427f5c1ba2d6da4d" shape="plaintext"];
  "sha256:d680c6a82813d080081fbc3c024d21ddfa7ff995981cc7b4bfafe55edf80a319" -> "sha256:efd2ef429d31b3e9559d5028599493ec6b279e64c9f5d726a36957ba1db36a17" [label=""];
  "sha256:f4bc7d0c85e47c037ce9f806d6fec28892ccb5054705dfa4d11c323b2140c737" -> "sha256:efd2ef429d31b3e9559d5028599493ec6b279e64c9f5d726a36957ba1db36a17" [label=""];
  "sha256:efd2ef429d31b3e9559d5028599493ec6b279e64c9f5d726a36957ba1db36a17" -> "sha256:35b4f686c0f02b8a05d02ba30fe3937da9f2e671afaac377427f5c1ba2d6da4d" [label=""];
}

