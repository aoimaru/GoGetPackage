[app/sources/257568095.Dockerfile]
digraph {
  "sha256:0d2876cd3e201c886ac3db6020d3e57079305f774ec38079994add2bbc52b762" [label="docker-image://launcher.gcr.io/google/debian8:latest@sha256:a6df7738c401aef6bf9c113eb1eea7f3921417fd4711ea28100681f2fe483ea2" shape="ellipse"];
  "sha256:24811ed65017c1e218df020bfffbc94503930e85dae185deb03442053957c693" [label="/bin/sh -c apt-get update &&     apt-get install -y --no-install-recommends libstdc++-4.9-dev binutils &&     rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:b094e4d7bc268caca10fe290fba0c527970d439790e5af8d0c7dbe0f778d9723" [label="local://context" shape="ellipse"];
  "sha256:0131168e26b0a5e370340e8b27f4be720de96f41f8a09d8539a2db770ecbe887" [label="copy{src=/clang.tar.gz, dest=/usr/local/}" shape="note"];
  "sha256:89f52cfbfba241eed31e3b6cd8248051eb52513cc8beb661fa832bd012ee88ca" [label="sha256:89f52cfbfba241eed31e3b6cd8248051eb52513cc8beb661fa832bd012ee88ca" shape="plaintext"];
  "sha256:0d2876cd3e201c886ac3db6020d3e57079305f774ec38079994add2bbc52b762" -> "sha256:24811ed65017c1e218df020bfffbc94503930e85dae185deb03442053957c693" [label=""];
  "sha256:24811ed65017c1e218df020bfffbc94503930e85dae185deb03442053957c693" -> "sha256:0131168e26b0a5e370340e8b27f4be720de96f41f8a09d8539a2db770ecbe887" [label=""];
  "sha256:b094e4d7bc268caca10fe290fba0c527970d439790e5af8d0c7dbe0f778d9723" -> "sha256:0131168e26b0a5e370340e8b27f4be720de96f41f8a09d8539a2db770ecbe887" [label=""];
  "sha256:0131168e26b0a5e370340e8b27f4be720de96f41f8a09d8539a2db770ecbe887" -> "sha256:89f52cfbfba241eed31e3b6cd8248051eb52513cc8beb661fa832bd012ee88ca" [label=""];
}

