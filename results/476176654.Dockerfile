[app/sources/476176654.Dockerfile]
digraph {
  "sha256:5c63e46e56587395464935fbbb779b8f33e34451e961ba3eb79f3b06f8691ed1" [label="docker-image://docker.io/microsoft/nanoserver:latest" shape="ellipse"];
  "sha256:775940309d74f1316d7a1b57dd945769cdd5105ac7aeb5ee5fde859283d0214d" [label="/bin/sh -c powershell -NoProfile -Command         Invoke-WebRequest %JDK_URL% -OutFile jdk.zip;         Expand-Archive jdk.zip -DestinationPath '%ProgramFiles%';         Move-Item '%ProgramFiles%\\zulu*' '%ProgramFiles%\\zulujdk';         Remove-Item -Force jdk.zip" shape="box"];
  "sha256:0d1729c27c97666cd4bbb74b77803339c26617f1219dbe2dd9575e24a4255ebc" [label="/bin/sh -c setx /M JAVA_HOME \"%ProgramFiles%\\zulujdk\\jre\"" shape="box"];
  "sha256:4b504be115406d7512fb90648bce4da8020934fd97df322dccbedfc5bde15bb1" [label="/bin/sh -c setx /M PATH \"%PATH%;%ProgramFiles%\\zulujdk\\bin\"" shape="box"];
  "sha256:52c18937e5e9450afb38ad5832a2c39890dda013592dcc799551765df97b4981" [label="sha256:52c18937e5e9450afb38ad5832a2c39890dda013592dcc799551765df97b4981" shape="plaintext"];
  "sha256:5c63e46e56587395464935fbbb779b8f33e34451e961ba3eb79f3b06f8691ed1" -> "sha256:775940309d74f1316d7a1b57dd945769cdd5105ac7aeb5ee5fde859283d0214d" [label=""];
  "sha256:775940309d74f1316d7a1b57dd945769cdd5105ac7aeb5ee5fde859283d0214d" -> "sha256:0d1729c27c97666cd4bbb74b77803339c26617f1219dbe2dd9575e24a4255ebc" [label=""];
  "sha256:0d1729c27c97666cd4bbb74b77803339c26617f1219dbe2dd9575e24a4255ebc" -> "sha256:4b504be115406d7512fb90648bce4da8020934fd97df322dccbedfc5bde15bb1" [label=""];
  "sha256:4b504be115406d7512fb90648bce4da8020934fd97df322dccbedfc5bde15bb1" -> "sha256:52c18937e5e9450afb38ad5832a2c39890dda013592dcc799551765df97b4981" [label=""];
}

