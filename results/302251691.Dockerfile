[app/sources/302251691.Dockerfile]
digraph {
  "sha256:5045d46e15358f34ea7fff145af304a1fa3a317561e9c609f4ae17c0bd3359df" [label="docker-image://docker.io/library/node:latest" shape="ellipse"];
  "sha256:0527a47415eb656f6e31116d8f261026d2d3d3aced2acc8b7497add9bc69754a" [label="mkdir{path=/graphql-service}" shape="note"];
  "sha256:f6aebe270eb034344915f272e12ab3048533f364ceda9929bf4e4f6761bd297f" [label="local://context" shape="ellipse"];
  "sha256:ceb5947e8ade1d7f3e2a0f3039bb578c1403f8201438f1d93c9dc3f7789a8c10" [label="copy{src=/, dest=/graphql-service}" shape="note"];
  "sha256:7fe5e8dc1f135b7078f26cae4e22373f78da7dc29ded2ee0fd1e80933eb878e9" [label="/bin/sh -c npm install" shape="box"];
  "sha256:db964a72201070dd726a49cce9413214bb6c3698af28991efc61f0781cb8772a" [label="sha256:db964a72201070dd726a49cce9413214bb6c3698af28991efc61f0781cb8772a" shape="plaintext"];
  "sha256:5045d46e15358f34ea7fff145af304a1fa3a317561e9c609f4ae17c0bd3359df" -> "sha256:0527a47415eb656f6e31116d8f261026d2d3d3aced2acc8b7497add9bc69754a" [label=""];
  "sha256:0527a47415eb656f6e31116d8f261026d2d3d3aced2acc8b7497add9bc69754a" -> "sha256:ceb5947e8ade1d7f3e2a0f3039bb578c1403f8201438f1d93c9dc3f7789a8c10" [label=""];
  "sha256:f6aebe270eb034344915f272e12ab3048533f364ceda9929bf4e4f6761bd297f" -> "sha256:ceb5947e8ade1d7f3e2a0f3039bb578c1403f8201438f1d93c9dc3f7789a8c10" [label=""];
  "sha256:ceb5947e8ade1d7f3e2a0f3039bb578c1403f8201438f1d93c9dc3f7789a8c10" -> "sha256:7fe5e8dc1f135b7078f26cae4e22373f78da7dc29ded2ee0fd1e80933eb878e9" [label=""];
  "sha256:7fe5e8dc1f135b7078f26cae4e22373f78da7dc29ded2ee0fd1e80933eb878e9" -> "sha256:db964a72201070dd726a49cce9413214bb6c3698af28991efc61f0781cb8772a" [label=""];
}

