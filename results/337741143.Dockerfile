[app/sources/337741143.Dockerfile]
digraph {
  "sha256:e2c9708c419de577306fd4afbf273b3d649bcc46565189d7726919caee84739b" [label="local://context" shape="ellipse"];
  "sha256:7bb87122bec8b0cb8b251cd5503ccca1cd47cd9e8d969b0be9c32eab24bc46d2" [label="docker-image://docker.io/library/ruby:2.6.3" shape="ellipse"];
  "sha256:63295c89039481f728424c4e97ddb52b27469df09613c3d307407047afa92b45" [label="copy{src=/Gemfile*, dest=/tmp/}" shape="note"];
  "sha256:00035d8a5b6e070a335c1784b52fe1fa3c3a247d86e6d7d2f588eec5b0c6eaf6" [label="mkdir{path=/tmp}" shape="note"];
  "sha256:25e40033de55c03b317d088b85f8f64a540f0eb1cf9e72dec574440a757e8c8f" [label="/bin/sh -c gem install bundler:2.0.1 && bundle install" shape="box"];
  "sha256:e01b9dd24af8d8c3e57ed16ce94458ab39d72790fcc3e84c0d8aac3e9e5d07e4" [label="/bin/sh -c ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone" shape="box"];
  "sha256:f660c6431ec604e3632b571afff7fdc7d4b4133d76ae5ae2b3e2f3e2c977cfec" [label="/bin/sh -c mkdir $app" shape="box"];
  "sha256:d3cd6da4d8fbdf3605fe9739073d32e5655f86c267444acabffc6dd0714714be" [label="mkdir{path=/srv/app}" shape="note"];
  "sha256:31489a820b8425a6d52ad4cc8a307ce1f2e46d91f79c1a45f2e73c8bc98b6e2e" [label="copy{src=/, dest=/srv/app}" shape="note"];
  "sha256:aea4b334f994ebd6ff9e14ecdbfa85a3b1735ce3f70665e055055907755d7f27" [label="/bin/sh -c chmod +x start-docker.sh" shape="box"];
  "sha256:28bdd14cd8670fe7df6590c0550b41a9fc5332a656d2932f8facf4f7e7483d9d" [label="sha256:28bdd14cd8670fe7df6590c0550b41a9fc5332a656d2932f8facf4f7e7483d9d" shape="plaintext"];
  "sha256:7bb87122bec8b0cb8b251cd5503ccca1cd47cd9e8d969b0be9c32eab24bc46d2" -> "sha256:63295c89039481f728424c4e97ddb52b27469df09613c3d307407047afa92b45" [label=""];
  "sha256:e2c9708c419de577306fd4afbf273b3d649bcc46565189d7726919caee84739b" -> "sha256:63295c89039481f728424c4e97ddb52b27469df09613c3d307407047afa92b45" [label=""];
  "sha256:63295c89039481f728424c4e97ddb52b27469df09613c3d307407047afa92b45" -> "sha256:00035d8a5b6e070a335c1784b52fe1fa3c3a247d86e6d7d2f588eec5b0c6eaf6" [label=""];
  "sha256:00035d8a5b6e070a335c1784b52fe1fa3c3a247d86e6d7d2f588eec5b0c6eaf6" -> "sha256:25e40033de55c03b317d088b85f8f64a540f0eb1cf9e72dec574440a757e8c8f" [label=""];
  "sha256:25e40033de55c03b317d088b85f8f64a540f0eb1cf9e72dec574440a757e8c8f" -> "sha256:e01b9dd24af8d8c3e57ed16ce94458ab39d72790fcc3e84c0d8aac3e9e5d07e4" [label=""];
  "sha256:e01b9dd24af8d8c3e57ed16ce94458ab39d72790fcc3e84c0d8aac3e9e5d07e4" -> "sha256:f660c6431ec604e3632b571afff7fdc7d4b4133d76ae5ae2b3e2f3e2c977cfec" [label=""];
  "sha256:f660c6431ec604e3632b571afff7fdc7d4b4133d76ae5ae2b3e2f3e2c977cfec" -> "sha256:d3cd6da4d8fbdf3605fe9739073d32e5655f86c267444acabffc6dd0714714be" [label=""];
  "sha256:d3cd6da4d8fbdf3605fe9739073d32e5655f86c267444acabffc6dd0714714be" -> "sha256:31489a820b8425a6d52ad4cc8a307ce1f2e46d91f79c1a45f2e73c8bc98b6e2e" [label=""];
  "sha256:e2c9708c419de577306fd4afbf273b3d649bcc46565189d7726919caee84739b" -> "sha256:31489a820b8425a6d52ad4cc8a307ce1f2e46d91f79c1a45f2e73c8bc98b6e2e" [label=""];
  "sha256:31489a820b8425a6d52ad4cc8a307ce1f2e46d91f79c1a45f2e73c8bc98b6e2e" -> "sha256:aea4b334f994ebd6ff9e14ecdbfa85a3b1735ce3f70665e055055907755d7f27" [label=""];
  "sha256:aea4b334f994ebd6ff9e14ecdbfa85a3b1735ce3f70665e055055907755d7f27" -> "sha256:28bdd14cd8670fe7df6590c0550b41a9fc5332a656d2932f8facf4f7e7483d9d" [label=""];
}

