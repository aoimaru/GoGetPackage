[app/sources/187050455.Dockerfile]
digraph {
  "sha256:5b12b69b0f9e410b38a4ba942d5de09b0c2369cd5c40a097791b57fafc3a4939" [label="docker-image://docker.io/microsoft/dotnet:2.2-sdk-bionic" shape="ellipse"];
  "sha256:097dda949a362022b5e76a8e201d95023c846b4120b96d137dbe6ecdf79effd3" [label="mkdir{path=/sheller}" shape="note"];
  "sha256:86543ffb1c3917c8d040f1c55c033333c7b4e2110445ecbaea23846f101f8b1f" [label="local://context" shape="ellipse"];
  "sha256:a98f1ffb0249e289b66c3b6c175c8ab15727670168877b88adeccae92559ed0d" [label="copy{src=/, dest=/sheller/}" shape="note"];
  "sha256:2726e852445d4fedcb636fc5e35714aab353e46d88021897db52781349eb76b2" [label="sha256:2726e852445d4fedcb636fc5e35714aab353e46d88021897db52781349eb76b2" shape="plaintext"];
  "sha256:5b12b69b0f9e410b38a4ba942d5de09b0c2369cd5c40a097791b57fafc3a4939" -> "sha256:097dda949a362022b5e76a8e201d95023c846b4120b96d137dbe6ecdf79effd3" [label=""];
  "sha256:097dda949a362022b5e76a8e201d95023c846b4120b96d137dbe6ecdf79effd3" -> "sha256:a98f1ffb0249e289b66c3b6c175c8ab15727670168877b88adeccae92559ed0d" [label=""];
  "sha256:86543ffb1c3917c8d040f1c55c033333c7b4e2110445ecbaea23846f101f8b1f" -> "sha256:a98f1ffb0249e289b66c3b6c175c8ab15727670168877b88adeccae92559ed0d" [label=""];
  "sha256:a98f1ffb0249e289b66c3b6c175c8ab15727670168877b88adeccae92559ed0d" -> "sha256:2726e852445d4fedcb636fc5e35714aab353e46d88021897db52781349eb76b2" [label=""];
}

