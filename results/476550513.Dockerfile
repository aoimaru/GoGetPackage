[app/sources/476550513.Dockerfile]
digraph {
  "sha256:a4ade296d93dbfad7b9878c86cb1c387200925abf1f6b0256a27c7bc3d5714b0" [label="docker-image://docker.io/library/fedora:latest" shape="ellipse"];
  "sha256:f0594e910617e53a8b4a224bdbdf1cc3104cab6e83cf32a7d186585f6cecac31" [label="/bin/sh -c dnf install -y wget java hostname && \twget $DOWNLOAD_SITE && \ttar -xzf nifi-$NIFI_VERSION-bin.tar.gz && \trm nifi-$NIFI_VERSION-bin.tar.gz && \tmv /nifi-$NIFI_VERSION /opt && \tln -s /opt/nifi-$NIFI_VERSION/ /opt/nifi" shape="box"];
  "sha256:aef9715aeab8b63e0ac821f458b13ef8769af764592a241bd3de7e7b97408199" [label="local://context" shape="ellipse"];
  "sha256:960580d9772386186b484454c2875a3d3972d3274a14f1a340fa6d839bfef84d" [label="copy{src=/entrypoint.sh, dest=/usr/local/bin/}" shape="note"];
  "sha256:7c433747d37fe32d43131bca5173940b7456e19de784fa0fcedf75edadb6f2e2" [label="copy{src=/config, dest=/opt/nifi/conf}" shape="note"];
  "sha256:8055ab99163c19e9b0f7fc06f5585e9e1b75da4375c12693a838c2f467d1dea2" [label="/bin/sh -c groupadd nifi &&     useradd -r -g nifi nifi &&     bash -c \"mkdir -p $NIFI_HOME/{database_repository,flowfile_repository,content_repository,provenance_repository}\" &&     chown nifi:nifi -R /opt/nifi-$NIFI_VERSION" shape="box"];
  "sha256:628add8562d16469c3500733e392bd33bb26e6ee83904c3a429cb1c92c0a841b" [label="mkdir{path=/opt/nifi}" shape="note"];
  "sha256:7587da5867927bcca981134a9f27c867429bfe5fdc61b944eb3594e59a51d301" [label="sha256:7587da5867927bcca981134a9f27c867429bfe5fdc61b944eb3594e59a51d301" shape="plaintext"];
  "sha256:a4ade296d93dbfad7b9878c86cb1c387200925abf1f6b0256a27c7bc3d5714b0" -> "sha256:f0594e910617e53a8b4a224bdbdf1cc3104cab6e83cf32a7d186585f6cecac31" [label=""];
  "sha256:f0594e910617e53a8b4a224bdbdf1cc3104cab6e83cf32a7d186585f6cecac31" -> "sha256:960580d9772386186b484454c2875a3d3972d3274a14f1a340fa6d839bfef84d" [label=""];
  "sha256:aef9715aeab8b63e0ac821f458b13ef8769af764592a241bd3de7e7b97408199" -> "sha256:960580d9772386186b484454c2875a3d3972d3274a14f1a340fa6d839bfef84d" [label=""];
  "sha256:960580d9772386186b484454c2875a3d3972d3274a14f1a340fa6d839bfef84d" -> "sha256:7c433747d37fe32d43131bca5173940b7456e19de784fa0fcedf75edadb6f2e2" [label=""];
  "sha256:aef9715aeab8b63e0ac821f458b13ef8769af764592a241bd3de7e7b97408199" -> "sha256:7c433747d37fe32d43131bca5173940b7456e19de784fa0fcedf75edadb6f2e2" [label=""];
  "sha256:7c433747d37fe32d43131bca5173940b7456e19de784fa0fcedf75edadb6f2e2" -> "sha256:8055ab99163c19e9b0f7fc06f5585e9e1b75da4375c12693a838c2f467d1dea2" [label=""];
  "sha256:8055ab99163c19e9b0f7fc06f5585e9e1b75da4375c12693a838c2f467d1dea2" -> "sha256:628add8562d16469c3500733e392bd33bb26e6ee83904c3a429cb1c92c0a841b" [label=""];
  "sha256:628add8562d16469c3500733e392bd33bb26e6ee83904c3a429cb1c92c0a841b" -> "sha256:7587da5867927bcca981134a9f27c867429bfe5fdc61b944eb3594e59a51d301" [label=""];
}

