[app/sources/273115659.Dockerfile]
digraph {
  "sha256:756ff2b325978c4b8a806ac4d785a00b0e1621b79a4c319dfa2d87871532032e" [label="docker-image://docker.io/library/node:11.6-slim" shape="ellipse"];
  "sha256:888829a1ab34bfb07ada60d8c705fcc24affd3a1718f8144e8fcc800e76bcf80" [label="local://context" shape="ellipse"];
  "sha256:b33cc861df57a096c79c2de8d18274ab1bd36a5111095a2c559179289aea6a58" [label="copy{src=/Source/Navigation, dest=/CBS/Source/Navigation}" shape="note"];
  "sha256:f392723ced21684d7af800bce1f9311c1e7f5557bcddc41659d2c1f8763232d8" [label="copy{src=/Source/Reporting/Web/package.json, dest=/CBS/Source/Reporting/Web/package.json}" shape="note"];
  "sha256:6039acb7e4c74b8ed52cf065aba2716aa5cc4b8a37e23b8a113628a1c1d9221b" [label="mkdir{path=/CBS/Source/Reporting/Web}" shape="note"];
  "sha256:06ac18093fa0332bd6befd8c8223e7dfa049611da9d640e2db65144aaf07dbb1" [label="/bin/sh -c yarn install" shape="box"];
  "sha256:2790eb99ba9dfed56c39dd24ccac690af42bc450a326a879e23a114afadcd6f8" [label="copy{src=/Source/Reporting/Web, dest=/CBS/Source/Reporting/Web}" shape="note"];
  "sha256:8db6a3d405179d76d7565ebb55840c7b214ff44b9485b7ff889e7f93ba54afa0" [label="mkdir{path=/CBS/Source/Reporting/Web}" shape="note"];
  "sha256:9c8f3e72eeb97cfa8f6e7a9eb2fbd573be00936db25c9941f4aab295a0472427" [label="/bin/sh -c npm run ${mode}" shape="box"];
  "sha256:adbe25e08394bec4ceb1f818afcc3d9e2dd7e11d5fb23a1eb94fa0b9ddd57db6" [label="docker-image://docker.io/microsoft/dotnet:2.2-aspnetcore-runtime-bionic" shape="ellipse"];
  "sha256:c5c2dc0f7280c61d4e7162c78ab52eb0e8e53d5f5b46eadf4394458643cf51d3" [label="copy{src=/CBS/Source/Reporting/Web/dist, dest=/CBS/Core/wwwroot}" shape="note"];
  "sha256:d051e652b17fb347af9ef59c963f44da33d169d5b22a39aed386784636569b06" [label="copy{src=/Source/Reporting/bounded-context.json, dest=/CBS/bounded-context.json}" shape="note"];
  "sha256:5b12b69b0f9e410b38a4ba942d5de09b0c2369cd5c40a097791b57fafc3a4939" [label="docker-image://docker.io/microsoft/dotnet:2.2-sdk-bionic" shape="ellipse"];
  "sha256:76eff25540a0198f3548e26f2d977b4fd4cbafb51520db5dae94c39a0d6a1bad" [label="copy{src=/NuGet.Config, dest=/CBS/Source/NuGet.Config}" shape="note"];
  "sha256:7c8f12a5a23d4a73f73cd6ca74e4d1541b7f4241c5b2238b801f080293d7aca9" [label="copy{src=/Source/Reporting/Reporting.sln, dest=/CBS/Source/Reporting/Reporting.sln}" shape="note"];
  "sha256:461d4c8341d37419b5157e31d8042c6425b4566a7f43334900b9efc6473d9b31" [label="copy{src=/Source/Reporting/Concepts/Concepts.csproj, dest=/CBS/Source/Reporting/Concepts/Concepts.csproj}" shape="note"];
  "sha256:3948b6555bce029fe7bc1cc85fd47ad9ffd484faee1c9ab71d54ad61a48fd864" [label="copy{src=/Source/Reporting/Core/Core.csproj, dest=/CBS/Source/Reporting/Core/Core.csproj}" shape="note"];
  "sha256:ef6d5bf6355938db30161d5047053adce02ba76482e323268dd6cf324efb49e3" [label="copy{src=/Source/Reporting/Domain/Domain.csproj, dest=/CBS/Source/Reporting/Domain/Domain.csproj}" shape="note"];
  "sha256:d51ec1c521a278c98535dd93e02143517d16a249f8099cc28efa006482f18979" [label="copy{src=/Source/Reporting/Domain.Specs/Domain.Specs.csproj, dest=/CBS/Source/Reporting/Domain.Specs/Domain.Specs.csproj}" shape="note"];
  "sha256:933ef8610f0a5c64249c48253083ce16639ccee5874e9edd543c286b855a51c5" [label="copy{src=/Source/Reporting/Events/Events.csproj, dest=/CBS/Source/Reporting/Events/Events.csproj}" shape="note"];
  "sha256:981ecc1f8471e31adedf4f748216bef95f122b7b10822141ba54f5f83a3d47ff" [label="copy{src=/Source/Reporting/Events.Admin/Events.Admin.csproj, dest=/CBS/Source/Reporting/Events.Admin/Events.Admin.csproj}" shape="note"];
  "sha256:09ce4eff9fc5ecf28557ef428fb6ea83120acf01da7d6bc978744f3e968c3ff2" [label="copy{src=/Source/Reporting/Events.NotificationGateway/Events.NotificationGateway.csproj, dest=/CBS/Source/Reporting/Events.NotificationGateway/Events.NotificationGateway.csproj}" shape="note"];
  "sha256:99f8b5928b2f4d115e44305695089abd20f9993891250bdc3a76edfeb0a4777e" [label="copy{src=/Source/Reporting/Policies/Policies.csproj, dest=/CBS/Source/Reporting/Policies/Policies.csproj}" shape="note"];
  "sha256:2ddc2f319657ad2091c2e606b91245fceebcc5e01584074fbc7ddbe789a4f999" [label="copy{src=/Source/Reporting/Policies.Specs/Policies.Specs.csproj, dest=/CBS/Source/Reporting/Policies.Specs/Policies.Specs.csproj}" shape="note"];
  "sha256:295a364c39f5fd566a331e4864c9417cb20c5fa16dad9850b046838e164776c7" [label="copy{src=/Source/Reporting/Read/Read.csproj, dest=/CBS/Source/Reporting/Read/Read.csproj}" shape="note"];
  "sha256:4ce98af827b1071793d28c505dbe95b112269eff12a277f3a30c1c822ae8d478" [label="copy{src=/Source/Reporting/Read.Specs/Read.Specs.csproj, dest=/CBS/Source/Reporting/Read.Specs/Read.Specs.csproj}" shape="note"];
  "sha256:0b616c1c1f11afffb5ccc3bc6b7dd76c88300d5cbfde6d0cd680472cc5e2ee51" [label="copy{src=/Source/Reporting/Rules/Rules.csproj, dest=/CBS/Source/Reporting/Rules/Rules.csproj}" shape="note"];
  "sha256:894c6b6d5f5aaac6d8af62693a8425c2ad9c663a07090f8dae1e7157226e1580" [label="copy{src=/Source/Reporting/Rules.Specs/Rules.Specs.csproj, dest=/CBS/Source/Reporting/Rules.Specs/Rules.Specs.csproj}" shape="note"];
  "sha256:4bf57e656468bdd560d46ad7c1a5dca1bb9dbbf273be7aa5b8ffd3903b2053c2" [label="mkdir{path=/CBS/Source/Reporting}" shape="note"];
  "sha256:a874e3be0a91c419dd288e757779eca1ff3e5f68cb9e2b2b0819e69a36d5523b" [label="/bin/sh -c dotnet restore" shape="box"];
  "sha256:274d1a87626ed06249c26ded48452a023ed06899adf3b5a592ffb77314198aba" [label="copy{src=/Source/Reporting, dest=/CBS/Source/Reporting}" shape="note"];
  "sha256:41f529481bc29d9c94be64b3d95dbff42d94918b21dcc4dfab01e3449f2a9348" [label="mkdir{path=/CBS/Source/Reporting/Core}" shape="note"];
  "sha256:43b7576d935d7bc4a1ad7fe043d61532518be139a7826c945500c6d41a3cb038" [label="/bin/sh -c dotnet publish --no-restore -c Release -o out" shape="box"];
  "sha256:7aa740b1a1d451f7dcd5e148db70c0c38ee66d955286710d3c9e4a12cbf8e62c" [label="copy{src=/CBS/Source/Reporting/Core/out, dest=/CBS/Core/}" shape="note"];
  "sha256:60b8663ec6dcb3f2bdce5d67b7e96fdc89925f77e89bfa81a855070a76aabcb2" [label="copy{src=/CBS/Source/Reporting/Core/.dolittle, dest=/CBS/Core/.dolittle}" shape="note"];
  "sha256:e260cc70a4afba9226eabb9b090c16cd39a7a26a2e656ea0935ad454490c3baf" [label="mkdir{path=/CBS/Core}" shape="note"];
  "sha256:71025b1ffb3893d81d220884b0b0156eafc124c594d9bbb2b07ac302d8842ecf" [label="sha256:71025b1ffb3893d81d220884b0b0156eafc124c594d9bbb2b07ac302d8842ecf" shape="plaintext"];
  "sha256:756ff2b325978c4b8a806ac4d785a00b0e1621b79a4c319dfa2d87871532032e" -> "sha256:b33cc861df57a096c79c2de8d18274ab1bd36a5111095a2c559179289aea6a58" [label=""];
  "sha256:888829a1ab34bfb07ada60d8c705fcc24affd3a1718f8144e8fcc800e76bcf80" -> "sha256:b33cc861df57a096c79c2de8d18274ab1bd36a5111095a2c559179289aea6a58" [label=""];
  "sha256:b33cc861df57a096c79c2de8d18274ab1bd36a5111095a2c559179289aea6a58" -> "sha256:f392723ced21684d7af800bce1f9311c1e7f5557bcddc41659d2c1f8763232d8" [label=""];
  "sha256:888829a1ab34bfb07ada60d8c705fcc24affd3a1718f8144e8fcc800e76bcf80" -> "sha256:f392723ced21684d7af800bce1f9311c1e7f5557bcddc41659d2c1f8763232d8" [label=""];
  "sha256:f392723ced21684d7af800bce1f9311c1e7f5557bcddc41659d2c1f8763232d8" -> "sha256:6039acb7e4c74b8ed52cf065aba2716aa5cc4b8a37e23b8a113628a1c1d9221b" [label=""];
  "sha256:6039acb7e4c74b8ed52cf065aba2716aa5cc4b8a37e23b8a113628a1c1d9221b" -> "sha256:06ac18093fa0332bd6befd8c8223e7dfa049611da9d640e2db65144aaf07dbb1" [label=""];
  "sha256:06ac18093fa0332bd6befd8c8223e7dfa049611da9d640e2db65144aaf07dbb1" -> "sha256:2790eb99ba9dfed56c39dd24ccac690af42bc450a326a879e23a114afadcd6f8" [label=""];
  "sha256:888829a1ab34bfb07ada60d8c705fcc24affd3a1718f8144e8fcc800e76bcf80" -> "sha256:2790eb99ba9dfed56c39dd24ccac690af42bc450a326a879e23a114afadcd6f8" [label=""];
  "sha256:2790eb99ba9dfed56c39dd24ccac690af42bc450a326a879e23a114afadcd6f8" -> "sha256:8db6a3d405179d76d7565ebb55840c7b214ff44b9485b7ff889e7f93ba54afa0" [label=""];
  "sha256:8db6a3d405179d76d7565ebb55840c7b214ff44b9485b7ff889e7f93ba54afa0" -> "sha256:9c8f3e72eeb97cfa8f6e7a9eb2fbd573be00936db25c9941f4aab295a0472427" [label=""];
  "sha256:adbe25e08394bec4ceb1f818afcc3d9e2dd7e11d5fb23a1eb94fa0b9ddd57db6" -> "sha256:c5c2dc0f7280c61d4e7162c78ab52eb0e8e53d5f5b46eadf4394458643cf51d3" [label=""];
  "sha256:9c8f3e72eeb97cfa8f6e7a9eb2fbd573be00936db25c9941f4aab295a0472427" -> "sha256:c5c2dc0f7280c61d4e7162c78ab52eb0e8e53d5f5b46eadf4394458643cf51d3" [label=""];
  "sha256:c5c2dc0f7280c61d4e7162c78ab52eb0e8e53d5f5b46eadf4394458643cf51d3" -> "sha256:d051e652b17fb347af9ef59c963f44da33d169d5b22a39aed386784636569b06" [label=""];
  "sha256:888829a1ab34bfb07ada60d8c705fcc24affd3a1718f8144e8fcc800e76bcf80" -> "sha256:d051e652b17fb347af9ef59c963f44da33d169d5b22a39aed386784636569b06" [label=""];
  "sha256:5b12b69b0f9e410b38a4ba942d5de09b0c2369cd5c40a097791b57fafc3a4939" -> "sha256:76eff25540a0198f3548e26f2d977b4fd4cbafb51520db5dae94c39a0d6a1bad" [label=""];
  "sha256:888829a1ab34bfb07ada60d8c705fcc24affd3a1718f8144e8fcc800e76bcf80" -> "sha256:76eff25540a0198f3548e26f2d977b4fd4cbafb51520db5dae94c39a0d6a1bad" [label=""];
  "sha256:76eff25540a0198f3548e26f2d977b4fd4cbafb51520db5dae94c39a0d6a1bad" -> "sha256:7c8f12a5a23d4a73f73cd6ca74e4d1541b7f4241c5b2238b801f080293d7aca9" [label=""];
  "sha256:888829a1ab34bfb07ada60d8c705fcc24affd3a1718f8144e8fcc800e76bcf80" -> "sha256:7c8f12a5a23d4a73f73cd6ca74e4d1541b7f4241c5b2238b801f080293d7aca9" [label=""];
  "sha256:7c8f12a5a23d4a73f73cd6ca74e4d1541b7f4241c5b2238b801f080293d7aca9" -> "sha256:461d4c8341d37419b5157e31d8042c6425b4566a7f43334900b9efc6473d9b31" [label=""];
  "sha256:888829a1ab34bfb07ada60d8c705fcc24affd3a1718f8144e8fcc800e76bcf80" -> "sha256:461d4c8341d37419b5157e31d8042c6425b4566a7f43334900b9efc6473d9b31" [label=""];
  "sha256:461d4c8341d37419b5157e31d8042c6425b4566a7f43334900b9efc6473d9b31" -> "sha256:3948b6555bce029fe7bc1cc85fd47ad9ffd484faee1c9ab71d54ad61a48fd864" [label=""];
  "sha256:888829a1ab34bfb07ada60d8c705fcc24affd3a1718f8144e8fcc800e76bcf80" -> "sha256:3948b6555bce029fe7bc1cc85fd47ad9ffd484faee1c9ab71d54ad61a48fd864" [label=""];
  "sha256:3948b6555bce029fe7bc1cc85fd47ad9ffd484faee1c9ab71d54ad61a48fd864" -> "sha256:ef6d5bf6355938db30161d5047053adce02ba76482e323268dd6cf324efb49e3" [label=""];
  "sha256:888829a1ab34bfb07ada60d8c705fcc24affd3a1718f8144e8fcc800e76bcf80" -> "sha256:ef6d5bf6355938db30161d5047053adce02ba76482e323268dd6cf324efb49e3" [label=""];
  "sha256:ef6d5bf6355938db30161d5047053adce02ba76482e323268dd6cf324efb49e3" -> "sha256:d51ec1c521a278c98535dd93e02143517d16a249f8099cc28efa006482f18979" [label=""];
  "sha256:888829a1ab34bfb07ada60d8c705fcc24affd3a1718f8144e8fcc800e76bcf80" -> "sha256:d51ec1c521a278c98535dd93e02143517d16a249f8099cc28efa006482f18979" [label=""];
  "sha256:d51ec1c521a278c98535dd93e02143517d16a249f8099cc28efa006482f18979" -> "sha256:933ef8610f0a5c64249c48253083ce16639ccee5874e9edd543c286b855a51c5" [label=""];
  "sha256:888829a1ab34bfb07ada60d8c705fcc24affd3a1718f8144e8fcc800e76bcf80" -> "sha256:933ef8610f0a5c64249c48253083ce16639ccee5874e9edd543c286b855a51c5" [label=""];
  "sha256:933ef8610f0a5c64249c48253083ce16639ccee5874e9edd543c286b855a51c5" -> "sha256:981ecc1f8471e31adedf4f748216bef95f122b7b10822141ba54f5f83a3d47ff" [label=""];
  "sha256:888829a1ab34bfb07ada60d8c705fcc24affd3a1718f8144e8fcc800e76bcf80" -> "sha256:981ecc1f8471e31adedf4f748216bef95f122b7b10822141ba54f5f83a3d47ff" [label=""];
  "sha256:981ecc1f8471e31adedf4f748216bef95f122b7b10822141ba54f5f83a3d47ff" -> "sha256:09ce4eff9fc5ecf28557ef428fb6ea83120acf01da7d6bc978744f3e968c3ff2" [label=""];
  "sha256:888829a1ab34bfb07ada60d8c705fcc24affd3a1718f8144e8fcc800e76bcf80" -> "sha256:09ce4eff9fc5ecf28557ef428fb6ea83120acf01da7d6bc978744f3e968c3ff2" [label=""];
  "sha256:09ce4eff9fc5ecf28557ef428fb6ea83120acf01da7d6bc978744f3e968c3ff2" -> "sha256:99f8b5928b2f4d115e44305695089abd20f9993891250bdc3a76edfeb0a4777e" [label=""];
  "sha256:888829a1ab34bfb07ada60d8c705fcc24affd3a1718f8144e8fcc800e76bcf80" -> "sha256:99f8b5928b2f4d115e44305695089abd20f9993891250bdc3a76edfeb0a4777e" [label=""];
  "sha256:99f8b5928b2f4d115e44305695089abd20f9993891250bdc3a76edfeb0a4777e" -> "sha256:2ddc2f319657ad2091c2e606b91245fceebcc5e01584074fbc7ddbe789a4f999" [label=""];
  "sha256:888829a1ab34bfb07ada60d8c705fcc24affd3a1718f8144e8fcc800e76bcf80" -> "sha256:2ddc2f319657ad2091c2e606b91245fceebcc5e01584074fbc7ddbe789a4f999" [label=""];
  "sha256:2ddc2f319657ad2091c2e606b91245fceebcc5e01584074fbc7ddbe789a4f999" -> "sha256:295a364c39f5fd566a331e4864c9417cb20c5fa16dad9850b046838e164776c7" [label=""];
  "sha256:888829a1ab34bfb07ada60d8c705fcc24affd3a1718f8144e8fcc800e76bcf80" -> "sha256:295a364c39f5fd566a331e4864c9417cb20c5fa16dad9850b046838e164776c7" [label=""];
  "sha256:295a364c39f5fd566a331e4864c9417cb20c5fa16dad9850b046838e164776c7" -> "sha256:4ce98af827b1071793d28c505dbe95b112269eff12a277f3a30c1c822ae8d478" [label=""];
  "sha256:888829a1ab34bfb07ada60d8c705fcc24affd3a1718f8144e8fcc800e76bcf80" -> "sha256:4ce98af827b1071793d28c505dbe95b112269eff12a277f3a30c1c822ae8d478" [label=""];
  "sha256:4ce98af827b1071793d28c505dbe95b112269eff12a277f3a30c1c822ae8d478" -> "sha256:0b616c1c1f11afffb5ccc3bc6b7dd76c88300d5cbfde6d0cd680472cc5e2ee51" [label=""];
  "sha256:888829a1ab34bfb07ada60d8c705fcc24affd3a1718f8144e8fcc800e76bcf80" -> "sha256:0b616c1c1f11afffb5ccc3bc6b7dd76c88300d5cbfde6d0cd680472cc5e2ee51" [label=""];
  "sha256:0b616c1c1f11afffb5ccc3bc6b7dd76c88300d5cbfde6d0cd680472cc5e2ee51" -> "sha256:894c6b6d5f5aaac6d8af62693a8425c2ad9c663a07090f8dae1e7157226e1580" [label=""];
  "sha256:888829a1ab34bfb07ada60d8c705fcc24affd3a1718f8144e8fcc800e76bcf80" -> "sha256:894c6b6d5f5aaac6d8af62693a8425c2ad9c663a07090f8dae1e7157226e1580" [label=""];
  "sha256:894c6b6d5f5aaac6d8af62693a8425c2ad9c663a07090f8dae1e7157226e1580" -> "sha256:4bf57e656468bdd560d46ad7c1a5dca1bb9dbbf273be7aa5b8ffd3903b2053c2" [label=""];
  "sha256:4bf57e656468bdd560d46ad7c1a5dca1bb9dbbf273be7aa5b8ffd3903b2053c2" -> "sha256:a874e3be0a91c419dd288e757779eca1ff3e5f68cb9e2b2b0819e69a36d5523b" [label=""];
  "sha256:a874e3be0a91c419dd288e757779eca1ff3e5f68cb9e2b2b0819e69a36d5523b" -> "sha256:274d1a87626ed06249c26ded48452a023ed06899adf3b5a592ffb77314198aba" [label=""];
  "sha256:888829a1ab34bfb07ada60d8c705fcc24affd3a1718f8144e8fcc800e76bcf80" -> "sha256:274d1a87626ed06249c26ded48452a023ed06899adf3b5a592ffb77314198aba" [label=""];
  "sha256:274d1a87626ed06249c26ded48452a023ed06899adf3b5a592ffb77314198aba" -> "sha256:41f529481bc29d9c94be64b3d95dbff42d94918b21dcc4dfab01e3449f2a9348" [label=""];
  "sha256:41f529481bc29d9c94be64b3d95dbff42d94918b21dcc4dfab01e3449f2a9348" -> "sha256:43b7576d935d7bc4a1ad7fe043d61532518be139a7826c945500c6d41a3cb038" [label=""];
  "sha256:d051e652b17fb347af9ef59c963f44da33d169d5b22a39aed386784636569b06" -> "sha256:7aa740b1a1d451f7dcd5e148db70c0c38ee66d955286710d3c9e4a12cbf8e62c" [label=""];
  "sha256:43b7576d935d7bc4a1ad7fe043d61532518be139a7826c945500c6d41a3cb038" -> "sha256:7aa740b1a1d451f7dcd5e148db70c0c38ee66d955286710d3c9e4a12cbf8e62c" [label=""];
  "sha256:7aa740b1a1d451f7dcd5e148db70c0c38ee66d955286710d3c9e4a12cbf8e62c" -> "sha256:60b8663ec6dcb3f2bdce5d67b7e96fdc89925f77e89bfa81a855070a76aabcb2" [label=""];
  "sha256:43b7576d935d7bc4a1ad7fe043d61532518be139a7826c945500c6d41a3cb038" -> "sha256:60b8663ec6dcb3f2bdce5d67b7e96fdc89925f77e89bfa81a855070a76aabcb2" [label=""];
  "sha256:60b8663ec6dcb3f2bdce5d67b7e96fdc89925f77e89bfa81a855070a76aabcb2" -> "sha256:e260cc70a4afba9226eabb9b090c16cd39a7a26a2e656ea0935ad454490c3baf" [label=""];
  "sha256:e260cc70a4afba9226eabb9b090c16cd39a7a26a2e656ea0935ad454490c3baf" -> "sha256:71025b1ffb3893d81d220884b0b0156eafc124c594d9bbb2b07ac302d8842ecf" [label=""];
}

