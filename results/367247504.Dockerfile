[app/sources/367247504.Dockerfile]
digraph {
  "sha256:90c8c3197b162c173497fb28e1a53a9d683f3d9039a9b011ea8fcd52626cc1fa" [label="docker-image://mcr.microsoft.com/dotnet/core/runtime-deps:3.0-disco-arm64v8@sha256:4f85cfde60e299b5390488d5a498a7631bc834555cdbbf94e81f0ce2f06eb9cf" shape="ellipse"];
  "sha256:80278962f3adbe7fbd97dfbcd20901d8f8b5ebff2b99bd73804604100c8d8260" [label="/bin/sh -c apt-get update     && apt-get install -y --no-install-recommends         curl     && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:1e5d137157436bc66f887298f38a0626eb0046e4ca79154277ba3485eca81c3f" [label="/bin/sh -c curl -SL --output dotnet.tar.gz https://dotnetcli.blob.core.windows.net/dotnet/Runtime/$DOTNET_VERSION/dotnet-runtime-$DOTNET_VERSION-linux-arm64.tar.gz     && dotnet_sha512='e93959fc32789cecd6dd0f1b0ba3077937f04dae3af4b23f2fd4b8332049cf052e6542784ee598d32cdc24ed1c76ca2faeedbb4454e815f744c979a21d791ebe'     && echo \"$dotnet_sha512 dotnet.tar.gz\" | sha512sum -c -     && mkdir -p /usr/share/dotnet     && tar -zxf dotnet.tar.gz -C /usr/share/dotnet     && rm dotnet.tar.gz     && ln -s /usr/share/dotnet/dotnet /usr/bin/dotnet" shape="box"];
  "sha256:dfb27eaf446fa50999e8d2610c3a57bc18cf30b8191c2202f01c50ff636d44f3" [label="sha256:dfb27eaf446fa50999e8d2610c3a57bc18cf30b8191c2202f01c50ff636d44f3" shape="plaintext"];
  "sha256:90c8c3197b162c173497fb28e1a53a9d683f3d9039a9b011ea8fcd52626cc1fa" -> "sha256:80278962f3adbe7fbd97dfbcd20901d8f8b5ebff2b99bd73804604100c8d8260" [label=""];
  "sha256:80278962f3adbe7fbd97dfbcd20901d8f8b5ebff2b99bd73804604100c8d8260" -> "sha256:1e5d137157436bc66f887298f38a0626eb0046e4ca79154277ba3485eca81c3f" [label=""];
  "sha256:1e5d137157436bc66f887298f38a0626eb0046e4ca79154277ba3485eca81c3f" -> "sha256:dfb27eaf446fa50999e8d2610c3a57bc18cf30b8191c2202f01c50ff636d44f3" [label=""];
}

