[app/sources/364661438.Dockerfile]
digraph {
  "sha256:94bcad9b2ab85ebf87a348c6630c4ed109bcb5ec4b4e8f7ab9a4b43e7eb62308" [label="docker-image://gcr.io/gcp-runtimes/ubuntu_16_0_4@sha256:3fe32887e3f2f7d4100745aecad3dc07118e0e441900d5d706000d4cc7dc3821" shape="ellipse"];
  "sha256:ce329ff2fc7bf92107910cdf6eef0e90c54be7cdeaea383249db46ff64380a47" [label="/bin/sh -c apt-get update     && apt-get install -y --no-install-recommends         libc6         libcurl3         libgcc1         libicu55         liblttng-ust0         libssl1.0.0         libstdc++6         libtinfo5         libunwind8         libuuid1         zlib1g         ca-certificates         curl         tzdata     && apt-get upgrade -y     && apt-get clean" shape="box"];
  "sha256:581944bafb869f265c216b623ff869e00c4b75a7a4e2fa5f1f3d34d1120ba873" [label="/bin/sh -c mkdir -p /usr/share/dotnet &&     curl -sL https://storage.googleapis.com/gcp-aspnetcore-packages/dotnet-sdk-2.1.504-linux-x64.tar.gz | tar -xz -C /usr/share/dotnet/ &&     ln -s /usr/share/dotnet/dotnet /usr/bin/dotnet" shape="box"];
  "sha256:ca8a517ee8a3caf5b726ebed8739ec58db8223eb5aa0ddc58239b0b43bd0a57b" [label="sha256:ca8a517ee8a3caf5b726ebed8739ec58db8223eb5aa0ddc58239b0b43bd0a57b" shape="plaintext"];
  "sha256:94bcad9b2ab85ebf87a348c6630c4ed109bcb5ec4b4e8f7ab9a4b43e7eb62308" -> "sha256:ce329ff2fc7bf92107910cdf6eef0e90c54be7cdeaea383249db46ff64380a47" [label=""];
  "sha256:ce329ff2fc7bf92107910cdf6eef0e90c54be7cdeaea383249db46ff64380a47" -> "sha256:581944bafb869f265c216b623ff869e00c4b75a7a4e2fa5f1f3d34d1120ba873" [label=""];
  "sha256:581944bafb869f265c216b623ff869e00c4b75a7a4e2fa5f1f3d34d1120ba873" -> "sha256:ca8a517ee8a3caf5b726ebed8739ec58db8223eb5aa0ddc58239b0b43bd0a57b" [label=""];
}

