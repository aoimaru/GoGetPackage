[app/sources/223528247.Dockerfile]
digraph {
  "sha256:3e8b14c1ee67e93c6d965fbc7819462f4f1120944f41dafb7b2870f4fbb30dbe" [label="docker-image://docker.io/bitnami/minideb:jessie@sha256:095c0610f92c0d9ad329902d7a4989596c0ca28ebeefc844b2ec0ea5ce50a7d8" shape="ellipse"];
  "sha256:d1b07928e7341fd2c65a4c1efe9613dfd730c4b2af033f02c6639123e875a713" [label="/bin/sh -c apt-get update &&     apt-get install --no-install-recommends -y zlib1g-dev libcurl4-openssl-dev libssl-dev libelf-dev libdw-dev     cmake cmake-data make g++ binutils-dev libiberty-dev python-minimal git curl ca-certificates unzip pkg-config &&     rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:fd9cfd169870ea0b6fef3978a24004d1d898bad485dc633bc3dcd81390c2381f" [label="/bin/sh -c curl -LOko master.zip https://github.com/SimonKagstrom/kcov/archive/master.zip     && unzip master.zip     && rm master.zip     && cd kcov-master     && mkdir build     && cd build     && cmake ..     && make -j4     && make install     && cd /     && rm -rf kcov-master" shape="box"];
  "sha256:4773c7396ebc66581f20c31f039d38d62b96acc6e32ed5673c0402c3d657cf22" [label="/bin/sh -c curl https://sh.rustup.rs -sSf | sh -s -- --default-toolchain stable -y" shape="box"];
  "sha256:c64b4156d2c29ef5245834d5a18445b92518c538960872c2086442c25d77bb6f" [label="/bin/sh -c echo \"source ~/.cargo/env\" >> ~/.bashrc" shape="box"];
  "sha256:a9ededaea4aadee40865cb155e8f8b5c1c90b2b74ff50696ed6e91f240c2db79" [label="/bin/sh -c ~/.cargo/bin/rustup install beta" shape="box"];
  "sha256:a8b3a1d4fd9a9c090087511d96e56a311c202469ba7f6faeb8403c03017fb9e4" [label="/bin/sh -c ~/.cargo/bin/rustup install nightly" shape="box"];
  "sha256:c083750244f74e2313e96fc2e92380c785a932fb91aa6d450e9a592e8576e867" [label="/bin/sh -c ~/.cargo/bin/rustup run stable cargo install cargo-tarpaulin -j8" shape="box"];
  "sha256:e1e1e555771f6e4ccc97f180d6460a9c97418c99af6876764bddc579042ebcda" [label="/bin/sh -c git clone https://github.com/ELD/Aluminum-rs /app" shape="box"];
  "sha256:e07d1bbd54e5ec03964eb5f41f6272ea8f053a324b7ea6bd0f812d63fee2f65a" [label="mkdir{path=/app}" shape="note"];
  "sha256:e60d7581585c01a819315780e76f74135f59ae4233313645452a12bb305963d6" [label="/bin/sh -c ~/.cargo/bin/rustup run stable cargo fetch" shape="box"];
  "sha256:13d2601c31226e279aaec3390787466eb66f6828d742919865853096357a372e" [label="/bin/sh -c ~/.cargo/bin/rustup run beta cargo fetch" shape="box"];
  "sha256:469f049ffb51656fee71babd3e055d21824b41f0c5ebf060d17a2e2ce2f34806" [label="/bin/sh -c ~/.cargo/bin/rustup run nightly cargo fetch" shape="box"];
  "sha256:dc704bbdc1bc5fbd0cd1d9169281ce68efe54eda1a3983fb7a29df2643bf5b48" [label="/bin/sh -c rm -rf /app" shape="box"];
  "sha256:a8e753d694fa77fbaf895712177819a8120c57b52a395feead7738e8efa186cd" [label="/bin/sh -c apt-get clean" shape="box"];
  "sha256:4514b3f6580e51fb8a5745f8f16706331db3c633f0205d4d06ca75920154b20c" [label="sha256:4514b3f6580e51fb8a5745f8f16706331db3c633f0205d4d06ca75920154b20c" shape="plaintext"];
  "sha256:3e8b14c1ee67e93c6d965fbc7819462f4f1120944f41dafb7b2870f4fbb30dbe" -> "sha256:d1b07928e7341fd2c65a4c1efe9613dfd730c4b2af033f02c6639123e875a713" [label=""];
  "sha256:d1b07928e7341fd2c65a4c1efe9613dfd730c4b2af033f02c6639123e875a713" -> "sha256:fd9cfd169870ea0b6fef3978a24004d1d898bad485dc633bc3dcd81390c2381f" [label=""];
  "sha256:fd9cfd169870ea0b6fef3978a24004d1d898bad485dc633bc3dcd81390c2381f" -> "sha256:4773c7396ebc66581f20c31f039d38d62b96acc6e32ed5673c0402c3d657cf22" [label=""];
  "sha256:4773c7396ebc66581f20c31f039d38d62b96acc6e32ed5673c0402c3d657cf22" -> "sha256:c64b4156d2c29ef5245834d5a18445b92518c538960872c2086442c25d77bb6f" [label=""];
  "sha256:c64b4156d2c29ef5245834d5a18445b92518c538960872c2086442c25d77bb6f" -> "sha256:a9ededaea4aadee40865cb155e8f8b5c1c90b2b74ff50696ed6e91f240c2db79" [label=""];
  "sha256:a9ededaea4aadee40865cb155e8f8b5c1c90b2b74ff50696ed6e91f240c2db79" -> "sha256:a8b3a1d4fd9a9c090087511d96e56a311c202469ba7f6faeb8403c03017fb9e4" [label=""];
  "sha256:a8b3a1d4fd9a9c090087511d96e56a311c202469ba7f6faeb8403c03017fb9e4" -> "sha256:c083750244f74e2313e96fc2e92380c785a932fb91aa6d450e9a592e8576e867" [label=""];
  "sha256:c083750244f74e2313e96fc2e92380c785a932fb91aa6d450e9a592e8576e867" -> "sha256:e1e1e555771f6e4ccc97f180d6460a9c97418c99af6876764bddc579042ebcda" [label=""];
  "sha256:e1e1e555771f6e4ccc97f180d6460a9c97418c99af6876764bddc579042ebcda" -> "sha256:e07d1bbd54e5ec03964eb5f41f6272ea8f053a324b7ea6bd0f812d63fee2f65a" [label=""];
  "sha256:e07d1bbd54e5ec03964eb5f41f6272ea8f053a324b7ea6bd0f812d63fee2f65a" -> "sha256:e60d7581585c01a819315780e76f74135f59ae4233313645452a12bb305963d6" [label=""];
  "sha256:e60d7581585c01a819315780e76f74135f59ae4233313645452a12bb305963d6" -> "sha256:13d2601c31226e279aaec3390787466eb66f6828d742919865853096357a372e" [label=""];
  "sha256:13d2601c31226e279aaec3390787466eb66f6828d742919865853096357a372e" -> "sha256:469f049ffb51656fee71babd3e055d21824b41f0c5ebf060d17a2e2ce2f34806" [label=""];
  "sha256:469f049ffb51656fee71babd3e055d21824b41f0c5ebf060d17a2e2ce2f34806" -> "sha256:dc704bbdc1bc5fbd0cd1d9169281ce68efe54eda1a3983fb7a29df2643bf5b48" [label=""];
  "sha256:dc704bbdc1bc5fbd0cd1d9169281ce68efe54eda1a3983fb7a29df2643bf5b48" -> "sha256:a8e753d694fa77fbaf895712177819a8120c57b52a395feead7738e8efa186cd" [label=""];
  "sha256:a8e753d694fa77fbaf895712177819a8120c57b52a395feead7738e8efa186cd" -> "sha256:4514b3f6580e51fb8a5745f8f16706331db3c633f0205d4d06ca75920154b20c" [label=""];
}

