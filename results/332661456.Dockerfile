[app/sources/332661456.Dockerfile]
digraph {
  "sha256:1434b4052d33affe8193a1ae519db5d6d543011b82416fe899e3fdac387549e0" [label="docker-image://docker.io/microsoft/dotnet:2.2.0-aspnetcore-runtime-alpine" shape="ellipse"];
  "sha256:371e99eb00339411a6a3b32aa2f37e7939cd5f0d55f53acdea568f73b6db10ba" [label="/bin/sh -c apk update && apk add libc6-compat" shape="box"];
  "sha256:b86fe70555721252dffce59955dbeb010959d856c89859613716e548bab2eb43" [label="/bin/sh -c GRPC_HEALTH_PROBE_VERSION=v0.2.0 &&     wget -qO/bin/grpc_health_probe https://github.com/grpc-ecosystem/grpc-health-probe/releases/download/${GRPC_HEALTH_PROBE_VERSION}/grpc_health_probe-linux-amd64 &&     chmod +x /bin/grpc_health_probe" shape="box"];
  "sha256:0ff9dee2cfeeeebe0d17d5a3f1d5a03f181a3905628be0fee16672d61b32a5cb" [label="mkdir{path=/app}" shape="note"];
  "sha256:6a3fcdb3bd8393765ad2d73b7fcb2279b6c6883320e3231aa3146d84d95671b2" [label="mkdir{path=/app}" shape="note"];
  "sha256:ae54ae6725562ab45ceff2bc938a59dc24496ded5d1fc207372e273bb51db5b5" [label="docker-image://docker.io/microsoft/dotnet:2.2.100-sdk-alpine" shape="ellipse"];
  "sha256:7885c259c0e4482a50a78d3d7f9d9e5d88b0f488e0a915ca8f8bbb66a86a753e" [label="local://context" shape="ellipse"];
  "sha256:ba5a2f3f15af4a57b2887b77fa217ff2264634e1ddcd2f0d829c29f031e88bfa" [label="copy{src=/, dest=/}" shape="note"];
  "sha256:5e121a180573fcd4b65e04af566e98fd4a13f4772530d228171c2c1c4e14d4bc" [label="mkdir{path=/samples/ExchangeService}" shape="note"];
  "sha256:0859a3e23394e783f2b403b3916f471dab8c958e180d405bbc2edd6b0834a9fc" [label="/bin/sh -c dotnet restore -nowarn:msb3202,nu1503" shape="box"];
  "sha256:f5dbe18ae1036669338b5e6c2d171c5b936edfb36a08227808a6b65f9f8daf61" [label="/bin/sh -c dotnet build --no-restore -c Release -o /app" shape="box"];
  "sha256:f9db2e6f286dfe8b33768e2859b53672610abef21ee6544aea5af27a654e454b" [label="/bin/sh -c dotnet publish --no-restore -c Release -o /app" shape="box"];
  "sha256:70599579d0e08657d4d58357133a416847fe4d3090ec52ad09cd97b3f82efe79" [label="copy{src=/app, dest=/app/}" shape="note"];
  "sha256:bbc75786a516fe0861f08a27718f4c4d9df0821e5ab821541031b322fa7a3901" [label="sha256:bbc75786a516fe0861f08a27718f4c4d9df0821e5ab821541031b322fa7a3901" shape="plaintext"];
  "sha256:1434b4052d33affe8193a1ae519db5d6d543011b82416fe899e3fdac387549e0" -> "sha256:371e99eb00339411a6a3b32aa2f37e7939cd5f0d55f53acdea568f73b6db10ba" [label=""];
  "sha256:371e99eb00339411a6a3b32aa2f37e7939cd5f0d55f53acdea568f73b6db10ba" -> "sha256:b86fe70555721252dffce59955dbeb010959d856c89859613716e548bab2eb43" [label=""];
  "sha256:b86fe70555721252dffce59955dbeb010959d856c89859613716e548bab2eb43" -> "sha256:0ff9dee2cfeeeebe0d17d5a3f1d5a03f181a3905628be0fee16672d61b32a5cb" [label=""];
  "sha256:0ff9dee2cfeeeebe0d17d5a3f1d5a03f181a3905628be0fee16672d61b32a5cb" -> "sha256:6a3fcdb3bd8393765ad2d73b7fcb2279b6c6883320e3231aa3146d84d95671b2" [label=""];
  "sha256:ae54ae6725562ab45ceff2bc938a59dc24496ded5d1fc207372e273bb51db5b5" -> "sha256:ba5a2f3f15af4a57b2887b77fa217ff2264634e1ddcd2f0d829c29f031e88bfa" [label=""];
  "sha256:7885c259c0e4482a50a78d3d7f9d9e5d88b0f488e0a915ca8f8bbb66a86a753e" -> "sha256:ba5a2f3f15af4a57b2887b77fa217ff2264634e1ddcd2f0d829c29f031e88bfa" [label=""];
  "sha256:ba5a2f3f15af4a57b2887b77fa217ff2264634e1ddcd2f0d829c29f031e88bfa" -> "sha256:5e121a180573fcd4b65e04af566e98fd4a13f4772530d228171c2c1c4e14d4bc" [label=""];
  "sha256:5e121a180573fcd4b65e04af566e98fd4a13f4772530d228171c2c1c4e14d4bc" -> "sha256:0859a3e23394e783f2b403b3916f471dab8c958e180d405bbc2edd6b0834a9fc" [label=""];
  "sha256:0859a3e23394e783f2b403b3916f471dab8c958e180d405bbc2edd6b0834a9fc" -> "sha256:f5dbe18ae1036669338b5e6c2d171c5b936edfb36a08227808a6b65f9f8daf61" [label=""];
  "sha256:f5dbe18ae1036669338b5e6c2d171c5b936edfb36a08227808a6b65f9f8daf61" -> "sha256:f9db2e6f286dfe8b33768e2859b53672610abef21ee6544aea5af27a654e454b" [label=""];
  "sha256:6a3fcdb3bd8393765ad2d73b7fcb2279b6c6883320e3231aa3146d84d95671b2" -> "sha256:70599579d0e08657d4d58357133a416847fe4d3090ec52ad09cd97b3f82efe79" [label=""];
  "sha256:f9db2e6f286dfe8b33768e2859b53672610abef21ee6544aea5af27a654e454b" -> "sha256:70599579d0e08657d4d58357133a416847fe4d3090ec52ad09cd97b3f82efe79" [label=""];
  "sha256:70599579d0e08657d4d58357133a416847fe4d3090ec52ad09cd97b3f82efe79" -> "sha256:bbc75786a516fe0861f08a27718f4c4d9df0821e5ab821541031b322fa7a3901" [label=""];
}

