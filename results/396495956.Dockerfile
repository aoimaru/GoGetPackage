[app/sources/396495956.Dockerfile]
digraph {
  "sha256:f6fbe8d62def1321cf9bfb2579136cb10991eaf652378226c3548f1d80800e03" [label="docker-image://docker.io/microsoft/aspnetcore:2.0" shape="ellipse"];
  "sha256:3d6a33becb0a73ca87b02894a03f38acb9da4d3f296b0238ca5798e95769f423" [label="mkdir{path=/app}" shape="note"];
  "sha256:367a50fffe321170fd5b6314e743735338c14a55cf7519995cd38c0b6da3f357" [label="mkdir{path=/app}" shape="note"];
  "sha256:5ef45377573600b8ca1d1926e6f50ecf27f0df401f366138c54211b44b4959d3" [label="docker-image://docker.io/microsoft/aspnetcore-build:2.0" shape="ellipse"];
  "sha256:313f58e46c952ec25ef51dabceff21fbc836645bd4e780b6cbe7dd3921664dd9" [label="mkdir{path=/src}" shape="note"];
  "sha256:2d582bfd0be76b7c150df306b031aaaddb0e72d4700451864f0b07e4035cbb72" [label="local://context" shape="ellipse"];
  "sha256:e745eefe7ff3cc13505cca4e25c3712146b87db988b3cc264c5121d6e562cdba" [label="copy{src=/ExecOnLinux/ExecOnLinux.csproj, dest=/src/ExecOnLinux/}" shape="note"];
  "sha256:3172e02d1ec06e1c95b474ce0d2db298a84016f4897dc26aa71fcbe06c18b5e7" [label="/bin/sh -c dotnet restore \"ExecOnLinux/ExecOnLinux.csproj\"" shape="box"];
  "sha256:3a7852e265b0730d116186c168263c578b55565f73935f6f88f3f85fb89acddb" [label="copy{src=/, dest=/src/}" shape="note"];
  "sha256:515742c18e8729a03ade7f0d40c18a122a494edbc3bc8f0eb7501a8398c0003b" [label="mkdir{path=/src/ExecOnLinux}" shape="note"];
  "sha256:6bce4ca28d569b7f69165a8c44652b64c574b9fc7285d748f03b90608dda56b9" [label="/bin/sh -c dotnet build \"ExecOnLinux.csproj\" -c Release -o /app" shape="box"];
  "sha256:88b746abbbb4e76653ae17e2420d11d4031f06b5dcd326ba45ec8b06a7929dce" [label="/bin/sh -c dotnet publish \"ExecOnLinux.csproj\" -c Release -o /app" shape="box"];
  "sha256:70c0a115dbdd45a5888ef045deb79ccefc8a1f23820a8f2d28a1f4d3268c3fdd" [label="copy{src=/app, dest=/app/}" shape="note"];
  "sha256:6f8968e1df78f11390212a392016b9cc567741e7c9e3c9f0fa86b60e52cc9da8" [label="sha256:6f8968e1df78f11390212a392016b9cc567741e7c9e3c9f0fa86b60e52cc9da8" shape="plaintext"];
  "sha256:f6fbe8d62def1321cf9bfb2579136cb10991eaf652378226c3548f1d80800e03" -> "sha256:3d6a33becb0a73ca87b02894a03f38acb9da4d3f296b0238ca5798e95769f423" [label=""];
  "sha256:3d6a33becb0a73ca87b02894a03f38acb9da4d3f296b0238ca5798e95769f423" -> "sha256:367a50fffe321170fd5b6314e743735338c14a55cf7519995cd38c0b6da3f357" [label=""];
  "sha256:5ef45377573600b8ca1d1926e6f50ecf27f0df401f366138c54211b44b4959d3" -> "sha256:313f58e46c952ec25ef51dabceff21fbc836645bd4e780b6cbe7dd3921664dd9" [label=""];
  "sha256:313f58e46c952ec25ef51dabceff21fbc836645bd4e780b6cbe7dd3921664dd9" -> "sha256:e745eefe7ff3cc13505cca4e25c3712146b87db988b3cc264c5121d6e562cdba" [label=""];
  "sha256:2d582bfd0be76b7c150df306b031aaaddb0e72d4700451864f0b07e4035cbb72" -> "sha256:e745eefe7ff3cc13505cca4e25c3712146b87db988b3cc264c5121d6e562cdba" [label=""];
  "sha256:e745eefe7ff3cc13505cca4e25c3712146b87db988b3cc264c5121d6e562cdba" -> "sha256:3172e02d1ec06e1c95b474ce0d2db298a84016f4897dc26aa71fcbe06c18b5e7" [label=""];
  "sha256:3172e02d1ec06e1c95b474ce0d2db298a84016f4897dc26aa71fcbe06c18b5e7" -> "sha256:3a7852e265b0730d116186c168263c578b55565f73935f6f88f3f85fb89acddb" [label=""];
  "sha256:2d582bfd0be76b7c150df306b031aaaddb0e72d4700451864f0b07e4035cbb72" -> "sha256:3a7852e265b0730d116186c168263c578b55565f73935f6f88f3f85fb89acddb" [label=""];
  "sha256:3a7852e265b0730d116186c168263c578b55565f73935f6f88f3f85fb89acddb" -> "sha256:515742c18e8729a03ade7f0d40c18a122a494edbc3bc8f0eb7501a8398c0003b" [label=""];
  "sha256:515742c18e8729a03ade7f0d40c18a122a494edbc3bc8f0eb7501a8398c0003b" -> "sha256:6bce4ca28d569b7f69165a8c44652b64c574b9fc7285d748f03b90608dda56b9" [label=""];
  "sha256:6bce4ca28d569b7f69165a8c44652b64c574b9fc7285d748f03b90608dda56b9" -> "sha256:88b746abbbb4e76653ae17e2420d11d4031f06b5dcd326ba45ec8b06a7929dce" [label=""];
  "sha256:367a50fffe321170fd5b6314e743735338c14a55cf7519995cd38c0b6da3f357" -> "sha256:70c0a115dbdd45a5888ef045deb79ccefc8a1f23820a8f2d28a1f4d3268c3fdd" [label=""];
  "sha256:88b746abbbb4e76653ae17e2420d11d4031f06b5dcd326ba45ec8b06a7929dce" -> "sha256:70c0a115dbdd45a5888ef045deb79ccefc8a1f23820a8f2d28a1f4d3268c3fdd" [label=""];
  "sha256:70c0a115dbdd45a5888ef045deb79ccefc8a1f23820a8f2d28a1f4d3268c3fdd" -> "sha256:6f8968e1df78f11390212a392016b9cc567741e7c9e3c9f0fa86b60e52cc9da8" [label=""];
}

