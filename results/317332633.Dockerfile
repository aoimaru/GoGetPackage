[app/sources/317332633.Dockerfile]
digraph {
  "sha256:6a2bf2a879e1bb6028fc5e77446433146c1b73f533eef4d98c0ab2e9624833db" [label="docker-image://docker.io/microsoft/dotnet:2-aspnetcore-runtime" shape="ellipse"];
  "sha256:a23a26889ada23a80586f933eb4ffdc44cc69c2c9d59eb255f0c6ae3b050cc78" [label="mkdir{path=/app}" shape="note"];
  "sha256:1b06f7f9222f4c1b8235fbdba11bc6f5ab66e9756f4cf4dd0d3f313ac659c89b" [label="local://context" shape="ellipse"];
  "sha256:b45923aa943fb5a777b46c58454df28f1a7790c2f0ae86e86a9625e1f5067051" [label="docker-image://docker.io/microsoft/dotnet:2-sdk" shape="ellipse"];
  "sha256:bc6f32c648682628de14dd92775de5101eeea80a6e4f950a844f47c31e23e6bc" [label="mkdir{path=/app}" shape="note"];
  "sha256:44f7e27402bc8afe7474c87a8ed46e303ab39119e751331ba67fc2bd452ac553" [label="copy{src=/*.csproj, dest=/app/}" shape="note"];
  "sha256:72b33f6a6e1c9cdf68f329aa2512e0fd31c43def90ca68018f4a48d081f2c731" [label="/bin/sh -c dotnet restore" shape="box"];
  "sha256:80d6fcb8bf8bfb28affbdb9235470367048169c73a32db84591f1dc54ce560f6" [label="copy{src=/, dest=/app/}" shape="note"];
  "sha256:278a1623fb0a015d9edf335b6934b8789a4c8bbc114c8fde614dd9cf330bb608" [label="/bin/sh -c dotnet publish -c Release -o out" shape="box"];
  "sha256:39336be5318657baf87db5082d613c0946705a74020938493da0206ff0801a14" [label="copy{src=/app/out, dest=/app/}" shape="note"];
  "sha256:6fdfccad01a5a2e09c4f4d2af91c5c3d4d7cccf98b2aef54c2ef4dc48c9ba5e9" [label="sha256:6fdfccad01a5a2e09c4f4d2af91c5c3d4d7cccf98b2aef54c2ef4dc48c9ba5e9" shape="plaintext"];
  "sha256:6a2bf2a879e1bb6028fc5e77446433146c1b73f533eef4d98c0ab2e9624833db" -> "sha256:a23a26889ada23a80586f933eb4ffdc44cc69c2c9d59eb255f0c6ae3b050cc78" [label=""];
  "sha256:b45923aa943fb5a777b46c58454df28f1a7790c2f0ae86e86a9625e1f5067051" -> "sha256:bc6f32c648682628de14dd92775de5101eeea80a6e4f950a844f47c31e23e6bc" [label=""];
  "sha256:bc6f32c648682628de14dd92775de5101eeea80a6e4f950a844f47c31e23e6bc" -> "sha256:44f7e27402bc8afe7474c87a8ed46e303ab39119e751331ba67fc2bd452ac553" [label=""];
  "sha256:1b06f7f9222f4c1b8235fbdba11bc6f5ab66e9756f4cf4dd0d3f313ac659c89b" -> "sha256:44f7e27402bc8afe7474c87a8ed46e303ab39119e751331ba67fc2bd452ac553" [label=""];
  "sha256:44f7e27402bc8afe7474c87a8ed46e303ab39119e751331ba67fc2bd452ac553" -> "sha256:72b33f6a6e1c9cdf68f329aa2512e0fd31c43def90ca68018f4a48d081f2c731" [label=""];
  "sha256:72b33f6a6e1c9cdf68f329aa2512e0fd31c43def90ca68018f4a48d081f2c731" -> "sha256:80d6fcb8bf8bfb28affbdb9235470367048169c73a32db84591f1dc54ce560f6" [label=""];
  "sha256:1b06f7f9222f4c1b8235fbdba11bc6f5ab66e9756f4cf4dd0d3f313ac659c89b" -> "sha256:80d6fcb8bf8bfb28affbdb9235470367048169c73a32db84591f1dc54ce560f6" [label=""];
  "sha256:80d6fcb8bf8bfb28affbdb9235470367048169c73a32db84591f1dc54ce560f6" -> "sha256:278a1623fb0a015d9edf335b6934b8789a4c8bbc114c8fde614dd9cf330bb608" [label=""];
  "sha256:a23a26889ada23a80586f933eb4ffdc44cc69c2c9d59eb255f0c6ae3b050cc78" -> "sha256:39336be5318657baf87db5082d613c0946705a74020938493da0206ff0801a14" [label=""];
  "sha256:278a1623fb0a015d9edf335b6934b8789a4c8bbc114c8fde614dd9cf330bb608" -> "sha256:39336be5318657baf87db5082d613c0946705a74020938493da0206ff0801a14" [label=""];
  "sha256:39336be5318657baf87db5082d613c0946705a74020938493da0206ff0801a14" -> "sha256:6fdfccad01a5a2e09c4f4d2af91c5c3d4d7cccf98b2aef54c2ef4dc48c9ba5e9" [label=""];
}

