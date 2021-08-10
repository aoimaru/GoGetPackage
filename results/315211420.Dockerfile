[app/sources/315211420.Dockerfile]
digraph {
  "sha256:27ac0161552155692f0af319bdc74848ce7b9880ef2ad135055c51a6be7881e2" [label="docker-image://docker.io/microsoft/dotnet:2.1.2-runtime-bionic" shape="ellipse"];
  "sha256:87237b4798b6818649a8d7ae7c0feff0d983bcb9e3499a86767b849abce0288d" [label="mkdir{path=/app}" shape="note"];
  "sha256:98f628b871ac10c3049625f90e27702c96bf5ebb87c9b90f6d933e97f7ab8906" [label="mkdir{path=/app}" shape="note"];
  "sha256:ea344f06a27b798bc6358969e2869e7d68a1251d4457e005c63212c3fe0b9df6" [label="docker-image://docker.io/microsoft/dotnet:2.1.302-sdk" shape="ellipse"];
  "sha256:dd6a34265cee5e3ddd182455eb7cad211b61c0ea62a17c0db47b3950bc3574c7" [label="mkdir{path=/src}" shape="note"];
  "sha256:a735dd22bd3518b7aed3cf1122671a2dea9781aefea4de0db25aa2addfe0f3d7" [label="local://context" shape="ellipse"];
  "sha256:485ded5c1a549980ddfd4ed72b8e5b30d4147ac4614b2a889e2dc9c1175b2016" [label="copy{src=/Modules/TemperatureSensor/TemperatureSensor.csproj, dest=/src/Modules/TemperatureSensor/}" shape="note"];
  "sha256:766e72d9d76971b9628023aa1984a6e5919058fb9a8a5439def4ee8d2a798da4" [label="copy{src=/Thermostat.Shared/Thermostat.Shared.csproj, dest=/src/Thermostat.Shared/}" shape="note"];
  "sha256:099f10f5263272d3ccaeeb3de5e435f605ca5d44f47b92b5c1d2883ea1019fd4" [label="/bin/sh -c dotnet restore Modules/TemperatureSensor/TemperatureSensor.csproj" shape="box"];
  "sha256:02fc9aef4220298720930396677ce4e7a80c6c51af2eaf1cc3367fb6956736f8" [label="copy{src=/, dest=/src/}" shape="note"];
  "sha256:4f09a354007a91e584a6a62e6d5b822ac0573b44a1c769877b6c69687863ec07" [label="mkdir{path=/src/Modules/TemperatureSensor}" shape="note"];
  "sha256:da20077003329f17470055dcc9a5e2f21e9a6f274c36a31585d997cc126855d5" [label="/bin/sh -c dotnet build TemperatureSensor.csproj -c Release -o /app" shape="box"];
  "sha256:119d0c85292e6dc93155108bfa5d4e8c2880c0227a015595be12ed8b9dfb62c6" [label="/bin/sh -c dotnet publish TemperatureSensor.csproj -c Release -o /app" shape="box"];
  "sha256:04d5c46ecefe9ad9a448181b004b0672fd83c97ef44064d019b87d0faa3104e4" [label="copy{src=/app, dest=/app/}" shape="note"];
  "sha256:db8fabad65e421c104cfe1a6cfa817f8beac9e781687fdfeb2e5899c9fb91543" [label="sha256:db8fabad65e421c104cfe1a6cfa817f8beac9e781687fdfeb2e5899c9fb91543" shape="plaintext"];
  "sha256:27ac0161552155692f0af319bdc74848ce7b9880ef2ad135055c51a6be7881e2" -> "sha256:87237b4798b6818649a8d7ae7c0feff0d983bcb9e3499a86767b849abce0288d" [label=""];
  "sha256:87237b4798b6818649a8d7ae7c0feff0d983bcb9e3499a86767b849abce0288d" -> "sha256:98f628b871ac10c3049625f90e27702c96bf5ebb87c9b90f6d933e97f7ab8906" [label=""];
  "sha256:ea344f06a27b798bc6358969e2869e7d68a1251d4457e005c63212c3fe0b9df6" -> "sha256:dd6a34265cee5e3ddd182455eb7cad211b61c0ea62a17c0db47b3950bc3574c7" [label=""];
  "sha256:dd6a34265cee5e3ddd182455eb7cad211b61c0ea62a17c0db47b3950bc3574c7" -> "sha256:485ded5c1a549980ddfd4ed72b8e5b30d4147ac4614b2a889e2dc9c1175b2016" [label=""];
  "sha256:a735dd22bd3518b7aed3cf1122671a2dea9781aefea4de0db25aa2addfe0f3d7" -> "sha256:485ded5c1a549980ddfd4ed72b8e5b30d4147ac4614b2a889e2dc9c1175b2016" [label=""];
  "sha256:485ded5c1a549980ddfd4ed72b8e5b30d4147ac4614b2a889e2dc9c1175b2016" -> "sha256:766e72d9d76971b9628023aa1984a6e5919058fb9a8a5439def4ee8d2a798da4" [label=""];
  "sha256:a735dd22bd3518b7aed3cf1122671a2dea9781aefea4de0db25aa2addfe0f3d7" -> "sha256:766e72d9d76971b9628023aa1984a6e5919058fb9a8a5439def4ee8d2a798da4" [label=""];
  "sha256:766e72d9d76971b9628023aa1984a6e5919058fb9a8a5439def4ee8d2a798da4" -> "sha256:099f10f5263272d3ccaeeb3de5e435f605ca5d44f47b92b5c1d2883ea1019fd4" [label=""];
  "sha256:099f10f5263272d3ccaeeb3de5e435f605ca5d44f47b92b5c1d2883ea1019fd4" -> "sha256:02fc9aef4220298720930396677ce4e7a80c6c51af2eaf1cc3367fb6956736f8" [label=""];
  "sha256:a735dd22bd3518b7aed3cf1122671a2dea9781aefea4de0db25aa2addfe0f3d7" -> "sha256:02fc9aef4220298720930396677ce4e7a80c6c51af2eaf1cc3367fb6956736f8" [label=""];
  "sha256:02fc9aef4220298720930396677ce4e7a80c6c51af2eaf1cc3367fb6956736f8" -> "sha256:4f09a354007a91e584a6a62e6d5b822ac0573b44a1c769877b6c69687863ec07" [label=""];
  "sha256:4f09a354007a91e584a6a62e6d5b822ac0573b44a1c769877b6c69687863ec07" -> "sha256:da20077003329f17470055dcc9a5e2f21e9a6f274c36a31585d997cc126855d5" [label=""];
  "sha256:da20077003329f17470055dcc9a5e2f21e9a6f274c36a31585d997cc126855d5" -> "sha256:119d0c85292e6dc93155108bfa5d4e8c2880c0227a015595be12ed8b9dfb62c6" [label=""];
  "sha256:98f628b871ac10c3049625f90e27702c96bf5ebb87c9b90f6d933e97f7ab8906" -> "sha256:04d5c46ecefe9ad9a448181b004b0672fd83c97ef44064d019b87d0faa3104e4" [label=""];
  "sha256:119d0c85292e6dc93155108bfa5d4e8c2880c0227a015595be12ed8b9dfb62c6" -> "sha256:04d5c46ecefe9ad9a448181b004b0672fd83c97ef44064d019b87d0faa3104e4" [label=""];
  "sha256:04d5c46ecefe9ad9a448181b004b0672fd83c97ef44064d019b87d0faa3104e4" -> "sha256:db8fabad65e421c104cfe1a6cfa817f8beac9e781687fdfeb2e5899c9fb91543" [label=""];
}

