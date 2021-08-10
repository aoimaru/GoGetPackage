[app/sources/254028152.Dockerfile]
digraph {
  "sha256:f6fbe8d62def1321cf9bfb2579136cb10991eaf652378226c3548f1d80800e03" [label="docker-image://docker.io/microsoft/aspnetcore:2.0" shape="ellipse"];
  "sha256:3d6a33becb0a73ca87b02894a03f38acb9da4d3f296b0238ca5798e95769f423" [label="mkdir{path=/app}" shape="note"];
  "sha256:367a50fffe321170fd5b6314e743735338c14a55cf7519995cd38c0b6da3f357" [label="mkdir{path=/app}" shape="note"];
  "sha256:5ef45377573600b8ca1d1926e6f50ecf27f0df401f366138c54211b44b4959d3" [label="docker-image://docker.io/microsoft/aspnetcore-build:2.0" shape="ellipse"];
  "sha256:313f58e46c952ec25ef51dabceff21fbc836645bd4e780b6cbe7dd3921664dd9" [label="mkdir{path=/src}" shape="note"];
  "sha256:fc41fef4cf6a3b4fdf35cf07b34f117af0003649c300b6f3547684ec290081bf" [label="local://context" shape="ellipse"];
  "sha256:5312cdcfa5d8668cd48bf8640f0a2d31d5bae718f642003c0b6266807898d51f" [label="copy{src=/*.sln, dest=/src/}" shape="note"];
  "sha256:c9c94e95da253fd86fb074e2989afdd5c68229b890034d84fda62f2f53916005" [label="copy{src=/Web/Web.csproj, dest=/src/Web/}" shape="note"];
  "sha256:4af3844b5f9805b16e7e52bf499deca0d27971ce3db342b143ac99aeae585d75" [label="/bin/sh -c dotnet restore" shape="box"];
  "sha256:321c7a923fc11712f03ffb4ff250c83ef59d34e630d78661fdb0d31fd1880add" [label="copy{src=/, dest=/src/}" shape="note"];
  "sha256:8a741dd9a63a6ed7f5df0b8fec0df09277cf18261251fb511ca1cbf1de35027e" [label="mkdir{path=/src/Web}" shape="note"];
  "sha256:8f56e0a690ddf69cbc119ff6861a34e09a96e4ee694a98b4eba01b2c96e81d06" [label="/bin/sh -c dotnet build -c Release -o /app" shape="box"];
  "sha256:db9bc91ae7e46d0f556392505bf6a322f1da422d12ec9dd256e19363cd5ccfd1" [label="/bin/sh -c dotnet publish -c Release -o /app" shape="box"];
  "sha256:e70fd350383b8d3146202afa8d14695af457eed740a16f0791bd4ba935d01bb8" [label="copy{src=/app, dest=/app/}" shape="note"];
  "sha256:5de90d6e8352298ae0746e64be11aedb7d0e978e3f68ab090821b120fd5427a3" [label="sha256:5de90d6e8352298ae0746e64be11aedb7d0e978e3f68ab090821b120fd5427a3" shape="plaintext"];
  "sha256:f6fbe8d62def1321cf9bfb2579136cb10991eaf652378226c3548f1d80800e03" -> "sha256:3d6a33becb0a73ca87b02894a03f38acb9da4d3f296b0238ca5798e95769f423" [label=""];
  "sha256:3d6a33becb0a73ca87b02894a03f38acb9da4d3f296b0238ca5798e95769f423" -> "sha256:367a50fffe321170fd5b6314e743735338c14a55cf7519995cd38c0b6da3f357" [label=""];
  "sha256:5ef45377573600b8ca1d1926e6f50ecf27f0df401f366138c54211b44b4959d3" -> "sha256:313f58e46c952ec25ef51dabceff21fbc836645bd4e780b6cbe7dd3921664dd9" [label=""];
  "sha256:313f58e46c952ec25ef51dabceff21fbc836645bd4e780b6cbe7dd3921664dd9" -> "sha256:5312cdcfa5d8668cd48bf8640f0a2d31d5bae718f642003c0b6266807898d51f" [label=""];
  "sha256:fc41fef4cf6a3b4fdf35cf07b34f117af0003649c300b6f3547684ec290081bf" -> "sha256:5312cdcfa5d8668cd48bf8640f0a2d31d5bae718f642003c0b6266807898d51f" [label=""];
  "sha256:5312cdcfa5d8668cd48bf8640f0a2d31d5bae718f642003c0b6266807898d51f" -> "sha256:c9c94e95da253fd86fb074e2989afdd5c68229b890034d84fda62f2f53916005" [label=""];
  "sha256:fc41fef4cf6a3b4fdf35cf07b34f117af0003649c300b6f3547684ec290081bf" -> "sha256:c9c94e95da253fd86fb074e2989afdd5c68229b890034d84fda62f2f53916005" [label=""];
  "sha256:c9c94e95da253fd86fb074e2989afdd5c68229b890034d84fda62f2f53916005" -> "sha256:4af3844b5f9805b16e7e52bf499deca0d27971ce3db342b143ac99aeae585d75" [label=""];
  "sha256:4af3844b5f9805b16e7e52bf499deca0d27971ce3db342b143ac99aeae585d75" -> "sha256:321c7a923fc11712f03ffb4ff250c83ef59d34e630d78661fdb0d31fd1880add" [label=""];
  "sha256:fc41fef4cf6a3b4fdf35cf07b34f117af0003649c300b6f3547684ec290081bf" -> "sha256:321c7a923fc11712f03ffb4ff250c83ef59d34e630d78661fdb0d31fd1880add" [label=""];
  "sha256:321c7a923fc11712f03ffb4ff250c83ef59d34e630d78661fdb0d31fd1880add" -> "sha256:8a741dd9a63a6ed7f5df0b8fec0df09277cf18261251fb511ca1cbf1de35027e" [label=""];
  "sha256:8a741dd9a63a6ed7f5df0b8fec0df09277cf18261251fb511ca1cbf1de35027e" -> "sha256:8f56e0a690ddf69cbc119ff6861a34e09a96e4ee694a98b4eba01b2c96e81d06" [label=""];
  "sha256:8f56e0a690ddf69cbc119ff6861a34e09a96e4ee694a98b4eba01b2c96e81d06" -> "sha256:db9bc91ae7e46d0f556392505bf6a322f1da422d12ec9dd256e19363cd5ccfd1" [label=""];
  "sha256:367a50fffe321170fd5b6314e743735338c14a55cf7519995cd38c0b6da3f357" -> "sha256:e70fd350383b8d3146202afa8d14695af457eed740a16f0791bd4ba935d01bb8" [label=""];
  "sha256:db9bc91ae7e46d0f556392505bf6a322f1da422d12ec9dd256e19363cd5ccfd1" -> "sha256:e70fd350383b8d3146202afa8d14695af457eed740a16f0791bd4ba935d01bb8" [label=""];
  "sha256:e70fd350383b8d3146202afa8d14695af457eed740a16f0791bd4ba935d01bb8" -> "sha256:5de90d6e8352298ae0746e64be11aedb7d0e978e3f68ab090821b120fd5427a3" [label=""];
}

