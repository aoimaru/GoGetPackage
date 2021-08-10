[app/sources/366345601.Dockerfile]
digraph {
  "sha256:3c0331b1d9b539773e1221792c640cf08d579a3a16c0f33f5a678abb4c350ebe" [label="docker-image://docker.io/library/ruby:2.2" shape="ellipse"];
  "sha256:8a8b5640bd9e3cb5819fe757f467dc6e81ea52ed579219b51c63979a00bec311" [label="local://context" shape="ellipse"];
  "sha256:ec79a84831578ab3d9f653fa0375eb2afd9963ea7feb31f40e07fe36fa35a2fd" [label="copy{src=/ruby-cli-app, dest=/app}" shape="note"];
  "sha256:cc7af80c91f19a2b164ef1f5bf5f9b7547208f49a7ed14e23bf434707adddf19" [label="/bin/sh -c cd /app  && bundle install" shape="box"];
  "sha256:8cb87f514946c64c9c3f576e02c8b8a194248c54410125e42069da77560d42ca" [label="sha256:8cb87f514946c64c9c3f576e02c8b8a194248c54410125e42069da77560d42ca" shape="plaintext"];
  "sha256:3c0331b1d9b539773e1221792c640cf08d579a3a16c0f33f5a678abb4c350ebe" -> "sha256:ec79a84831578ab3d9f653fa0375eb2afd9963ea7feb31f40e07fe36fa35a2fd" [label=""];
  "sha256:8a8b5640bd9e3cb5819fe757f467dc6e81ea52ed579219b51c63979a00bec311" -> "sha256:ec79a84831578ab3d9f653fa0375eb2afd9963ea7feb31f40e07fe36fa35a2fd" [label=""];
  "sha256:ec79a84831578ab3d9f653fa0375eb2afd9963ea7feb31f40e07fe36fa35a2fd" -> "sha256:cc7af80c91f19a2b164ef1f5bf5f9b7547208f49a7ed14e23bf434707adddf19" [label=""];
  "sha256:cc7af80c91f19a2b164ef1f5bf5f9b7547208f49a7ed14e23bf434707adddf19" -> "sha256:8cb87f514946c64c9c3f576e02c8b8a194248c54410125e42069da77560d42ca" [label=""];
}

