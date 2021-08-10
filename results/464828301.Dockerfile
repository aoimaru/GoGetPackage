[app/sources/464828301.Dockerfile]
digraph {
  "sha256:efbccbe63bb58047443a0ad856eaf62525ac2b1faafb01cef77491556c0cebbb" [label="docker-image://docker.io/microsoft/dotnet:2.2-aspnetcore-runtime" shape="ellipse"];
  "sha256:c8906744f1a1a205eb232c9e896d9c8b6a8984f1aa9322b7da0c30adce735ef9" [label="mkdir{path=/app}" shape="note"];
  "sha256:835df078955a973614a57642c14ff7120ea057703ba75054433e063858168b4f" [label="mkdir{path=/app}" shape="note"];
  "sha256:f5a4e34573d9600f5a195d21d4818d5faa716939f731b95b9a168c4e6bca0de9" [label="docker-image://docker.io/endeveit/docker-jq:latest" shape="ellipse"];
  "sha256:053f0ded7d64d80ee12d25c18a39aeac76d2816fb4424b262adcb99de6cac0db" [label="mkdir{path=/app}" shape="note"];
  "sha256:217023eb1ec28f41f0367fa161c7ac7a57ba7e94bfc3be1724f6ae36af0e86c0" [label="docker-image://docker.io/microsoft/dotnet:2.2-sdk" shape="ellipse"];
  "sha256:7ca1a3c3d8a04cb964b2921644ff3dd028ed11e1079756eef968cf9e2631bccf" [label="mkdir{path=/src}" shape="note"];
  "sha256:d77487e9cd54caea3616f2c10f80d6310b761ee4e0142275fffee953f14a0ee7" [label="local://context" shape="ellipse"];
  "sha256:b5cb810cc92b746d90ea26fda45b604d708b2bede0da631772d0fa31b051285a" [label="copy{src=/src, dest=/src/}" shape="note"];
  "sha256:41f2ccbf8990d134ffad6011262da8f7c6b8988b07cc6a6c1beb462e918fe363" [label="/bin/sh -c ls" shape="box"];
  "sha256:f8fb1e5dd35c5d5b1ef275c581874b31cbc3cbfca9c4d90cf4aebcc16a7e0b79" [label="mkdir{path=/src/server/Conduit.Api}" shape="note"];
  "sha256:f77120751fa0b4cdf752ce26b8e7b1e98ccdebc03a6f078cc98f43ecd2ae0231" [label="/bin/sh -c dotnet restore Conduit.Api.csproj" shape="box"];
  "sha256:694baf875c96497b68fe46e0f0e67e7c8fcfeb25c30b35818ae661f66ba55418" [label="/bin/sh -c dotnet publish Conduit.Api.csproj -c Release -o /app" shape="box"];
  "sha256:40f536a4a5c8b49aff5c2a8fd15328d80d47d41a29707a1c5c2a5b8216c32a2e" [label="copy{src=/app, dest=/app/}" shape="note"];
  "sha256:978b7bfcc3240fbdb4c9c0c3857a2034f78b759a9c3a743f54117023bd2a1b2b" [label="/bin/sh -c jq '.ConnectionStrings.DbConnectionString = \"Server=db;Port=5432;Database=Conduit;User Id=postgres;Password=postgres;\"' appsettings.json > tmp.$$.json && mv tmp.$$.json appsettings.json" shape="box"];
  "sha256:b15dc6953acd745b4de441159a6abd64e8044013f6bc8820e5d59c8b57a6587d" [label="/bin/sh -c cat appsettings.json" shape="box"];
  "sha256:68e47704b680240fe294c1a31b47f8fc326f6da6a213b048161415e4bedbd5f0" [label="copy{src=/app, dest=/app/}" shape="note"];
  "sha256:3532712786308de9b1b343bb3a45c85c5d82940e25dfadeb772ac5b0bf97c494" [label="sha256:3532712786308de9b1b343bb3a45c85c5d82940e25dfadeb772ac5b0bf97c494" shape="plaintext"];
  "sha256:efbccbe63bb58047443a0ad856eaf62525ac2b1faafb01cef77491556c0cebbb" -> "sha256:c8906744f1a1a205eb232c9e896d9c8b6a8984f1aa9322b7da0c30adce735ef9" [label=""];
  "sha256:c8906744f1a1a205eb232c9e896d9c8b6a8984f1aa9322b7da0c30adce735ef9" -> "sha256:835df078955a973614a57642c14ff7120ea057703ba75054433e063858168b4f" [label=""];
  "sha256:f5a4e34573d9600f5a195d21d4818d5faa716939f731b95b9a168c4e6bca0de9" -> "sha256:053f0ded7d64d80ee12d25c18a39aeac76d2816fb4424b262adcb99de6cac0db" [label=""];
  "sha256:217023eb1ec28f41f0367fa161c7ac7a57ba7e94bfc3be1724f6ae36af0e86c0" -> "sha256:7ca1a3c3d8a04cb964b2921644ff3dd028ed11e1079756eef968cf9e2631bccf" [label=""];
  "sha256:7ca1a3c3d8a04cb964b2921644ff3dd028ed11e1079756eef968cf9e2631bccf" -> "sha256:b5cb810cc92b746d90ea26fda45b604d708b2bede0da631772d0fa31b051285a" [label=""];
  "sha256:d77487e9cd54caea3616f2c10f80d6310b761ee4e0142275fffee953f14a0ee7" -> "sha256:b5cb810cc92b746d90ea26fda45b604d708b2bede0da631772d0fa31b051285a" [label=""];
  "sha256:b5cb810cc92b746d90ea26fda45b604d708b2bede0da631772d0fa31b051285a" -> "sha256:41f2ccbf8990d134ffad6011262da8f7c6b8988b07cc6a6c1beb462e918fe363" [label=""];
  "sha256:41f2ccbf8990d134ffad6011262da8f7c6b8988b07cc6a6c1beb462e918fe363" -> "sha256:f8fb1e5dd35c5d5b1ef275c581874b31cbc3cbfca9c4d90cf4aebcc16a7e0b79" [label=""];
  "sha256:f8fb1e5dd35c5d5b1ef275c581874b31cbc3cbfca9c4d90cf4aebcc16a7e0b79" -> "sha256:f77120751fa0b4cdf752ce26b8e7b1e98ccdebc03a6f078cc98f43ecd2ae0231" [label=""];
  "sha256:f77120751fa0b4cdf752ce26b8e7b1e98ccdebc03a6f078cc98f43ecd2ae0231" -> "sha256:694baf875c96497b68fe46e0f0e67e7c8fcfeb25c30b35818ae661f66ba55418" [label=""];
  "sha256:053f0ded7d64d80ee12d25c18a39aeac76d2816fb4424b262adcb99de6cac0db" -> "sha256:40f536a4a5c8b49aff5c2a8fd15328d80d47d41a29707a1c5c2a5b8216c32a2e" [label=""];
  "sha256:694baf875c96497b68fe46e0f0e67e7c8fcfeb25c30b35818ae661f66ba55418" -> "sha256:40f536a4a5c8b49aff5c2a8fd15328d80d47d41a29707a1c5c2a5b8216c32a2e" [label=""];
  "sha256:40f536a4a5c8b49aff5c2a8fd15328d80d47d41a29707a1c5c2a5b8216c32a2e" -> "sha256:978b7bfcc3240fbdb4c9c0c3857a2034f78b759a9c3a743f54117023bd2a1b2b" [label=""];
  "sha256:978b7bfcc3240fbdb4c9c0c3857a2034f78b759a9c3a743f54117023bd2a1b2b" -> "sha256:b15dc6953acd745b4de441159a6abd64e8044013f6bc8820e5d59c8b57a6587d" [label=""];
  "sha256:835df078955a973614a57642c14ff7120ea057703ba75054433e063858168b4f" -> "sha256:68e47704b680240fe294c1a31b47f8fc326f6da6a213b048161415e4bedbd5f0" [label=""];
  "sha256:b15dc6953acd745b4de441159a6abd64e8044013f6bc8820e5d59c8b57a6587d" -> "sha256:68e47704b680240fe294c1a31b47f8fc326f6da6a213b048161415e4bedbd5f0" [label=""];
  "sha256:68e47704b680240fe294c1a31b47f8fc326f6da6a213b048161415e4bedbd5f0" -> "sha256:3532712786308de9b1b343bb3a45c85c5d82940e25dfadeb772ac5b0bf97c494" [label=""];
}

