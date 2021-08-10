[app/sources/226421168.Dockerfile]
digraph {
  "sha256:70fb648a87ba583acac3d299aa2f497efd7f3289e590a7123eed3e01f36b8310" [label="docker-image://docker.io/microsoft/dotnet:2.1-aspnetcore-runtime-alpine" shape="ellipse"];
  "sha256:6acbbf3806cd41951689cd887a6d5931edf8cc45f02727b0fb4cc630891ba866" [label="mkdir{path=/app}" shape="note"];
  "sha256:e7010efafaf0e776657c18faea37f695438edd624b4b4220bd417c5cca3a6c59" [label="local://context" shape="ellipse"];
  "sha256:549842472f0921a69e4bcf8a307cb5106bebac349e15500c0e7a86066198219d" [label="docker-image://docker.io/microsoft/dotnet:2.1-sdk-alpine" shape="ellipse"];
  "sha256:3ae6da3eee2641636246c5214536b887e926bf1c56ce34849c80b5130b4a9225" [label="mkdir{path=/build}" shape="note"];
  "sha256:819a2ef23d6dea9285df196911aea95a8f44d764f7d625c124e0c926b0ccf9fe" [label="copy{src=/dwCheckApi.Common/dwCheckApi.Common.csproj, dest=/build/dwCheckApi.Common/dwCheckApi.Common.csproj}" shape="note"];
  "sha256:b32fafde86eda91d3c3a9f384673ecc83222f4d2078b6cf2078504fd98376a82" [label="copy{src=/dwCheckApi.DAL/dwCheckApi.DAL.csproj, dest=/build/dwCheckApi.DAL/dwCheckApi.DAL.csproj}" shape="note"];
  "sha256:cfd1b2db23cce70f6613b0cfea9c24e5997f17e0f8e565e3a13d8707996e6cd8" [label="copy{src=/dwCheckApi.DTO/dwCheckApi.DTO.csproj, dest=/build/dwCheckApi.DTO/dwCheckApi.DTO.csproj}" shape="note"];
  "sha256:6dc7e2646d675058558eef2ba40ea0cf99eeb516c885689acd2714ceee90e2fe" [label="copy{src=/dwCheckApi.Entities/dwCheckApi.Entities.csproj, dest=/build/dwCheckApi.Entities/dwCheckApi.Entities.csproj}" shape="note"];
  "sha256:ab3ef9085a3a95284e56e74ca5dfd1c79189e72572d5eb4bbc5048e261b2beca" [label="copy{src=/dwCheckApi.Persistence/dwCheckApi.Persistence.csproj, dest=/build/dwCheckApi.Persistence/dwCheckApi.Persistence.csproj}" shape="note"];
  "sha256:e338a8120239f16aef8f4e45a421e7ce2cb30fa3d17d4981b3ef79ec2da4215d" [label="copy{src=/dwCheckApi.Tests/dwCheckApi.Tests.csproj, dest=/build/dwCheckApi.Tests/dwCheckApi.Tests.csproj}" shape="note"];
  "sha256:d6c8ce6b54a038598cc2fa0d8c2624d697035905be21a806848000cd331a8c6b" [label="copy{src=/dwCheckApi/dwCheckApi.csproj, dest=/build/dwCheckApi/dwCheckApi.csproj}" shape="note"];
  "sha256:8d7a81fc71bc2f8b39cf910bc7121bdd859fb1fbf11af79d87e30c033e40b7f5" [label="copy{src=/global.json, dest=/build/global.json}" shape="note"];
  "sha256:5ea85845f8788d320b2dc8dc3bc62817ffd21052c3fb2aa4a5ecd4ec65f86922" [label="/bin/sh -c dotnet restore ./dwCheckApi/dwCheckApi.csproj --force --no-cache" shape="box"];
  "sha256:38890b3def0c444dd85c9b8070d81345cb6ee129760a185ff8abf9fb5e548aaa" [label="copy{src=/dwCheckApi.Common, dest=/build/dwCheckApi.Common/}" shape="note"];
  "sha256:819925fcab3cf100661470813796eea422faeb41f0795dc4cfbe279261aa9a4f" [label="copy{src=/dwCheckApi.DAL, dest=/build/dwCheckApi.DAL/}" shape="note"];
  "sha256:6179483e610e46986e5622c13db70fa23a1d76fbee654662c589defe9bdf5c23" [label="copy{src=/dwCheckApi.DTO, dest=/build/dwCheckApi.DTO/}" shape="note"];
  "sha256:27b46a9eac6d716617f415180f6ed63d0a5f7f5b203634d185483c5378cf113c" [label="copy{src=/dwCheckApi.Entities, dest=/build/dwCheckApi.Entities/}" shape="note"];
  "sha256:bafdfae2a5da7004ac01599f6e2c8406894286001545000ef626e77a3d584bc9" [label="copy{src=/dwCheckApi.Persistence, dest=/build/dwCheckApi.Persistence/}" shape="note"];
  "sha256:456d65d01ca2aa38d6260fa74dfb4334539b0def872c1226f65762508a4c6bd7" [label="copy{src=/dwCheckApi.Tests, dest=/build/dwCheckApi.Tests/}" shape="note"];
  "sha256:186dd32e26c8817a980aa65d851b53138bf087ce28afd170684e8f984cb402fd" [label="copy{src=/dwCheckApi, dest=/build/dwCheckApi/}" shape="note"];
  "sha256:2cc724bc990be3ee91e957df24a6d9fba683272fd24bcdbc53119553df7c82c8" [label="/bin/sh -c dotnet build ./dwCheckApi/dwCheckApi.csproj --configuration Release --no-restore" shape="box"];
  "sha256:ccebb0597b08b41c0f5b665b3e98d02850fab92386f34b219a286ff84b04a6de" [label="mkdir{path=/build/dwCheckApi.Persistence}" shape="note"];
  "sha256:715249c3e7d3bb9e1a139d20399690d9cc07c335aa3c81c99e946c460a3ce205" [label="/bin/sh -c dotnet ef database update" shape="box"];
  "sha256:f43a8157c71c2424eed49f603fb426693d2b862d78b016710c95e9c764849090" [label="mkdir{path=/build}" shape="note"];
  "sha256:99ea297f2599716c3125bcfbdd49c6540734d18cf75b1ec0df8aef789b5e0d63" [label="/bin/sh -c dotnet publish ./dwCheckApi/dwCheckApi.csproj --configuration Release --no-restore --no-build --output \"../dist\"" shape="box"];
  "sha256:9d7253f7d45d4dd35610d9c5614419e2a78cecb182c8c5f3e14a7d99dfd4a0ad" [label="/bin/sh -c cp ./dwCheckApi.Persistence/dwDatabase.db ./dist/dwDatabase.db" shape="box"];
  "sha256:aaec08c78f8899d7c35eb4344a7940feb5ea661f9ba11651ce7375ac79c668ff" [label="copy{src=/build/dist, dest=/app/}" shape="note"];
  "sha256:73ecb2b45d28733407628cfe448caff4a33c2becf2d3608753135e7c376d5588" [label="sha256:73ecb2b45d28733407628cfe448caff4a33c2becf2d3608753135e7c376d5588" shape="plaintext"];
  "sha256:70fb648a87ba583acac3d299aa2f497efd7f3289e590a7123eed3e01f36b8310" -> "sha256:6acbbf3806cd41951689cd887a6d5931edf8cc45f02727b0fb4cc630891ba866" [label=""];
  "sha256:549842472f0921a69e4bcf8a307cb5106bebac349e15500c0e7a86066198219d" -> "sha256:3ae6da3eee2641636246c5214536b887e926bf1c56ce34849c80b5130b4a9225" [label=""];
  "sha256:3ae6da3eee2641636246c5214536b887e926bf1c56ce34849c80b5130b4a9225" -> "sha256:819a2ef23d6dea9285df196911aea95a8f44d764f7d625c124e0c926b0ccf9fe" [label=""];
  "sha256:e7010efafaf0e776657c18faea37f695438edd624b4b4220bd417c5cca3a6c59" -> "sha256:819a2ef23d6dea9285df196911aea95a8f44d764f7d625c124e0c926b0ccf9fe" [label=""];
  "sha256:819a2ef23d6dea9285df196911aea95a8f44d764f7d625c124e0c926b0ccf9fe" -> "sha256:b32fafde86eda91d3c3a9f384673ecc83222f4d2078b6cf2078504fd98376a82" [label=""];
  "sha256:e7010efafaf0e776657c18faea37f695438edd624b4b4220bd417c5cca3a6c59" -> "sha256:b32fafde86eda91d3c3a9f384673ecc83222f4d2078b6cf2078504fd98376a82" [label=""];
  "sha256:b32fafde86eda91d3c3a9f384673ecc83222f4d2078b6cf2078504fd98376a82" -> "sha256:cfd1b2db23cce70f6613b0cfea9c24e5997f17e0f8e565e3a13d8707996e6cd8" [label=""];
  "sha256:e7010efafaf0e776657c18faea37f695438edd624b4b4220bd417c5cca3a6c59" -> "sha256:cfd1b2db23cce70f6613b0cfea9c24e5997f17e0f8e565e3a13d8707996e6cd8" [label=""];
  "sha256:cfd1b2db23cce70f6613b0cfea9c24e5997f17e0f8e565e3a13d8707996e6cd8" -> "sha256:6dc7e2646d675058558eef2ba40ea0cf99eeb516c885689acd2714ceee90e2fe" [label=""];
  "sha256:e7010efafaf0e776657c18faea37f695438edd624b4b4220bd417c5cca3a6c59" -> "sha256:6dc7e2646d675058558eef2ba40ea0cf99eeb516c885689acd2714ceee90e2fe" [label=""];
  "sha256:6dc7e2646d675058558eef2ba40ea0cf99eeb516c885689acd2714ceee90e2fe" -> "sha256:ab3ef9085a3a95284e56e74ca5dfd1c79189e72572d5eb4bbc5048e261b2beca" [label=""];
  "sha256:e7010efafaf0e776657c18faea37f695438edd624b4b4220bd417c5cca3a6c59" -> "sha256:ab3ef9085a3a95284e56e74ca5dfd1c79189e72572d5eb4bbc5048e261b2beca" [label=""];
  "sha256:ab3ef9085a3a95284e56e74ca5dfd1c79189e72572d5eb4bbc5048e261b2beca" -> "sha256:e338a8120239f16aef8f4e45a421e7ce2cb30fa3d17d4981b3ef79ec2da4215d" [label=""];
  "sha256:e7010efafaf0e776657c18faea37f695438edd624b4b4220bd417c5cca3a6c59" -> "sha256:e338a8120239f16aef8f4e45a421e7ce2cb30fa3d17d4981b3ef79ec2da4215d" [label=""];
  "sha256:e338a8120239f16aef8f4e45a421e7ce2cb30fa3d17d4981b3ef79ec2da4215d" -> "sha256:d6c8ce6b54a038598cc2fa0d8c2624d697035905be21a806848000cd331a8c6b" [label=""];
  "sha256:e7010efafaf0e776657c18faea37f695438edd624b4b4220bd417c5cca3a6c59" -> "sha256:d6c8ce6b54a038598cc2fa0d8c2624d697035905be21a806848000cd331a8c6b" [label=""];
  "sha256:d6c8ce6b54a038598cc2fa0d8c2624d697035905be21a806848000cd331a8c6b" -> "sha256:8d7a81fc71bc2f8b39cf910bc7121bdd859fb1fbf11af79d87e30c033e40b7f5" [label=""];
  "sha256:e7010efafaf0e776657c18faea37f695438edd624b4b4220bd417c5cca3a6c59" -> "sha256:8d7a81fc71bc2f8b39cf910bc7121bdd859fb1fbf11af79d87e30c033e40b7f5" [label=""];
  "sha256:8d7a81fc71bc2f8b39cf910bc7121bdd859fb1fbf11af79d87e30c033e40b7f5" -> "sha256:5ea85845f8788d320b2dc8dc3bc62817ffd21052c3fb2aa4a5ecd4ec65f86922" [label=""];
  "sha256:5ea85845f8788d320b2dc8dc3bc62817ffd21052c3fb2aa4a5ecd4ec65f86922" -> "sha256:38890b3def0c444dd85c9b8070d81345cb6ee129760a185ff8abf9fb5e548aaa" [label=""];
  "sha256:e7010efafaf0e776657c18faea37f695438edd624b4b4220bd417c5cca3a6c59" -> "sha256:38890b3def0c444dd85c9b8070d81345cb6ee129760a185ff8abf9fb5e548aaa" [label=""];
  "sha256:38890b3def0c444dd85c9b8070d81345cb6ee129760a185ff8abf9fb5e548aaa" -> "sha256:819925fcab3cf100661470813796eea422faeb41f0795dc4cfbe279261aa9a4f" [label=""];
  "sha256:e7010efafaf0e776657c18faea37f695438edd624b4b4220bd417c5cca3a6c59" -> "sha256:819925fcab3cf100661470813796eea422faeb41f0795dc4cfbe279261aa9a4f" [label=""];
  "sha256:819925fcab3cf100661470813796eea422faeb41f0795dc4cfbe279261aa9a4f" -> "sha256:6179483e610e46986e5622c13db70fa23a1d76fbee654662c589defe9bdf5c23" [label=""];
  "sha256:e7010efafaf0e776657c18faea37f695438edd624b4b4220bd417c5cca3a6c59" -> "sha256:6179483e610e46986e5622c13db70fa23a1d76fbee654662c589defe9bdf5c23" [label=""];
  "sha256:6179483e610e46986e5622c13db70fa23a1d76fbee654662c589defe9bdf5c23" -> "sha256:27b46a9eac6d716617f415180f6ed63d0a5f7f5b203634d185483c5378cf113c" [label=""];
  "sha256:e7010efafaf0e776657c18faea37f695438edd624b4b4220bd417c5cca3a6c59" -> "sha256:27b46a9eac6d716617f415180f6ed63d0a5f7f5b203634d185483c5378cf113c" [label=""];
  "sha256:27b46a9eac6d716617f415180f6ed63d0a5f7f5b203634d185483c5378cf113c" -> "sha256:bafdfae2a5da7004ac01599f6e2c8406894286001545000ef626e77a3d584bc9" [label=""];
  "sha256:e7010efafaf0e776657c18faea37f695438edd624b4b4220bd417c5cca3a6c59" -> "sha256:bafdfae2a5da7004ac01599f6e2c8406894286001545000ef626e77a3d584bc9" [label=""];
  "sha256:bafdfae2a5da7004ac01599f6e2c8406894286001545000ef626e77a3d584bc9" -> "sha256:456d65d01ca2aa38d6260fa74dfb4334539b0def872c1226f65762508a4c6bd7" [label=""];
  "sha256:e7010efafaf0e776657c18faea37f695438edd624b4b4220bd417c5cca3a6c59" -> "sha256:456d65d01ca2aa38d6260fa74dfb4334539b0def872c1226f65762508a4c6bd7" [label=""];
  "sha256:456d65d01ca2aa38d6260fa74dfb4334539b0def872c1226f65762508a4c6bd7" -> "sha256:186dd32e26c8817a980aa65d851b53138bf087ce28afd170684e8f984cb402fd" [label=""];
  "sha256:e7010efafaf0e776657c18faea37f695438edd624b4b4220bd417c5cca3a6c59" -> "sha256:186dd32e26c8817a980aa65d851b53138bf087ce28afd170684e8f984cb402fd" [label=""];
  "sha256:186dd32e26c8817a980aa65d851b53138bf087ce28afd170684e8f984cb402fd" -> "sha256:2cc724bc990be3ee91e957df24a6d9fba683272fd24bcdbc53119553df7c82c8" [label=""];
  "sha256:2cc724bc990be3ee91e957df24a6d9fba683272fd24bcdbc53119553df7c82c8" -> "sha256:ccebb0597b08b41c0f5b665b3e98d02850fab92386f34b219a286ff84b04a6de" [label=""];
  "sha256:ccebb0597b08b41c0f5b665b3e98d02850fab92386f34b219a286ff84b04a6de" -> "sha256:715249c3e7d3bb9e1a139d20399690d9cc07c335aa3c81c99e946c460a3ce205" [label=""];
  "sha256:715249c3e7d3bb9e1a139d20399690d9cc07c335aa3c81c99e946c460a3ce205" -> "sha256:f43a8157c71c2424eed49f603fb426693d2b862d78b016710c95e9c764849090" [label=""];
  "sha256:f43a8157c71c2424eed49f603fb426693d2b862d78b016710c95e9c764849090" -> "sha256:99ea297f2599716c3125bcfbdd49c6540734d18cf75b1ec0df8aef789b5e0d63" [label=""];
  "sha256:99ea297f2599716c3125bcfbdd49c6540734d18cf75b1ec0df8aef789b5e0d63" -> "sha256:9d7253f7d45d4dd35610d9c5614419e2a78cecb182c8c5f3e14a7d99dfd4a0ad" [label=""];
  "sha256:6acbbf3806cd41951689cd887a6d5931edf8cc45f02727b0fb4cc630891ba866" -> "sha256:aaec08c78f8899d7c35eb4344a7940feb5ea661f9ba11651ce7375ac79c668ff" [label=""];
  "sha256:9d7253f7d45d4dd35610d9c5614419e2a78cecb182c8c5f3e14a7d99dfd4a0ad" -> "sha256:aaec08c78f8899d7c35eb4344a7940feb5ea661f9ba11651ce7375ac79c668ff" [label=""];
  "sha256:aaec08c78f8899d7c35eb4344a7940feb5ea661f9ba11651ce7375ac79c668ff" -> "sha256:73ecb2b45d28733407628cfe448caff4a33c2becf2d3608753135e7c376d5588" [label=""];
}
