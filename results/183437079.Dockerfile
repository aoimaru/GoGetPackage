[app/sources/183437079.Dockerfile]
digraph {
  "sha256:83df7c4b8a75cbcccec9a1154d2b20f3fb7c65f4da953fbb50f4a2a93b184e1b" [label="docker-image://mcr.microsoft.com/dotnet/core/sdk:2.2.105@sha256:7d8256eead49252ac2de7079268659102f44a6e40e7890fec2a7633d0b374470" shape="ellipse"];
  "sha256:95ab526ce18d2d2f365715ada2d2fdbf5799ba297396806e174606fd39e56c53" [label="mkdir{path=/app}" shape="note"];
  "sha256:f28042c404bfb4eff97f99c0ad15cbecb9b5da95ee5be026f268f43a04bd2cc4" [label="local://context" shape="ellipse"];
  "sha256:262432aaea2303772ad2d5356a3ae342a11b97e2f9f95ffbd5dc4a680b53a84a" [label="copy{src=/*.sln, dest=/app/},copy{src=/NuGet.config, dest=/app/}" shape="note"];
  "sha256:e1384f36d13782211cbbdb84d48b6f450cc1058c688be50272d8e9613628de12" [label="copy{src=/*/*.props, dest=/app/}" shape="note"];
  "sha256:e7bdeef86eeafa6ad82c513746b384137a964c6c607bf1300f9e9b512c0d6803" [label="copy{src=/LICENSE.txt, dest=/app/LICENSE.txt}" shape="note"];
  "sha256:864210416c93ba8f81ab0661cdabd2b54b484387a5f2e709ad1abaddaa9e32c3" [label="copy{src=/src/*/*.csproj, dest=/app/}" shape="note"];
  "sha256:f7e3bee25c3340da61eb3c59fba4eb23dd906f462cbfc36fa45315340fa6a4c9" [label="/bin/sh -c for file in $(ls *.csproj); do mkdir -p src/${file%.*}/ && mv $file src/${file%.*}/; done" shape="box"];
  "sha256:0e8ada597f8e65b56ccb0d3c5196ab641c87a3c2e6090dc94587e50a8a95c267" [label="copy{src=/samples/*/*.csproj, dest=/app/}" shape="note"];
  "sha256:a982761e3ce821ef76b8e839749ddf8d436f52fc325d7da38660e790560d1467" [label="/bin/sh -c for file in $(ls *.csproj); do mkdir -p samples/${file%.*}/ && mv $file samples/${file%.*}/; done" shape="box"];
  "sha256:992419be9182fa5dc8215b259d279cfeceea76f4082945ea1c0768874004d4a0" [label="copy{src=/tests/*/*.csproj, dest=/app/}" shape="note"];
  "sha256:1dc8858aaf5c7f9e08947a932a23f4dc630fdbdf56021488a89f8703c2622d83" [label="/bin/sh -c for file in $(ls *.csproj); do mkdir -p tests/${file%.*}/ && mv $file tests/${file%.*}/; done" shape="box"];
  "sha256:6a2642119d8a4d6c9f2d9cea19ff3052029b5c3436ca81e89070ebd9abb98c6c" [label="/bin/sh -c dotnet restore" shape="box"];
  "sha256:7c58361be0229bf72aaf09ea44419d20828f16d86ea3ac09d65d770b7ec007c7" [label="copy{src=/, dest=/app/}" shape="note"];
  "sha256:6d99b26fda89809c985ccac61958489809b9ea9abea66c64b74d75e0ded03907" [label="/bin/sh -c dotnet build --version-suffix $VERSION_SUFFIX -c Release" shape="box"];
  "sha256:a87bdfb478af48ae537d597c8ccb7b1d31bf07feb26015d0500c48628b3d476a" [label="mkdir{path=/app}" shape="note"];
  "sha256:32655fe54746144a7a3d207ca3f13d83259fe8858d4a0e8d1935531657fde4c0" [label="mkdir{path=/app}" shape="note"];
  "sha256:074ada05f42be194c39f4ede4f06835c00b34379da7229fc64c82052115a6406" [label="sha256:074ada05f42be194c39f4ede4f06835c00b34379da7229fc64c82052115a6406" shape="plaintext"];
  "sha256:83df7c4b8a75cbcccec9a1154d2b20f3fb7c65f4da953fbb50f4a2a93b184e1b" -> "sha256:95ab526ce18d2d2f365715ada2d2fdbf5799ba297396806e174606fd39e56c53" [label=""];
  "sha256:95ab526ce18d2d2f365715ada2d2fdbf5799ba297396806e174606fd39e56c53" -> "sha256:262432aaea2303772ad2d5356a3ae342a11b97e2f9f95ffbd5dc4a680b53a84a" [label=""];
  "sha256:f28042c404bfb4eff97f99c0ad15cbecb9b5da95ee5be026f268f43a04bd2cc4" -> "sha256:262432aaea2303772ad2d5356a3ae342a11b97e2f9f95ffbd5dc4a680b53a84a" [label=""];
  "sha256:262432aaea2303772ad2d5356a3ae342a11b97e2f9f95ffbd5dc4a680b53a84a" -> "sha256:e1384f36d13782211cbbdb84d48b6f450cc1058c688be50272d8e9613628de12" [label=""];
  "sha256:f28042c404bfb4eff97f99c0ad15cbecb9b5da95ee5be026f268f43a04bd2cc4" -> "sha256:e1384f36d13782211cbbdb84d48b6f450cc1058c688be50272d8e9613628de12" [label=""];
  "sha256:e1384f36d13782211cbbdb84d48b6f450cc1058c688be50272d8e9613628de12" -> "sha256:e7bdeef86eeafa6ad82c513746b384137a964c6c607bf1300f9e9b512c0d6803" [label=""];
  "sha256:f28042c404bfb4eff97f99c0ad15cbecb9b5da95ee5be026f268f43a04bd2cc4" -> "sha256:e7bdeef86eeafa6ad82c513746b384137a964c6c607bf1300f9e9b512c0d6803" [label=""];
  "sha256:e7bdeef86eeafa6ad82c513746b384137a964c6c607bf1300f9e9b512c0d6803" -> "sha256:864210416c93ba8f81ab0661cdabd2b54b484387a5f2e709ad1abaddaa9e32c3" [label=""];
  "sha256:f28042c404bfb4eff97f99c0ad15cbecb9b5da95ee5be026f268f43a04bd2cc4" -> "sha256:864210416c93ba8f81ab0661cdabd2b54b484387a5f2e709ad1abaddaa9e32c3" [label=""];
  "sha256:864210416c93ba8f81ab0661cdabd2b54b484387a5f2e709ad1abaddaa9e32c3" -> "sha256:f7e3bee25c3340da61eb3c59fba4eb23dd906f462cbfc36fa45315340fa6a4c9" [label=""];
  "sha256:f7e3bee25c3340da61eb3c59fba4eb23dd906f462cbfc36fa45315340fa6a4c9" -> "sha256:0e8ada597f8e65b56ccb0d3c5196ab641c87a3c2e6090dc94587e50a8a95c267" [label=""];
  "sha256:f28042c404bfb4eff97f99c0ad15cbecb9b5da95ee5be026f268f43a04bd2cc4" -> "sha256:0e8ada597f8e65b56ccb0d3c5196ab641c87a3c2e6090dc94587e50a8a95c267" [label=""];
  "sha256:0e8ada597f8e65b56ccb0d3c5196ab641c87a3c2e6090dc94587e50a8a95c267" -> "sha256:a982761e3ce821ef76b8e839749ddf8d436f52fc325d7da38660e790560d1467" [label=""];
  "sha256:a982761e3ce821ef76b8e839749ddf8d436f52fc325d7da38660e790560d1467" -> "sha256:992419be9182fa5dc8215b259d279cfeceea76f4082945ea1c0768874004d4a0" [label=""];
  "sha256:f28042c404bfb4eff97f99c0ad15cbecb9b5da95ee5be026f268f43a04bd2cc4" -> "sha256:992419be9182fa5dc8215b259d279cfeceea76f4082945ea1c0768874004d4a0" [label=""];
  "sha256:992419be9182fa5dc8215b259d279cfeceea76f4082945ea1c0768874004d4a0" -> "sha256:1dc8858aaf5c7f9e08947a932a23f4dc630fdbdf56021488a89f8703c2622d83" [label=""];
  "sha256:1dc8858aaf5c7f9e08947a932a23f4dc630fdbdf56021488a89f8703c2622d83" -> "sha256:6a2642119d8a4d6c9f2d9cea19ff3052029b5c3436ca81e89070ebd9abb98c6c" [label=""];
  "sha256:6a2642119d8a4d6c9f2d9cea19ff3052029b5c3436ca81e89070ebd9abb98c6c" -> "sha256:7c58361be0229bf72aaf09ea44419d20828f16d86ea3ac09d65d770b7ec007c7" [label=""];
  "sha256:f28042c404bfb4eff97f99c0ad15cbecb9b5da95ee5be026f268f43a04bd2cc4" -> "sha256:7c58361be0229bf72aaf09ea44419d20828f16d86ea3ac09d65d770b7ec007c7" [label=""];
  "sha256:7c58361be0229bf72aaf09ea44419d20828f16d86ea3ac09d65d770b7ec007c7" -> "sha256:6d99b26fda89809c985ccac61958489809b9ea9abea66c64b74d75e0ded03907" [label=""];
  "sha256:6d99b26fda89809c985ccac61958489809b9ea9abea66c64b74d75e0ded03907" -> "sha256:a87bdfb478af48ae537d597c8ccb7b1d31bf07feb26015d0500c48628b3d476a" [label=""];
  "sha256:a87bdfb478af48ae537d597c8ccb7b1d31bf07feb26015d0500c48628b3d476a" -> "sha256:32655fe54746144a7a3d207ca3f13d83259fe8858d4a0e8d1935531657fde4c0" [label=""];
  "sha256:32655fe54746144a7a3d207ca3f13d83259fe8858d4a0e8d1935531657fde4c0" -> "sha256:074ada05f42be194c39f4ede4f06835c00b34379da7229fc64c82052115a6406" [label=""];
}

