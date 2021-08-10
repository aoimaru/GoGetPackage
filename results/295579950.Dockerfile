[app/sources/295579950.Dockerfile]
digraph {
  "sha256:e6643a35a992c13c12fbbfe59815e1d14cfae352992052203c6a99f54b2d545d" [label="docker-image://docker.io/library/solaris:latest" shape="ellipse"];
  "sha256:b57cedfb71dbc99168ccae88608a0753630ac01bba344a3657c1196a6175b6bd" [label="local://context" shape="ellipse"];
  "sha256:b873ed4a5d7c7225a0e9cafe9dd53a7ae1df1b58073265579f8e3d35913bab92" [label="copy{src=/httpserver, dest=/}" shape="note"];
  "sha256:dd60c7dd08a653d39857cf9393b3f072a239a9073db216b3e25dbebc5f9446ff" [label="sha256:dd60c7dd08a653d39857cf9393b3f072a239a9073db216b3e25dbebc5f9446ff" shape="plaintext"];
  "sha256:e6643a35a992c13c12fbbfe59815e1d14cfae352992052203c6a99f54b2d545d" -> "sha256:b873ed4a5d7c7225a0e9cafe9dd53a7ae1df1b58073265579f8e3d35913bab92" [label=""];
  "sha256:b57cedfb71dbc99168ccae88608a0753630ac01bba344a3657c1196a6175b6bd" -> "sha256:b873ed4a5d7c7225a0e9cafe9dd53a7ae1df1b58073265579f8e3d35913bab92" [label=""];
  "sha256:b873ed4a5d7c7225a0e9cafe9dd53a7ae1df1b58073265579f8e3d35913bab92" -> "sha256:dd60c7dd08a653d39857cf9393b3f072a239a9073db216b3e25dbebc5f9446ff" [label=""];
}

