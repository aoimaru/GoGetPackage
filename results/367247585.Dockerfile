[app/sources/367247585.Dockerfile]
digraph {
  "sha256:0be6f50c84e07bf65aa57b44e282c21cc5ed5107b4ac2fba02e50398ce671951" [label="local://context" shape="ellipse"];
  "sha256:a3d9770a1a65d3c34eb9d871f4174da6488cf19365a6a4ce2c72dff78ab4d822" [label="docker-image://mcr.microsoft.com/dotnet/core/sdk:2.2@sha256:42699bba2fe4545dd753694499e6db08478ba5b3bcc34b929e7e324d4c115449" shape="ellipse"];
  "sha256:2ea93aae3ab71fb821d308d73bda6d93748e1567cc8f454a8c39dc000dfc814d" [label="mkdir{path=/app}" shape="note"];
  "sha256:3b54decb8f4dffedee74b5c0a79bb1fc100d87be189ebd995b4cb835d0357930" [label="copy{src=/*.sln, dest=/app/}" shape="note"];
  "sha256:60780ae5d27148e62a31dc31fff04a51a47dc97e2490401852373292afa6fdb2" [label="copy{src=/aspnetapp/*.csproj, dest=/app/aspnetapp/}" shape="note"];
  "sha256:d5ba70daf74ef4b65798300e0618e3612f067acd8dba1abad0974ba618623fa0" [label="/bin/sh -c dotnet restore" shape="box"];
  "sha256:00d209b7383463ee532a01fd82ed9d402c9f075048c310516454e132664d8bdd" [label="copy{src=/aspnetapp, dest=/app/aspnetapp/}" shape="note"];
  "sha256:85ce2b99245f9182c3736191d7510e9f898992d22d130a18d073db23ee1c8cc9" [label="mkdir{path=/app/aspnetapp}" shape="note"];
  "sha256:1d5a071a2d386f353452195b4142e46d6ca31f5ff8bf7a974e627def178d17a7" [label="/bin/sh -c dotnet publish -c Release -o out" shape="box"];
  "sha256:c8e7d50af02fb43178f6da26b710e5b7a02d1edd1e05cbee8c404ef1856e4901" [label="docker-image://mcr.microsoft.com/dotnet/core/aspnet:2.2@sha256:08277d629af9d5324b63420a650cd96f86e73c4cfdcef6ea3c45912e7578956d" shape="ellipse"];
  "sha256:3f05eae309be26c44200662ead087ae37cccaf89fca9bf2e129d6485f6f50b9e" [label="mkdir{path=/app}" shape="note"];
  "sha256:d5a20beb32d508c6b6ee3b4a44b67778abdf6778d8064fc3249dd5b5eedd50a9" [label="copy{src=/app/aspnetapp/out, dest=/app/}" shape="note"];
  "sha256:240e128065097dde1756def6b5921215a1574d0f315a3ba15bc77bed009a1470" [label="sha256:240e128065097dde1756def6b5921215a1574d0f315a3ba15bc77bed009a1470" shape="plaintext"];
  "sha256:a3d9770a1a65d3c34eb9d871f4174da6488cf19365a6a4ce2c72dff78ab4d822" -> "sha256:2ea93aae3ab71fb821d308d73bda6d93748e1567cc8f454a8c39dc000dfc814d" [label=""];
  "sha256:2ea93aae3ab71fb821d308d73bda6d93748e1567cc8f454a8c39dc000dfc814d" -> "sha256:3b54decb8f4dffedee74b5c0a79bb1fc100d87be189ebd995b4cb835d0357930" [label=""];
  "sha256:0be6f50c84e07bf65aa57b44e282c21cc5ed5107b4ac2fba02e50398ce671951" -> "sha256:3b54decb8f4dffedee74b5c0a79bb1fc100d87be189ebd995b4cb835d0357930" [label=""];
  "sha256:3b54decb8f4dffedee74b5c0a79bb1fc100d87be189ebd995b4cb835d0357930" -> "sha256:60780ae5d27148e62a31dc31fff04a51a47dc97e2490401852373292afa6fdb2" [label=""];
  "sha256:0be6f50c84e07bf65aa57b44e282c21cc5ed5107b4ac2fba02e50398ce671951" -> "sha256:60780ae5d27148e62a31dc31fff04a51a47dc97e2490401852373292afa6fdb2" [label=""];
  "sha256:60780ae5d27148e62a31dc31fff04a51a47dc97e2490401852373292afa6fdb2" -> "sha256:d5ba70daf74ef4b65798300e0618e3612f067acd8dba1abad0974ba618623fa0" [label=""];
  "sha256:d5ba70daf74ef4b65798300e0618e3612f067acd8dba1abad0974ba618623fa0" -> "sha256:00d209b7383463ee532a01fd82ed9d402c9f075048c310516454e132664d8bdd" [label=""];
  "sha256:0be6f50c84e07bf65aa57b44e282c21cc5ed5107b4ac2fba02e50398ce671951" -> "sha256:00d209b7383463ee532a01fd82ed9d402c9f075048c310516454e132664d8bdd" [label=""];
  "sha256:00d209b7383463ee532a01fd82ed9d402c9f075048c310516454e132664d8bdd" -> "sha256:85ce2b99245f9182c3736191d7510e9f898992d22d130a18d073db23ee1c8cc9" [label=""];
  "sha256:85ce2b99245f9182c3736191d7510e9f898992d22d130a18d073db23ee1c8cc9" -> "sha256:1d5a071a2d386f353452195b4142e46d6ca31f5ff8bf7a974e627def178d17a7" [label=""];
  "sha256:c8e7d50af02fb43178f6da26b710e5b7a02d1edd1e05cbee8c404ef1856e4901" -> "sha256:3f05eae309be26c44200662ead087ae37cccaf89fca9bf2e129d6485f6f50b9e" [label=""];
  "sha256:3f05eae309be26c44200662ead087ae37cccaf89fca9bf2e129d6485f6f50b9e" -> "sha256:d5a20beb32d508c6b6ee3b4a44b67778abdf6778d8064fc3249dd5b5eedd50a9" [label=""];
  "sha256:1d5a071a2d386f353452195b4142e46d6ca31f5ff8bf7a974e627def178d17a7" -> "sha256:d5a20beb32d508c6b6ee3b4a44b67778abdf6778d8064fc3249dd5b5eedd50a9" [label=""];
  "sha256:d5a20beb32d508c6b6ee3b4a44b67778abdf6778d8064fc3249dd5b5eedd50a9" -> "sha256:240e128065097dde1756def6b5921215a1574d0f315a3ba15bc77bed009a1470" [label=""];
}

