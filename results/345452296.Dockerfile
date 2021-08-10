[app/sources/345452296.Dockerfile]
digraph {
  "sha256:e5da79d0467d442f6a45057853f321cbe2b44afd79ea53a437a91b28febd92cb" [label="docker-image://docker.io/bitnami/minideb-extras-base:stretch-r283@sha256:29c67b81fc88dc4a3eda28e2ab6a98c70935ab09a22fa1e69b39fbbf5e9abe90" shape="ellipse"];
  "sha256:7ecf065c7e2ac7acfd84c700362ab8b09d60012be4edb4a945b8544a9c6a55de" [label="/bin/sh -c install_packages libaio1 libc6 libgcc1 libjemalloc1 libncurses5 libssl1.0.2 libstdc++6 libtinfo5 zlib1g" shape="box"];
  "sha256:3673506a8b9c174f6062652a242ab22eaa396c4b1210dc265a56d2da29f886b6" [label="/bin/sh -c . ./libcomponent.sh && component_unpack \"mariadb\" \"10.1.40-1\" --checksum 4e0abc16fd401a451bd999b7769d29b4467f47fec8a95fddae7542e0006e395c" shape="box"];
  "sha256:996ea095974e32d6aa26dcf3f9cd95ff4059803509d5b14370b83ba81440270f" [label="/bin/sh -c mkdir /docker-entrypoint-initdb.d" shape="box"];
  "sha256:efc06c4ea4745206123d71c79e00578dd77519e5ce7d086b688be27a5fc57a49" [label="local://context" shape="ellipse"];
  "sha256:aa7cc57c09ae90407622892c76ec53f7636737761916d1be937c46e794c2e811" [label="copy{src=/rootfs, dest=/}" shape="note"];
  "sha256:901f625615c3e36f9a5f4b6b383cec6c6d24a7b3a163f04c63a510e7dfca6ac1" [label="/bin/sh -c /postunpack.sh" shape="box"];
  "sha256:780d8a09516183f2138fdc39f0df78fb49a0d16099543af938b00db41bc72d2e" [label="sha256:780d8a09516183f2138fdc39f0df78fb49a0d16099543af938b00db41bc72d2e" shape="plaintext"];
  "sha256:e5da79d0467d442f6a45057853f321cbe2b44afd79ea53a437a91b28febd92cb" -> "sha256:7ecf065c7e2ac7acfd84c700362ab8b09d60012be4edb4a945b8544a9c6a55de" [label=""];
  "sha256:7ecf065c7e2ac7acfd84c700362ab8b09d60012be4edb4a945b8544a9c6a55de" -> "sha256:3673506a8b9c174f6062652a242ab22eaa396c4b1210dc265a56d2da29f886b6" [label=""];
  "sha256:3673506a8b9c174f6062652a242ab22eaa396c4b1210dc265a56d2da29f886b6" -> "sha256:996ea095974e32d6aa26dcf3f9cd95ff4059803509d5b14370b83ba81440270f" [label=""];
  "sha256:996ea095974e32d6aa26dcf3f9cd95ff4059803509d5b14370b83ba81440270f" -> "sha256:aa7cc57c09ae90407622892c76ec53f7636737761916d1be937c46e794c2e811" [label=""];
  "sha256:efc06c4ea4745206123d71c79e00578dd77519e5ce7d086b688be27a5fc57a49" -> "sha256:aa7cc57c09ae90407622892c76ec53f7636737761916d1be937c46e794c2e811" [label=""];
  "sha256:aa7cc57c09ae90407622892c76ec53f7636737761916d1be937c46e794c2e811" -> "sha256:901f625615c3e36f9a5f4b6b383cec6c6d24a7b3a163f04c63a510e7dfca6ac1" [label=""];
  "sha256:901f625615c3e36f9a5f4b6b383cec6c6d24a7b3a163f04c63a510e7dfca6ac1" -> "sha256:780d8a09516183f2138fdc39f0df78fb49a0d16099543af938b00db41bc72d2e" [label=""];
}

