[app/sources/229878687.Dockerfile]
digraph {
  "sha256:36008dd68ba945cd39af1d6088dc0795910e7465192156509194a2f6fe119d2e" [label="docker-image://docker.io/library/steamcmd:latest" shape="ellipse"];
  "sha256:7cd10ac45c492f32dc3c54e1f0f7bc46535a4c4006572eee9c189a656ead7720" [label="/bin/sh -c dpkg --add-architecture i386; apt-get update;  apt-get install -y libstdc++6:i386 libcurl4-gnutls-dev:i386" shape="box"];
  "sha256:fc722981f6fda6f4ec8f4f60ceaf8aca3e697dae927614f158a2bfd03aab6e86" [label="mkdir{path=/steam/steamcmd_linux}" shape="note"];
  "sha256:b678b48ba0ed3b0c2b62589dfcdaba0699a78a320d2f5ea8d3e1701a30fd9eec" [label="/bin/sh -c mkdir -p /steam/tf2" shape="box"];
  "sha256:c90621d2273b1b39c7315ff86fb1d3cfdd8287b388592f17e1da334149b41d34" [label="/bin/sh -c ./steamcmd.sh +login anonymous +force_install_dir ../tf2 +app_update 232250  +quit" shape="box"];
  "sha256:cf437af541f9690be7f2a2ccc4463d16f340020232f845c1a9e8e139dc33676b" [label="mkdir{path=/steam/tf2}" shape="note"];
  "sha256:974f40312a6590871b050f4d8f4a39745688218795f1eb05f5706821af68316a" [label="local://context" shape="ellipse"];
  "sha256:f98dfeb8a0d63cfd98a3bc4e44f2a5cdd509851375c13ad840023a39d11d9f3d" [label="copy{src=/start*.sh, dest=/steam/tf2/}" shape="note"];
  "sha256:865733994435e20aa787403819c6a72d415cd903d4664b66f9344c9f943a0448" [label="sha256:865733994435e20aa787403819c6a72d415cd903d4664b66f9344c9f943a0448" shape="plaintext"];
  "sha256:36008dd68ba945cd39af1d6088dc0795910e7465192156509194a2f6fe119d2e" -> "sha256:7cd10ac45c492f32dc3c54e1f0f7bc46535a4c4006572eee9c189a656ead7720" [label=""];
  "sha256:7cd10ac45c492f32dc3c54e1f0f7bc46535a4c4006572eee9c189a656ead7720" -> "sha256:fc722981f6fda6f4ec8f4f60ceaf8aca3e697dae927614f158a2bfd03aab6e86" [label=""];
  "sha256:fc722981f6fda6f4ec8f4f60ceaf8aca3e697dae927614f158a2bfd03aab6e86" -> "sha256:b678b48ba0ed3b0c2b62589dfcdaba0699a78a320d2f5ea8d3e1701a30fd9eec" [label=""];
  "sha256:b678b48ba0ed3b0c2b62589dfcdaba0699a78a320d2f5ea8d3e1701a30fd9eec" -> "sha256:c90621d2273b1b39c7315ff86fb1d3cfdd8287b388592f17e1da334149b41d34" [label=""];
  "sha256:c90621d2273b1b39c7315ff86fb1d3cfdd8287b388592f17e1da334149b41d34" -> "sha256:cf437af541f9690be7f2a2ccc4463d16f340020232f845c1a9e8e139dc33676b" [label=""];
  "sha256:cf437af541f9690be7f2a2ccc4463d16f340020232f845c1a9e8e139dc33676b" -> "sha256:f98dfeb8a0d63cfd98a3bc4e44f2a5cdd509851375c13ad840023a39d11d9f3d" [label=""];
  "sha256:974f40312a6590871b050f4d8f4a39745688218795f1eb05f5706821af68316a" -> "sha256:f98dfeb8a0d63cfd98a3bc4e44f2a5cdd509851375c13ad840023a39d11d9f3d" [label=""];
  "sha256:f98dfeb8a0d63cfd98a3bc4e44f2a5cdd509851375c13ad840023a39d11d9f3d" -> "sha256:865733994435e20aa787403819c6a72d415cd903d4664b66f9344c9f943a0448" [label=""];
}

