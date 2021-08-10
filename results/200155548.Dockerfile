[app/sources/200155548.Dockerfile]
digraph {
  "sha256:813c9a2f8147fe48f9750cc0f13a746c62844b2220aede9be75ced1e7d252672" [label="docker-image://docker.io/library/golang:1.6-wheezy" shape="ellipse"];
  "sha256:b130849633b9477560132f1accfd8ea89ce0a36c25bb392561b409959dad7636" [label="/bin/sh -c go get github.com/tools/godep" shape="box"];
  "sha256:fb95934fddd60963a79261369f412314c1a5ef89af48d9a3b21a6c8ac12d6608" [label="mkdir{path=/src/github.com/guilhermebr/backenderia/backend}" shape="note"];
  "sha256:906c572547db04096762f5e2a1fec456c3781e90a891bc4adb926adfb7b73365" [label="local://context" shape="ellipse"];
  "sha256:38e6febfff8d7a3ff68526479313ea39d4a989a492123857791a5f109af68245" [label="copy{src=/, dest=/src/github.com/guilhermebr/backenderia/backend}" shape="note"];
  "sha256:f1cb335b31cc75b05b5f3d267a74a07e1e984af4562ffd10f9a536f7a589f511" [label="/bin/sh -c godep restore" shape="box"];
  "sha256:072fbe31fb346be3d33e63c0dd95f7105cd396ceccaccc358e92dd58da08127f" [label="sha256:072fbe31fb346be3d33e63c0dd95f7105cd396ceccaccc358e92dd58da08127f" shape="plaintext"];
  "sha256:813c9a2f8147fe48f9750cc0f13a746c62844b2220aede9be75ced1e7d252672" -> "sha256:b130849633b9477560132f1accfd8ea89ce0a36c25bb392561b409959dad7636" [label=""];
  "sha256:b130849633b9477560132f1accfd8ea89ce0a36c25bb392561b409959dad7636" -> "sha256:fb95934fddd60963a79261369f412314c1a5ef89af48d9a3b21a6c8ac12d6608" [label=""];
  "sha256:fb95934fddd60963a79261369f412314c1a5ef89af48d9a3b21a6c8ac12d6608" -> "sha256:38e6febfff8d7a3ff68526479313ea39d4a989a492123857791a5f109af68245" [label=""];
  "sha256:906c572547db04096762f5e2a1fec456c3781e90a891bc4adb926adfb7b73365" -> "sha256:38e6febfff8d7a3ff68526479313ea39d4a989a492123857791a5f109af68245" [label=""];
  "sha256:38e6febfff8d7a3ff68526479313ea39d4a989a492123857791a5f109af68245" -> "sha256:f1cb335b31cc75b05b5f3d267a74a07e1e984af4562ffd10f9a536f7a589f511" [label=""];
  "sha256:f1cb335b31cc75b05b5f3d267a74a07e1e984af4562ffd10f9a536f7a589f511" -> "sha256:072fbe31fb346be3d33e63c0dd95f7105cd396ceccaccc358e92dd58da08127f" [label=""];
}

