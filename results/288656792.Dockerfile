[app/sources/288656792.Dockerfile]
digraph {
  "sha256:90a738375f6aed26fe1cee275fd1a27a271d01caf87be91f179e2dd15e8b5135" [label="docker-image://docker.io/arm32v7/ubuntu:bionic" shape="ellipse"];
  "sha256:887c067c98df058a532db5bca5c22df83cf3610f85b8a4baacea8b2531d6f84b" [label="/bin/sh -c apt-get update   && apt-get install --no-install-recommends ca-certificates libunwind8 libssl1.0 libicu60 wget --yes   && wget https://github.com/PowerShell/PowerShell/releases/download/v${PS_VERSION}/${PS_PACKAGE}   && mkdir ~/powershell   && tar -xvf ./${PS_PACKAGE} -C ~/powershell   && ln -s /root/powershell/pwsh /usr/bin/pwsh   && apt-get clean   && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:c20da10744408b87ca8b94cad12606b8e0f142dd3446d8ec91295d7317395691" [label="sha256:c20da10744408b87ca8b94cad12606b8e0f142dd3446d8ec91295d7317395691" shape="plaintext"];
  "sha256:90a738375f6aed26fe1cee275fd1a27a271d01caf87be91f179e2dd15e8b5135" -> "sha256:887c067c98df058a532db5bca5c22df83cf3610f85b8a4baacea8b2531d6f84b" [label=""];
  "sha256:887c067c98df058a532db5bca5c22df83cf3610f85b8a4baacea8b2531d6f84b" -> "sha256:c20da10744408b87ca8b94cad12606b8e0f142dd3446d8ec91295d7317395691" [label=""];
}

