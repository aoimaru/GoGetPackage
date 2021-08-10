[app/sources/351396304.Dockerfile]
digraph {
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:adba52509743ce6ed45184aa4cc06727a3a9ce439e3456d1a631808122d490ee" [label="/bin/sh -c apt-get update && apt-get install -y software-properties-common" shape="box"];
  "sha256:8580106c7c564c49f58fbddcdfad6a10c05ba544a77e5f8f4a8db254a41670b5" [label="/bin/sh -c locale-gen $LANG" shape="box"];
  "sha256:2a77a220d470772b27f9a5e939b51dc78f746b3a72fd5b91ec419b232700df9b" [label="/bin/sh -c apt-get update && apt-get install git nodejs npm -y" shape="box"];
  "sha256:20f205ee11e38abadbe20c1e7873607c007ef71e003b28f5e93a5595a1536838" [label="sha256:20f205ee11e38abadbe20c1e7873607c007ef71e003b28f5e93a5595a1536838" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:adba52509743ce6ed45184aa4cc06727a3a9ce439e3456d1a631808122d490ee" [label=""];
  "sha256:adba52509743ce6ed45184aa4cc06727a3a9ce439e3456d1a631808122d490ee" -> "sha256:8580106c7c564c49f58fbddcdfad6a10c05ba544a77e5f8f4a8db254a41670b5" [label=""];
  "sha256:8580106c7c564c49f58fbddcdfad6a10c05ba544a77e5f8f4a8db254a41670b5" -> "sha256:2a77a220d470772b27f9a5e939b51dc78f746b3a72fd5b91ec419b232700df9b" [label=""];
  "sha256:2a77a220d470772b27f9a5e939b51dc78f746b3a72fd5b91ec419b232700df9b" -> "sha256:20f205ee11e38abadbe20c1e7873607c007ef71e003b28f5e93a5595a1536838" [label=""];
}

