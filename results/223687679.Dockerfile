[app/sources/223687679.Dockerfile]
digraph {
  "sha256:7ce5b507f3dcda6d3fd075a24eec3b26da918e5a65c94e3c68f9764f08a8c110" [label="docker-image://docker.io/library/python:3.5-alpine" shape="ellipse"];
  "sha256:8b1a5d5c3f9726527b5079f48ba39aae6e40462d62ee94cd7276c0ab000d0e4a" [label="mkdir{path=/usr/src/proxybot}" shape="note"];
  "sha256:5530a4d67650b59d850d006c396a6cd717b489462c82eadc899312b177f6ab6d" [label="local://context" shape="ellipse"];
  "sha256:a8ef3b1d93ffb038593bfd1aefad0ef4425b5980479804e908d6c9b83253bdf9" [label="copy{src=/requirements.txt, dest=/usr/src/proxybot/}" shape="note"];
  "sha256:2609088d1722eb486c0ba2473b794f876a0af80befe79dc5ed914940f93b8c99" [label="/bin/sh -c pip install --no-cache-dir -r requirements.txt" shape="box"];
  "sha256:8fe1e5c96d505b0ee703e8ee75ae09dd28a888fc515f470bddf84df2695a687b" [label="copy{src=/proxybot, dest=/usr/src/proxybot/}" shape="note"];
  "sha256:173f9ef975de5e22fbd8071615b362d8130b746a4963adba332cbf176e1074eb" [label="sha256:173f9ef975de5e22fbd8071615b362d8130b746a4963adba332cbf176e1074eb" shape="plaintext"];
  "sha256:7ce5b507f3dcda6d3fd075a24eec3b26da918e5a65c94e3c68f9764f08a8c110" -> "sha256:8b1a5d5c3f9726527b5079f48ba39aae6e40462d62ee94cd7276c0ab000d0e4a" [label=""];
  "sha256:8b1a5d5c3f9726527b5079f48ba39aae6e40462d62ee94cd7276c0ab000d0e4a" -> "sha256:a8ef3b1d93ffb038593bfd1aefad0ef4425b5980479804e908d6c9b83253bdf9" [label=""];
  "sha256:5530a4d67650b59d850d006c396a6cd717b489462c82eadc899312b177f6ab6d" -> "sha256:a8ef3b1d93ffb038593bfd1aefad0ef4425b5980479804e908d6c9b83253bdf9" [label=""];
  "sha256:a8ef3b1d93ffb038593bfd1aefad0ef4425b5980479804e908d6c9b83253bdf9" -> "sha256:2609088d1722eb486c0ba2473b794f876a0af80befe79dc5ed914940f93b8c99" [label=""];
  "sha256:2609088d1722eb486c0ba2473b794f876a0af80befe79dc5ed914940f93b8c99" -> "sha256:8fe1e5c96d505b0ee703e8ee75ae09dd28a888fc515f470bddf84df2695a687b" [label=""];
  "sha256:5530a4d67650b59d850d006c396a6cd717b489462c82eadc899312b177f6ab6d" -> "sha256:8fe1e5c96d505b0ee703e8ee75ae09dd28a888fc515f470bddf84df2695a687b" [label=""];
  "sha256:8fe1e5c96d505b0ee703e8ee75ae09dd28a888fc515f470bddf84df2695a687b" -> "sha256:173f9ef975de5e22fbd8071615b362d8130b746a4963adba332cbf176e1074eb" [label=""];
}

