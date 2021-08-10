[app/sources/189170949.Dockerfile]
digraph {
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" [label="docker-image://docker.io/library/debian:jessie" shape="ellipse"];
  "sha256:c78e402cad5f1eea70ce53fc311dc6b56f926edf9073ec046edc65d6e687af20" [label="/bin/sh -c dpkg --add-architecture i386 && apt-get update && apt-get install -y     build-essential     ca-certificates     git     pkg-config     qt4-qmake     libqt4-dev     libavformat-dev     libavcodec-dev     libavutil-dev     libswscale-dev     libasound2-dev     libpulse-dev     libjack-jackd2-dev     libgl1-mesa-dev     libglu1-mesa-dev     libx11-dev     libxfixes-dev     libxext-dev     libxi-dev     g++-multilib     libx11-6     libxext6     libxfixes3     libxfixes3:i386     libglu1-mesa:i386     sudo     --no-install-recommends" shape="box"];
  "sha256:d742737527d17a585882b3054598dcbe1f850629223b43d2ec1296a2a43ac32c" [label="/bin/sh -c cd /usr/lib/i386-linux-gnu &&     ln -s libGL.so.1 libGL.so &&     ln -s libGLU.so.1 libGLU.so &&     ln -s libX11.so.6 libX11.so &&     ln -s libXext.so.6 libXext.so &&     ln -s libXfixes.so.3 libXfixes.so &&     ldconfig" shape="box"];
  "sha256:8577c0946d2b45191960fe59f3e7a8dea00d27763e95b54839aa19d87efd525e" [label="/bin/sh -c git clone https://github.com/MaartenBaert/ssr.git /src" shape="box"];
  "sha256:52dd786196b7850210f2698907bff4799de8b8a2f04010f091b93b8d28045257" [label="/bin/sh -c sed -i\".bak\" '10,13d' /src/simple-build-and-install" shape="box"];
  "sha256:f9414400b1dfe537a1c5cbaf31e026f988040a36273175b0bca1626c7e51a075" [label="/bin/sh -c sed -i\".bak\" '13,14d' /src/postinstall" shape="box"];
  "sha256:21810be4b53993602a1dd168909afaace5e726c1d27298ebe2946865cce9af57" [label="/bin/sh -c cd /src &&     /src/simple-build-and-install" shape="box"];
  "sha256:fd72bb4d46641cfb8995a25696312b6c98c1f161f7cdf603fa40e9ef03ad547b" [label="sha256:fd72bb4d46641cfb8995a25696312b6c98c1f161f7cdf603fa40e9ef03ad547b" shape="plaintext"];
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" -> "sha256:c78e402cad5f1eea70ce53fc311dc6b56f926edf9073ec046edc65d6e687af20" [label=""];
  "sha256:c78e402cad5f1eea70ce53fc311dc6b56f926edf9073ec046edc65d6e687af20" -> "sha256:d742737527d17a585882b3054598dcbe1f850629223b43d2ec1296a2a43ac32c" [label=""];
  "sha256:d742737527d17a585882b3054598dcbe1f850629223b43d2ec1296a2a43ac32c" -> "sha256:8577c0946d2b45191960fe59f3e7a8dea00d27763e95b54839aa19d87efd525e" [label=""];
  "sha256:8577c0946d2b45191960fe59f3e7a8dea00d27763e95b54839aa19d87efd525e" -> "sha256:52dd786196b7850210f2698907bff4799de8b8a2f04010f091b93b8d28045257" [label=""];
  "sha256:52dd786196b7850210f2698907bff4799de8b8a2f04010f091b93b8d28045257" -> "sha256:f9414400b1dfe537a1c5cbaf31e026f988040a36273175b0bca1626c7e51a075" [label=""];
  "sha256:f9414400b1dfe537a1c5cbaf31e026f988040a36273175b0bca1626c7e51a075" -> "sha256:21810be4b53993602a1dd168909afaace5e726c1d27298ebe2946865cce9af57" [label=""];
  "sha256:21810be4b53993602a1dd168909afaace5e726c1d27298ebe2946865cce9af57" -> "sha256:fd72bb4d46641cfb8995a25696312b6c98c1f161f7cdf603fa40e9ef03ad547b" [label=""];
}

