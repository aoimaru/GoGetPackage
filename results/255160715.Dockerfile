[app/sources/255160715.Dockerfile]
digraph {
  "sha256:409b08d7762c0c2c51c97f20dba54119b2ce25f30cc5c2a499db5ca194d0c6e9" [label="local://context" shape="ellipse"];
  "sha256:251cce09541a46ba79ff990b265ac39ecbfc746090db854bddd823a8eba4cb18" [label="copy{src=/bin/pause-, dest=/pause}" shape="note"];
  "sha256:867b3458a768501185e71c07e3f5ed7c36e73753cb1b36c81e57e350e68478df" [label="sha256:867b3458a768501185e71c07e3f5ed7c36e73753cb1b36c81e57e350e68478df" shape="plaintext"];
  "sha256:409b08d7762c0c2c51c97f20dba54119b2ce25f30cc5c2a499db5ca194d0c6e9" -> "sha256:251cce09541a46ba79ff990b265ac39ecbfc746090db854bddd823a8eba4cb18" [label=""];
  "sha256:251cce09541a46ba79ff990b265ac39ecbfc746090db854bddd823a8eba4cb18" -> "sha256:867b3458a768501185e71c07e3f5ed7c36e73753cb1b36c81e57e350e68478df" [label=""];
}

