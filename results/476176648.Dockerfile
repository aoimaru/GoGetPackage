[app/sources/476176648.Dockerfile]
digraph {
  "sha256:5c63e46e56587395464935fbbb779b8f33e34451e961ba3eb79f3b06f8691ed1" [label="docker-image://docker.io/microsoft/nanoserver:latest" shape="ellipse"];
  "sha256:e1955c08538203b44320e99700669d516cca066b4674b8b6228b56e960a0654e" [label="/bin/sh -c powershell -NoProfile -Command         Invoke-WebRequest %JDK_URL% -OutFile jdk.zip;         Expand-Archive jdk.zip -DestinationPath '%ProgramFiles%';         Move-Item '%ProgramFiles%\\zulu*' '%ProgramFiles%\\zulujdk';         Remove-Item -Force jdk.zip" shape="box"];
  "sha256:76be36add186579498a6a69be8c2b2a1f83ee7d3dd86590dbedfdab34512f3b5" [label="/bin/sh -c setx /M JAVA_HOME \"%ProgramFiles%\\zulujdk\\jre\"" shape="box"];
  "sha256:c66be419c440eca95da8ee53053cbee564552481fd09c68bfd6060900822b9f7" [label="/bin/sh -c setx /M PATH \"%PATH%;%ProgramFiles%\\zulujdk\\bin\"" shape="box"];
  "sha256:cf4a79d92c61fd207a84bca3bdbf0f8bf5301a81d1d0311cb388ef93931c6508" [label="sha256:cf4a79d92c61fd207a84bca3bdbf0f8bf5301a81d1d0311cb388ef93931c6508" shape="plaintext"];
  "sha256:5c63e46e56587395464935fbbb779b8f33e34451e961ba3eb79f3b06f8691ed1" -> "sha256:e1955c08538203b44320e99700669d516cca066b4674b8b6228b56e960a0654e" [label=""];
  "sha256:e1955c08538203b44320e99700669d516cca066b4674b8b6228b56e960a0654e" -> "sha256:76be36add186579498a6a69be8c2b2a1f83ee7d3dd86590dbedfdab34512f3b5" [label=""];
  "sha256:76be36add186579498a6a69be8c2b2a1f83ee7d3dd86590dbedfdab34512f3b5" -> "sha256:c66be419c440eca95da8ee53053cbee564552481fd09c68bfd6060900822b9f7" [label=""];
  "sha256:c66be419c440eca95da8ee53053cbee564552481fd09c68bfd6060900822b9f7" -> "sha256:cf4a79d92c61fd207a84bca3bdbf0f8bf5301a81d1d0311cb388ef93931c6508" [label=""];
}

