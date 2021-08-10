[app/sources/406150086.Dockerfile]
digraph {
  "sha256:efbccbe63bb58047443a0ad856eaf62525ac2b1faafb01cef77491556c0cebbb" [label="docker-image://docker.io/microsoft/dotnet:2.2-aspnetcore-runtime" shape="ellipse"];
  "sha256:c8906744f1a1a205eb232c9e896d9c8b6a8984f1aa9322b7da0c30adce735ef9" [label="mkdir{path=/app}" shape="note"];
  "sha256:835df078955a973614a57642c14ff7120ea057703ba75054433e063858168b4f" [label="mkdir{path=/app}" shape="note"];
  "sha256:217023eb1ec28f41f0367fa161c7ac7a57ba7e94bfc3be1724f6ae36af0e86c0" [label="docker-image://docker.io/microsoft/dotnet:2.2-sdk" shape="ellipse"];
  "sha256:7ca1a3c3d8a04cb964b2921644ff3dd028ed11e1079756eef968cf9e2631bccf" [label="mkdir{path=/src}" shape="note"];
  "sha256:5767d2b02fe3e8db508059b2344eee530ca6ddac499856cabd381c9877a0678e" [label="local://context" shape="ellipse"];
  "sha256:4102825af469865e0473c6bea38f3cf42385cb2bb6e958c23304e6f4ddf390c8" [label="copy{src=/src/services/NosWings.UserService/NosWings.UserService.csproj, dest=/src/src/services/NosWings.UserService/}" shape="note"];
  "sha256:de55fdfe9b0808d2f75dee3e1800a4ca458abbb8963cc8bddb56d20f1e558955" [label="/bin/sh -c dotnet restore \"src/services/NosWings.UserService/NosWings.UserService.csproj\"" shape="box"];
  "sha256:ae1586d30f284edc4135964394e6347419fb25eb7dc5bc50bc989d9b58e628b8" [label="copy{src=/, dest=/src/}" shape="note"];
  "sha256:db66026b38fff072adfe60ad961614a72261f35fb8f1053ad25bdeab296c1b56" [label="mkdir{path=/src/src/services/NosWings.UserService}" shape="note"];
  "sha256:744c58ebc962989d851a048d58c2cdb493bff4d0753db3c310f7f0ffe530a65f" [label="/bin/sh -c dotnet build \"NosWings.UserService.csproj\" -c Release -o /app" shape="box"];
  "sha256:75365c535682ebdef4ad28ddab87061ffacf76dd84ef40d66bbcb3c01674489a" [label="/bin/sh -c dotnet publish \"NosWings.UserService.csproj\" -c Release -o /app" shape="box"];
  "sha256:10c1379cd89d8f233827559539574e26d64d478e75ce9007d6a0abdf95194c2a" [label="copy{src=/app, dest=/app/}" shape="note"];
  "sha256:be0c94938365b547b746b9ec4f6eda20f75b0a3c10a98957bed81580f903501e" [label="sha256:be0c94938365b547b746b9ec4f6eda20f75b0a3c10a98957bed81580f903501e" shape="plaintext"];
  "sha256:efbccbe63bb58047443a0ad856eaf62525ac2b1faafb01cef77491556c0cebbb" -> "sha256:c8906744f1a1a205eb232c9e896d9c8b6a8984f1aa9322b7da0c30adce735ef9" [label=""];
  "sha256:c8906744f1a1a205eb232c9e896d9c8b6a8984f1aa9322b7da0c30adce735ef9" -> "sha256:835df078955a973614a57642c14ff7120ea057703ba75054433e063858168b4f" [label=""];
  "sha256:217023eb1ec28f41f0367fa161c7ac7a57ba7e94bfc3be1724f6ae36af0e86c0" -> "sha256:7ca1a3c3d8a04cb964b2921644ff3dd028ed11e1079756eef968cf9e2631bccf" [label=""];
  "sha256:7ca1a3c3d8a04cb964b2921644ff3dd028ed11e1079756eef968cf9e2631bccf" -> "sha256:4102825af469865e0473c6bea38f3cf42385cb2bb6e958c23304e6f4ddf390c8" [label=""];
  "sha256:5767d2b02fe3e8db508059b2344eee530ca6ddac499856cabd381c9877a0678e" -> "sha256:4102825af469865e0473c6bea38f3cf42385cb2bb6e958c23304e6f4ddf390c8" [label=""];
  "sha256:4102825af469865e0473c6bea38f3cf42385cb2bb6e958c23304e6f4ddf390c8" -> "sha256:de55fdfe9b0808d2f75dee3e1800a4ca458abbb8963cc8bddb56d20f1e558955" [label=""];
  "sha256:de55fdfe9b0808d2f75dee3e1800a4ca458abbb8963cc8bddb56d20f1e558955" -> "sha256:ae1586d30f284edc4135964394e6347419fb25eb7dc5bc50bc989d9b58e628b8" [label=""];
  "sha256:5767d2b02fe3e8db508059b2344eee530ca6ddac499856cabd381c9877a0678e" -> "sha256:ae1586d30f284edc4135964394e6347419fb25eb7dc5bc50bc989d9b58e628b8" [label=""];
  "sha256:ae1586d30f284edc4135964394e6347419fb25eb7dc5bc50bc989d9b58e628b8" -> "sha256:db66026b38fff072adfe60ad961614a72261f35fb8f1053ad25bdeab296c1b56" [label=""];
  "sha256:db66026b38fff072adfe60ad961614a72261f35fb8f1053ad25bdeab296c1b56" -> "sha256:744c58ebc962989d851a048d58c2cdb493bff4d0753db3c310f7f0ffe530a65f" [label=""];
  "sha256:744c58ebc962989d851a048d58c2cdb493bff4d0753db3c310f7f0ffe530a65f" -> "sha256:75365c535682ebdef4ad28ddab87061ffacf76dd84ef40d66bbcb3c01674489a" [label=""];
  "sha256:835df078955a973614a57642c14ff7120ea057703ba75054433e063858168b4f" -> "sha256:10c1379cd89d8f233827559539574e26d64d478e75ce9007d6a0abdf95194c2a" [label=""];
  "sha256:75365c535682ebdef4ad28ddab87061ffacf76dd84ef40d66bbcb3c01674489a" -> "sha256:10c1379cd89d8f233827559539574e26d64d478e75ce9007d6a0abdf95194c2a" [label=""];
  "sha256:10c1379cd89d8f233827559539574e26d64d478e75ce9007d6a0abdf95194c2a" -> "sha256:be0c94938365b547b746b9ec4f6eda20f75b0a3c10a98957bed81580f903501e" [label=""];
}

