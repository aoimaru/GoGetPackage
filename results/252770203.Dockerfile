[app/sources/252770203.Dockerfile]
digraph {
  "sha256:c3b95f376ba6db6d8b0f60361c801185ec4b2d55aae02c591f470a2974876e82" [label="local://context" shape="ellipse"];
  "sha256:d094a430c243a2058815a1eb5370fdcd26c9c9f6be4c7a7095bc5c9709c86f20" [label="docker-image://docker.io/couchbase/server:latest" shape="ellipse"];
  "sha256:d62cb95002a8d8243573a23120a09444f27ab2e11e0cd438e0e195304fe515f3" [label="copy{src=/*.sh, dest=/usr/sbin/}" shape="note"];
  "sha256:6291d60be3da19ac51788c9987922a6e0295a0fcd96a000c00177dd1718fa1f6" [label="sha256:6291d60be3da19ac51788c9987922a6e0295a0fcd96a000c00177dd1718fa1f6" shape="plaintext"];
  "sha256:d094a430c243a2058815a1eb5370fdcd26c9c9f6be4c7a7095bc5c9709c86f20" -> "sha256:d62cb95002a8d8243573a23120a09444f27ab2e11e0cd438e0e195304fe515f3" [label=""];
  "sha256:c3b95f376ba6db6d8b0f60361c801185ec4b2d55aae02c591f470a2974876e82" -> "sha256:d62cb95002a8d8243573a23120a09444f27ab2e11e0cd438e0e195304fe515f3" [label=""];
  "sha256:d62cb95002a8d8243573a23120a09444f27ab2e11e0cd438e0e195304fe515f3" -> "sha256:6291d60be3da19ac51788c9987922a6e0295a0fcd96a000c00177dd1718fa1f6" [label=""];
}
