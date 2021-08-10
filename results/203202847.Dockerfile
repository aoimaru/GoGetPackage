[app/sources/203202847.Dockerfile]
digraph {
  "sha256:1a66fb0b1792984a1f9ba6ee7de1af6a4decec298b8507026bfdc1fa4820a21c" [label="docker-image://docker.io/library/kibana:4.5" shape="ellipse"];
  "sha256:4dc1f7aa59d4514a48be74b2d2597e39410a858dad11e76ebf2f5b534d22ef0e" [label="local://context" shape="ellipse"];
  "sha256:61f356bc7e3abeb8902dd3091b1b50d7f3347bee8dd3592e3d325088190b4948" [label="copy{src=/config/kibana.yml, dest=/opt/kibana/config/}" shape="note"];
  "sha256:cdb463ab690aab6f85dfec768f7eb13c0ec0ea6d5295a67f8bee82edb6d6a964" [label="sha256:cdb463ab690aab6f85dfec768f7eb13c0ec0ea6d5295a67f8bee82edb6d6a964" shape="plaintext"];
  "sha256:1a66fb0b1792984a1f9ba6ee7de1af6a4decec298b8507026bfdc1fa4820a21c" -> "sha256:61f356bc7e3abeb8902dd3091b1b50d7f3347bee8dd3592e3d325088190b4948" [label=""];
  "sha256:4dc1f7aa59d4514a48be74b2d2597e39410a858dad11e76ebf2f5b534d22ef0e" -> "sha256:61f356bc7e3abeb8902dd3091b1b50d7f3347bee8dd3592e3d325088190b4948" [label=""];
  "sha256:61f356bc7e3abeb8902dd3091b1b50d7f3347bee8dd3592e3d325088190b4948" -> "sha256:cdb463ab690aab6f85dfec768f7eb13c0ec0ea6d5295a67f8bee82edb6d6a964" [label=""];
}

