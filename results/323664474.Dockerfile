[app/sources/323664474.Dockerfile]
digraph {
  "sha256:929a601b3cc251e7ab7938ac22983eaffcd6defdf6e7dabdc91eee41b18f0dab" [label="docker-image://docker.io/microsoft/dotnet:2.1-aspnetcore-runtime" shape="ellipse"];
  "sha256:b18e6271531e514dfee2d49a8047d81bb4187e06cee013a8f6a9ee2c7be9ad5a" [label="mkdir{path=/app}" shape="note"];
  "sha256:d86f1286f9d87f5060dbb703e318dcd398caa1e8da560560a97faa6ba7b53047" [label="mkdir{path=/app}" shape="note"];
  "sha256:95ebc7aa89060a0bb064bbb970f2f510902bc639411306b2b0183c35e2dbd348" [label="docker-image://docker.io/microsoft/dotnet:2.1-sdk" shape="ellipse"];
  "sha256:018e030a4b1a9c87e14a3f25e3ffbec5e7d6555b2e85694890c0d03a185eb329" [label="local://context" shape="ellipse"];
  "sha256:924bdff739357339b5501bdb031cb3e91cfa73f9a3cb1710ca9dbe7846bb40d4" [label="copy{src=/NuGet.Config, dest=/}" shape="note"];
  "sha256:488330386003cb5f005497b8eb9981271452cb402b1d243931c537120a3406fe" [label="mkdir{path=/src}" shape="note"];
  "sha256:4416998a8633fa62bd429e0950ce6d1c93e5a8497459805716828a5da323e489" [label="copy{src=/src/JobSchedulerClient.Web/JobSchedulerClient.Web.csproj, dest=/src/src/JobSchedulerClient.Web/}" shape="note"];
  "sha256:0fb75cd4aa87747233847d3bbacec34bb5db6156e0a954a72ed2e6175c81c71d" [label="/bin/sh -c dotnet restore \"src/JobSchedulerClient.Web/JobSchedulerClient.Web.csproj\"" shape="box"];
  "sha256:bf99e4d146fd90f6bf40cb0dc60940e561a372d538b7018f3e8eb380564e1043" [label="copy{src=/, dest=/src/}" shape="note"];
  "sha256:4b0a72abc9ade58c7da74ef11fe1a72089631a8b8bdcb5c8b3922fd238c72302" [label="mkdir{path=/src/src/JobSchedulerClient.Web}" shape="note"];
  "sha256:f3826ebacf68940a275ab91b7d9a765167feede0a6d81148b78c196368da1a1e" [label="/bin/sh -c dotnet build \"JobSchedulerClient.Web.csproj\" -c Release -o /app" shape="box"];
  "sha256:3d20ef8fe7f3a5e39df6a108a1f92ffd861a9ab028efaa66d7d7907769703f41" [label="/bin/sh -c dotnet publish \"JobSchedulerClient.Web.csproj\" -c Release -o /app" shape="box"];
  "sha256:ef3d6bf1eea1a2739034f0b6a3747e0bd75144fbc5086098a57178d5da45f849" [label="copy{src=/app, dest=/app/}" shape="note"];
  "sha256:b3d00895894ec49ba8120b72bcbb29f075558cc06f77e8636bd921cce2502cd5" [label="sha256:b3d00895894ec49ba8120b72bcbb29f075558cc06f77e8636bd921cce2502cd5" shape="plaintext"];
  "sha256:929a601b3cc251e7ab7938ac22983eaffcd6defdf6e7dabdc91eee41b18f0dab" -> "sha256:b18e6271531e514dfee2d49a8047d81bb4187e06cee013a8f6a9ee2c7be9ad5a" [label=""];
  "sha256:b18e6271531e514dfee2d49a8047d81bb4187e06cee013a8f6a9ee2c7be9ad5a" -> "sha256:d86f1286f9d87f5060dbb703e318dcd398caa1e8da560560a97faa6ba7b53047" [label=""];
  "sha256:95ebc7aa89060a0bb064bbb970f2f510902bc639411306b2b0183c35e2dbd348" -> "sha256:924bdff739357339b5501bdb031cb3e91cfa73f9a3cb1710ca9dbe7846bb40d4" [label=""];
  "sha256:018e030a4b1a9c87e14a3f25e3ffbec5e7d6555b2e85694890c0d03a185eb329" -> "sha256:924bdff739357339b5501bdb031cb3e91cfa73f9a3cb1710ca9dbe7846bb40d4" [label=""];
  "sha256:924bdff739357339b5501bdb031cb3e91cfa73f9a3cb1710ca9dbe7846bb40d4" -> "sha256:488330386003cb5f005497b8eb9981271452cb402b1d243931c537120a3406fe" [label=""];
  "sha256:488330386003cb5f005497b8eb9981271452cb402b1d243931c537120a3406fe" -> "sha256:4416998a8633fa62bd429e0950ce6d1c93e5a8497459805716828a5da323e489" [label=""];
  "sha256:018e030a4b1a9c87e14a3f25e3ffbec5e7d6555b2e85694890c0d03a185eb329" -> "sha256:4416998a8633fa62bd429e0950ce6d1c93e5a8497459805716828a5da323e489" [label=""];
  "sha256:4416998a8633fa62bd429e0950ce6d1c93e5a8497459805716828a5da323e489" -> "sha256:0fb75cd4aa87747233847d3bbacec34bb5db6156e0a954a72ed2e6175c81c71d" [label=""];
  "sha256:0fb75cd4aa87747233847d3bbacec34bb5db6156e0a954a72ed2e6175c81c71d" -> "sha256:bf99e4d146fd90f6bf40cb0dc60940e561a372d538b7018f3e8eb380564e1043" [label=""];
  "sha256:018e030a4b1a9c87e14a3f25e3ffbec5e7d6555b2e85694890c0d03a185eb329" -> "sha256:bf99e4d146fd90f6bf40cb0dc60940e561a372d538b7018f3e8eb380564e1043" [label=""];
  "sha256:bf99e4d146fd90f6bf40cb0dc60940e561a372d538b7018f3e8eb380564e1043" -> "sha256:4b0a72abc9ade58c7da74ef11fe1a72089631a8b8bdcb5c8b3922fd238c72302" [label=""];
  "sha256:4b0a72abc9ade58c7da74ef11fe1a72089631a8b8bdcb5c8b3922fd238c72302" -> "sha256:f3826ebacf68940a275ab91b7d9a765167feede0a6d81148b78c196368da1a1e" [label=""];
  "sha256:f3826ebacf68940a275ab91b7d9a765167feede0a6d81148b78c196368da1a1e" -> "sha256:3d20ef8fe7f3a5e39df6a108a1f92ffd861a9ab028efaa66d7d7907769703f41" [label=""];
  "sha256:d86f1286f9d87f5060dbb703e318dcd398caa1e8da560560a97faa6ba7b53047" -> "sha256:ef3d6bf1eea1a2739034f0b6a3747e0bd75144fbc5086098a57178d5da45f849" [label=""];
  "sha256:3d20ef8fe7f3a5e39df6a108a1f92ffd861a9ab028efaa66d7d7907769703f41" -> "sha256:ef3d6bf1eea1a2739034f0b6a3747e0bd75144fbc5086098a57178d5da45f849" [label=""];
  "sha256:ef3d6bf1eea1a2739034f0b6a3747e0bd75144fbc5086098a57178d5da45f849" -> "sha256:b3d00895894ec49ba8120b72bcbb29f075558cc06f77e8636bd921cce2502cd5" [label=""];
}

