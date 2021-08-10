[app/sources/360549147.Dockerfile]
digraph {
  "sha256:cf2e1d37d77fce34d17033da59079bd723e202f70a9c983b10d2962e8189e6d7" [label="docker-image://docker.io/bitnami/oraclelinux-extras:7-r378@sha256:b80a2530824c92d8a0642624e625d0409fa83484e75a38e01a58c46b19a1aef4" shape="ellipse"];
  "sha256:e0aee2d3955d482463c5d6dbb9e4250d04bc713a2a7472292611e6ea91a51dc0" [label="/bin/sh -c install_packages glibc libgcc" shape="box"];
  "sha256:a975194672732175fd549037a925cdd798480f8efd37aae9fd4330850f8ebde3" [label="/bin/sh -c bitnami-pkg install java-1.8.212-0 --checksum 7d11dad71234819fb290bcadc2997bda088ba6b21f245d397c068de4cf3757db" shape="box"];
  "sha256:68e0479c3e521a002bb1954b3879bf2f00db67f64046977afeb2c7509554b7b3" [label="/bin/sh -c bitnami-pkg unpack tomcat-8.5.42-0 --checksum 92b8db40dd20e5a74b1eb2db270108f0c1df85289657a1cfdcfef5c3be88c6d5" shape="box"];
  "sha256:d70e4ec892b218aa3aa6b1201816bf46fedf076093ee3cb182b74bb8ad09c9bb" [label="/bin/sh -c ln -sf /opt/bitnami/tomcat/data /app" shape="box"];
  "sha256:ca93c81ec9e78f92d0c243ef3d9ce7f830bd1007a9697cb16338a76eb132e71b" [label="local://context" shape="ellipse"];
  "sha256:52193593bfad2f03b561d7027c5e3a7b05530f4891cc50437c5ad2e6c25a30ec" [label="copy{src=/rootfs, dest=/}" shape="note"];
  "sha256:1d9c7c9723a5b175394fab3fe1e482e7f4d220deac23cb96fc2927af5a55cb23" [label="sha256:1d9c7c9723a5b175394fab3fe1e482e7f4d220deac23cb96fc2927af5a55cb23" shape="plaintext"];
  "sha256:cf2e1d37d77fce34d17033da59079bd723e202f70a9c983b10d2962e8189e6d7" -> "sha256:e0aee2d3955d482463c5d6dbb9e4250d04bc713a2a7472292611e6ea91a51dc0" [label=""];
  "sha256:e0aee2d3955d482463c5d6dbb9e4250d04bc713a2a7472292611e6ea91a51dc0" -> "sha256:a975194672732175fd549037a925cdd798480f8efd37aae9fd4330850f8ebde3" [label=""];
  "sha256:a975194672732175fd549037a925cdd798480f8efd37aae9fd4330850f8ebde3" -> "sha256:68e0479c3e521a002bb1954b3879bf2f00db67f64046977afeb2c7509554b7b3" [label=""];
  "sha256:68e0479c3e521a002bb1954b3879bf2f00db67f64046977afeb2c7509554b7b3" -> "sha256:d70e4ec892b218aa3aa6b1201816bf46fedf076093ee3cb182b74bb8ad09c9bb" [label=""];
  "sha256:d70e4ec892b218aa3aa6b1201816bf46fedf076093ee3cb182b74bb8ad09c9bb" -> "sha256:52193593bfad2f03b561d7027c5e3a7b05530f4891cc50437c5ad2e6c25a30ec" [label=""];
  "sha256:ca93c81ec9e78f92d0c243ef3d9ce7f830bd1007a9697cb16338a76eb132e71b" -> "sha256:52193593bfad2f03b561d7027c5e3a7b05530f4891cc50437c5ad2e6c25a30ec" [label=""];
  "sha256:52193593bfad2f03b561d7027c5e3a7b05530f4891cc50437c5ad2e6c25a30ec" -> "sha256:1d9c7c9723a5b175394fab3fe1e482e7f4d220deac23cb96fc2927af5a55cb23" [label=""];
}

