[app/sources/206855063.Dockerfile]
digraph {
  "sha256:8938718d639633128dcc0a3e02dc6e02fbf0dcdab35d69e19fc3b5940f1c40c7" [label="docker-image://docker.io/library/golang:1.11.5" shape="ellipse"];
  "sha256:fde36e3d9ee1a270c61d4fba1be84ec8cb7f1987d046a0aad31350339737e707" [label="/bin/sh -c apt-get update && apt-get install -y     python     rsync     wget &&     rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:906efaa384d48405bb2d8f3a9ec70c572c5446ac3d35ded9ae1c1fa9d8d6e6ba" [label="mkdir{path=/workspace}" shape="note"];
  "sha256:4766aa94fff64a221624e3cfd97aef54eb8826e8ee8bfff5ccad821501af5410" [label="/bin/sh -c wget -q https://dl.google.com/dl/cloudsdk/channels/rapid/google-cloud-sdk.tar.gz &&     tar xzf google-cloud-sdk.tar.gz -C / &&     rm google-cloud-sdk.tar.gz &&     /google-cloud-sdk/install.sh         --disable-installation-options         --bash-completion=false         --path-update=false         --usage-reporting=false &&     gcloud components install alpha beta kubectl &&     gcloud info | tee /workspace/gcloud-info.txt" shape="box"];
  "sha256:ba8b00b8612649309b29b02059e1ec1e992938ade21ca092f8023d72e5d44f4e" [label="local://context" shape="ellipse"];
  "sha256:aec8584e6bcd67d31169f2a45a1053b3339cb52189d2e9dafe096b464c258308" [label="copy{src=/runner, dest=/}" shape="note"];
  "sha256:767fd7f55db51b97e76dca2badec47fec3f9986847132bb03cf41cc62af3960a" [label="sha256:767fd7f55db51b97e76dca2badec47fec3f9986847132bb03cf41cc62af3960a" shape="plaintext"];
  "sha256:8938718d639633128dcc0a3e02dc6e02fbf0dcdab35d69e19fc3b5940f1c40c7" -> "sha256:fde36e3d9ee1a270c61d4fba1be84ec8cb7f1987d046a0aad31350339737e707" [label=""];
  "sha256:fde36e3d9ee1a270c61d4fba1be84ec8cb7f1987d046a0aad31350339737e707" -> "sha256:906efaa384d48405bb2d8f3a9ec70c572c5446ac3d35ded9ae1c1fa9d8d6e6ba" [label=""];
  "sha256:906efaa384d48405bb2d8f3a9ec70c572c5446ac3d35ded9ae1c1fa9d8d6e6ba" -> "sha256:4766aa94fff64a221624e3cfd97aef54eb8826e8ee8bfff5ccad821501af5410" [label=""];
  "sha256:4766aa94fff64a221624e3cfd97aef54eb8826e8ee8bfff5ccad821501af5410" -> "sha256:aec8584e6bcd67d31169f2a45a1053b3339cb52189d2e9dafe096b464c258308" [label=""];
  "sha256:ba8b00b8612649309b29b02059e1ec1e992938ade21ca092f8023d72e5d44f4e" -> "sha256:aec8584e6bcd67d31169f2a45a1053b3339cb52189d2e9dafe096b464c258308" [label=""];
  "sha256:aec8584e6bcd67d31169f2a45a1053b3339cb52189d2e9dafe096b464c258308" -> "sha256:767fd7f55db51b97e76dca2badec47fec3f9986847132bb03cf41cc62af3960a" [label=""];
}

