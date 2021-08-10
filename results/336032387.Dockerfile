[app/sources/336032387.Dockerfile]
digraph {
  "sha256:929a601b3cc251e7ab7938ac22983eaffcd6defdf6e7dabdc91eee41b18f0dab" [label="docker-image://docker.io/microsoft/dotnet:2.1-aspnetcore-runtime" shape="ellipse"];
  "sha256:b18e6271531e514dfee2d49a8047d81bb4187e06cee013a8f6a9ee2c7be9ad5a" [label="mkdir{path=/app}" shape="note"];
  "sha256:7da24002353452dd5a1fa3e5702d0d66b18efe04031da9faf2e10367d579971a" [label="docker-image://docker.io/microsoft/dotnet:2.1-sdk-stretch" shape="ellipse"];
  "sha256:29bd3c39b1a49c5567fd5de6a0432db3136b859d97005e9c1d051c88a9ae9733" [label="mkdir{path=/app}" shape="note"];
  "sha256:0f901f3d9baf7d020c8c42fa3858682d2a0a5e0f0211335695f629458e75c5b6" [label="local://context" shape="ellipse"];
  "sha256:d973208054bb27a2b24feed73084cdc160372063b8b6fd050dcf3a1063e835f2" [label="copy{src=/NuGet.config, dest=/app/}" shape="note"];
  "sha256:0f101178d3d8acd591be9cfbe9d0a79b6666374b523da4dc87160a67997afb85" [label="/bin/sh -c mkdir FlightMap && cd FlightMap/" shape="box"];
  "sha256:03f51979ccceb7dfe400f177b5dec171d1afe6d8f021d95cbc1515ce11c5287a" [label="copy{src=/*.csproj, dest=/app/}" shape="note"];
  "sha256:b68031eccba335dbc260b3f7c64be11501385dc2dcc3bda4ea46882164356b72" [label="/bin/sh -c dotnet restore" shape="box"];
  "sha256:5e0bfe00a1614feeed30995d76ef5997a9e36122525ed1e9e62451f7aff58155" [label="copy{src=/, dest=/app/}" shape="note"];
  "sha256:a89d07819ec51e5d17f781a42bbfeae6c5ba5bad105143237ec9d5f4b9678e74" [label="/bin/sh -c dotnet publish -c Release -o out" shape="box"];
  "sha256:f2a2a33dc8ff42835ab2cf2ee029ccd7a83df2a44535fff6b24726f3ea36d435" [label="copy{src=/app/out, dest=/app/}" shape="note"];
  "sha256:802bb2d313c1e774949ea4823f4ed94085b28b7137d3df2b172b8f7d417f1a2a" [label="sha256:802bb2d313c1e774949ea4823f4ed94085b28b7137d3df2b172b8f7d417f1a2a" shape="plaintext"];
  "sha256:929a601b3cc251e7ab7938ac22983eaffcd6defdf6e7dabdc91eee41b18f0dab" -> "sha256:b18e6271531e514dfee2d49a8047d81bb4187e06cee013a8f6a9ee2c7be9ad5a" [label=""];
  "sha256:7da24002353452dd5a1fa3e5702d0d66b18efe04031da9faf2e10367d579971a" -> "sha256:29bd3c39b1a49c5567fd5de6a0432db3136b859d97005e9c1d051c88a9ae9733" [label=""];
  "sha256:29bd3c39b1a49c5567fd5de6a0432db3136b859d97005e9c1d051c88a9ae9733" -> "sha256:d973208054bb27a2b24feed73084cdc160372063b8b6fd050dcf3a1063e835f2" [label=""];
  "sha256:0f901f3d9baf7d020c8c42fa3858682d2a0a5e0f0211335695f629458e75c5b6" -> "sha256:d973208054bb27a2b24feed73084cdc160372063b8b6fd050dcf3a1063e835f2" [label=""];
  "sha256:d973208054bb27a2b24feed73084cdc160372063b8b6fd050dcf3a1063e835f2" -> "sha256:0f101178d3d8acd591be9cfbe9d0a79b6666374b523da4dc87160a67997afb85" [label=""];
  "sha256:0f101178d3d8acd591be9cfbe9d0a79b6666374b523da4dc87160a67997afb85" -> "sha256:03f51979ccceb7dfe400f177b5dec171d1afe6d8f021d95cbc1515ce11c5287a" [label=""];
  "sha256:0f901f3d9baf7d020c8c42fa3858682d2a0a5e0f0211335695f629458e75c5b6" -> "sha256:03f51979ccceb7dfe400f177b5dec171d1afe6d8f021d95cbc1515ce11c5287a" [label=""];
  "sha256:03f51979ccceb7dfe400f177b5dec171d1afe6d8f021d95cbc1515ce11c5287a" -> "sha256:b68031eccba335dbc260b3f7c64be11501385dc2dcc3bda4ea46882164356b72" [label=""];
  "sha256:b68031eccba335dbc260b3f7c64be11501385dc2dcc3bda4ea46882164356b72" -> "sha256:5e0bfe00a1614feeed30995d76ef5997a9e36122525ed1e9e62451f7aff58155" [label=""];
  "sha256:0f901f3d9baf7d020c8c42fa3858682d2a0a5e0f0211335695f629458e75c5b6" -> "sha256:5e0bfe00a1614feeed30995d76ef5997a9e36122525ed1e9e62451f7aff58155" [label=""];
  "sha256:5e0bfe00a1614feeed30995d76ef5997a9e36122525ed1e9e62451f7aff58155" -> "sha256:a89d07819ec51e5d17f781a42bbfeae6c5ba5bad105143237ec9d5f4b9678e74" [label=""];
  "sha256:b18e6271531e514dfee2d49a8047d81bb4187e06cee013a8f6a9ee2c7be9ad5a" -> "sha256:f2a2a33dc8ff42835ab2cf2ee029ccd7a83df2a44535fff6b24726f3ea36d435" [label=""];
  "sha256:a89d07819ec51e5d17f781a42bbfeae6c5ba5bad105143237ec9d5f4b9678e74" -> "sha256:f2a2a33dc8ff42835ab2cf2ee029ccd7a83df2a44535fff6b24726f3ea36d435" [label=""];
  "sha256:f2a2a33dc8ff42835ab2cf2ee029ccd7a83df2a44535fff6b24726f3ea36d435" -> "sha256:802bb2d313c1e774949ea4823f4ed94085b28b7137d3df2b172b8f7d417f1a2a" [label=""];
}

