[app/sources/315192346.Dockerfile]
digraph {
  "sha256:58b90efde976d8955af087132b4df5a2d1e62a09f3c6e4ed5c4501fa77333953" [label="docker-image://docker.io/microsoft/dotnet:2.1-aspnetcore-runtime@sha256:cd098ef956b9d6ff66d7c67f45e51c14b9e6789d586645492b1e9f0395442f4f" shape="ellipse"];
  "sha256:9768a944daea218cb56c56b005c36e72f735bd14e034fd5bdf0c1f7df8a0be10" [label="mkdir{path=/app}" shape="note"];
  "sha256:1fbe95532e3f2d77da3e5e31756d310ed57a235e488b621165141dda3ed42b43" [label="docker-image://docker.io/microsoft/dotnet:2.1-sdk@sha256:a485e2b51b3a6e79935c95b8ea1a341f8f028333984d4bfd8e83170b38c5f304" shape="ellipse"];
  "sha256:7afd19407ac4ef7613c4b4979018a2c12998066376e526f1fd8a76409c84db5b" [label="mkdir{path=/app}" shape="note"];
  "sha256:9b0600a9330caa68cf23886326f87c6fd9ef54a9fbac797359ddf89a96351f87" [label="local://context" shape="ellipse"];
  "sha256:a8efbc32fbb0793666af6a621a22db7407998eceab7660442fd8321e49f0963d" [label="copy{src=/*.csproj, dest=/app/}" shape="note"];
  "sha256:9916febbeae22208dfaaf98acdc2ac123ad5652669dafdbecd12c16cd38c6649" [label="/bin/sh -c dotnet restore" shape="box"];
  "sha256:1074d653797827884196a8e825693573baee7b21d804cc5eb9c52a1cadb44994" [label="copy{src=/, dest=/app/}" shape="note"];
  "sha256:4bc15153a3b07e1f1e0255789575f431c39cd940b6e13502647971caad2a83c3" [label="/bin/sh -c dotnet publish -c Release -o out" shape="box"];
  "sha256:153d99825a6c0326d0209a44eaa63f76fe9a796b5753668f8de722fbb02c21fc" [label="copy{src=/appsettings.*.json, dest=/app/out/}" shape="note"];
  "sha256:f5f7a8c97b467b28a38186fbd4b7b371df7932542ce61d5f24da0609b4470459" [label="copy{src=/appsettings.json, dest=/app/out/}" shape="note"];
  "sha256:3536810dc71fb35a6b83498a9e53d18b014dbfb2495a6ab23f6f10dea2932d3a" [label="copy{src=/app/out, dest=/app/}" shape="note"];
  "sha256:cc15f4b5b1be7d03882b1e4abe26f2b59f5bcfc76446a33ad8f13ed5ce1e75fb" [label="sha256:cc15f4b5b1be7d03882b1e4abe26f2b59f5bcfc76446a33ad8f13ed5ce1e75fb" shape="plaintext"];
  "sha256:58b90efde976d8955af087132b4df5a2d1e62a09f3c6e4ed5c4501fa77333953" -> "sha256:9768a944daea218cb56c56b005c36e72f735bd14e034fd5bdf0c1f7df8a0be10" [label=""];
  "sha256:1fbe95532e3f2d77da3e5e31756d310ed57a235e488b621165141dda3ed42b43" -> "sha256:7afd19407ac4ef7613c4b4979018a2c12998066376e526f1fd8a76409c84db5b" [label=""];
  "sha256:7afd19407ac4ef7613c4b4979018a2c12998066376e526f1fd8a76409c84db5b" -> "sha256:a8efbc32fbb0793666af6a621a22db7407998eceab7660442fd8321e49f0963d" [label=""];
  "sha256:9b0600a9330caa68cf23886326f87c6fd9ef54a9fbac797359ddf89a96351f87" -> "sha256:a8efbc32fbb0793666af6a621a22db7407998eceab7660442fd8321e49f0963d" [label=""];
  "sha256:a8efbc32fbb0793666af6a621a22db7407998eceab7660442fd8321e49f0963d" -> "sha256:9916febbeae22208dfaaf98acdc2ac123ad5652669dafdbecd12c16cd38c6649" [label=""];
  "sha256:9916febbeae22208dfaaf98acdc2ac123ad5652669dafdbecd12c16cd38c6649" -> "sha256:1074d653797827884196a8e825693573baee7b21d804cc5eb9c52a1cadb44994" [label=""];
  "sha256:9b0600a9330caa68cf23886326f87c6fd9ef54a9fbac797359ddf89a96351f87" -> "sha256:1074d653797827884196a8e825693573baee7b21d804cc5eb9c52a1cadb44994" [label=""];
  "sha256:1074d653797827884196a8e825693573baee7b21d804cc5eb9c52a1cadb44994" -> "sha256:4bc15153a3b07e1f1e0255789575f431c39cd940b6e13502647971caad2a83c3" [label=""];
  "sha256:4bc15153a3b07e1f1e0255789575f431c39cd940b6e13502647971caad2a83c3" -> "sha256:153d99825a6c0326d0209a44eaa63f76fe9a796b5753668f8de722fbb02c21fc" [label=""];
  "sha256:9b0600a9330caa68cf23886326f87c6fd9ef54a9fbac797359ddf89a96351f87" -> "sha256:153d99825a6c0326d0209a44eaa63f76fe9a796b5753668f8de722fbb02c21fc" [label=""];
  "sha256:153d99825a6c0326d0209a44eaa63f76fe9a796b5753668f8de722fbb02c21fc" -> "sha256:f5f7a8c97b467b28a38186fbd4b7b371df7932542ce61d5f24da0609b4470459" [label=""];
  "sha256:9b0600a9330caa68cf23886326f87c6fd9ef54a9fbac797359ddf89a96351f87" -> "sha256:f5f7a8c97b467b28a38186fbd4b7b371df7932542ce61d5f24da0609b4470459" [label=""];
  "sha256:9768a944daea218cb56c56b005c36e72f735bd14e034fd5bdf0c1f7df8a0be10" -> "sha256:3536810dc71fb35a6b83498a9e53d18b014dbfb2495a6ab23f6f10dea2932d3a" [label=""];
  "sha256:f5f7a8c97b467b28a38186fbd4b7b371df7932542ce61d5f24da0609b4470459" -> "sha256:3536810dc71fb35a6b83498a9e53d18b014dbfb2495a6ab23f6f10dea2932d3a" [label=""];
  "sha256:3536810dc71fb35a6b83498a9e53d18b014dbfb2495a6ab23f6f10dea2932d3a" -> "sha256:cc15f4b5b1be7d03882b1e4abe26f2b59f5bcfc76446a33ad8f13ed5ce1e75fb" [label=""];
}

