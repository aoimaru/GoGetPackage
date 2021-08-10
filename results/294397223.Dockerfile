[app/sources/294397223.Dockerfile]
digraph {
  "sha256:d3eba57e57c8fb00496a5b7cb1a2fc599b23490d6f8c30182be3a8c90dd2113a" [label="docker-image://docker.io/frolvlad/alpine-oraclejdk8:latest" shape="ellipse"];
  "sha256:c3a311e4c434fa36a6df52b6dcadee36728d6b85461bc1e1b6203a4a088d26b8" [label="local://context" shape="ellipse"];
  "sha256:14378063447cc5d69eac205fcd520e3acce0e30cb0108afaf83dd40757d974b4" [label="copy{src=/target/search-apigateway-1.0.jar, dest=/search-apigateway.jar}" shape="note"];
  "sha256:763ff5fe5b3055c7d4fe2ed00ba44d9a2fadf11662721f66d5558e9c592ad2f5" [label="sha256:763ff5fe5b3055c7d4fe2ed00ba44d9a2fadf11662721f66d5558e9c592ad2f5" shape="plaintext"];
  "sha256:d3eba57e57c8fb00496a5b7cb1a2fc599b23490d6f8c30182be3a8c90dd2113a" -> "sha256:14378063447cc5d69eac205fcd520e3acce0e30cb0108afaf83dd40757d974b4" [label=""];
  "sha256:c3a311e4c434fa36a6df52b6dcadee36728d6b85461bc1e1b6203a4a088d26b8" -> "sha256:14378063447cc5d69eac205fcd520e3acce0e30cb0108afaf83dd40757d974b4" [label=""];
  "sha256:14378063447cc5d69eac205fcd520e3acce0e30cb0108afaf83dd40757d974b4" -> "sha256:763ff5fe5b3055c7d4fe2ed00ba44d9a2fadf11662721f66d5558e9c592ad2f5" [label=""];
}

