[app/sources/471621475.Dockerfile]
digraph {
  "sha256:45db4efa825c6378fdefea9bb090fc7435ad8dca06739266c39a5f04021bb957" [label="docker-image://docker.io/devkitpro/devkita64@sha256:b92044b2ee88d83c083438f08dd5a4c44b9d4848126fe2722635d2be2732c83e" shape="ellipse"];
  "sha256:43acd1f63a08b14abb2117bb2857c581ffbebc43e231b06dbbbc55ffcbb67e06" [label="/bin/sh -c sudo apt-get update" shape="box"];
  "sha256:24362ed8d0d84a91fa7cf6731f95fa05ffd73d254faf064e66678c7a1be1f81f" [label="/bin/sh -c sudo apt-get install -y build-essential" shape="box"];
  "sha256:3b8e3eeb3ff09fe8e008dda03065c7c74d00ae940f9dadaae234a3ce56bb8662" [label="/bin/sh -c curl https://sh.rustup.rs -sSf > rust-init.rs" shape="box"];
  "sha256:6c1c35a9d7073fa6b54bee529a2653172db5fabd30c37ce8ee7b7b96fdca99e7" [label="/bin/sh -c chmod +x rust-init.rs" shape="box"];
  "sha256:b5dcb5586cd95cbb012d007a00fb0fa7fe3dec7282ac817f29dbb5b3b2e5489e" [label="/bin/sh -c ./rust-init.rs -y --default-toolchain nightly" shape="box"];
  "sha256:d3ffe7ba93280c1e10cfcfd0369180903aa4e3117844a55e50821cac0f07187a" [label="/bin/sh -c rm rust-init.rs" shape="box"];
  "sha256:db756b4180a5bf180494e8da8a5179059e8747911b888edfff9f57258003408b" [label="/bin/sh -c rustup component add rust-src" shape="box"];
  "sha256:8cebffd2813ee9dc3c6a084df6d094d961c595ca830a9e874eb4e2608de95ac8" [label="/bin/sh -c cargo install xargo" shape="box"];
  "sha256:1d9a6e3843a5d0e72c8febf183415478d7b0cb314dbb7eccbb67a60fd5e34bda" [label="mkdir{path=/workdir}" shape="note"];
  "sha256:06cf0436b3a1743893d313621a780b372f0993427eec894dc16ef86675459e8c" [label="sha256:06cf0436b3a1743893d313621a780b372f0993427eec894dc16ef86675459e8c" shape="plaintext"];
  "sha256:45db4efa825c6378fdefea9bb090fc7435ad8dca06739266c39a5f04021bb957" -> "sha256:43acd1f63a08b14abb2117bb2857c581ffbebc43e231b06dbbbc55ffcbb67e06" [label=""];
  "sha256:43acd1f63a08b14abb2117bb2857c581ffbebc43e231b06dbbbc55ffcbb67e06" -> "sha256:24362ed8d0d84a91fa7cf6731f95fa05ffd73d254faf064e66678c7a1be1f81f" [label=""];
  "sha256:24362ed8d0d84a91fa7cf6731f95fa05ffd73d254faf064e66678c7a1be1f81f" -> "sha256:3b8e3eeb3ff09fe8e008dda03065c7c74d00ae940f9dadaae234a3ce56bb8662" [label=""];
  "sha256:3b8e3eeb3ff09fe8e008dda03065c7c74d00ae940f9dadaae234a3ce56bb8662" -> "sha256:6c1c35a9d7073fa6b54bee529a2653172db5fabd30c37ce8ee7b7b96fdca99e7" [label=""];
  "sha256:6c1c35a9d7073fa6b54bee529a2653172db5fabd30c37ce8ee7b7b96fdca99e7" -> "sha256:b5dcb5586cd95cbb012d007a00fb0fa7fe3dec7282ac817f29dbb5b3b2e5489e" [label=""];
  "sha256:b5dcb5586cd95cbb012d007a00fb0fa7fe3dec7282ac817f29dbb5b3b2e5489e" -> "sha256:d3ffe7ba93280c1e10cfcfd0369180903aa4e3117844a55e50821cac0f07187a" [label=""];
  "sha256:d3ffe7ba93280c1e10cfcfd0369180903aa4e3117844a55e50821cac0f07187a" -> "sha256:db756b4180a5bf180494e8da8a5179059e8747911b888edfff9f57258003408b" [label=""];
  "sha256:db756b4180a5bf180494e8da8a5179059e8747911b888edfff9f57258003408b" -> "sha256:8cebffd2813ee9dc3c6a084df6d094d961c595ca830a9e874eb4e2608de95ac8" [label=""];
  "sha256:8cebffd2813ee9dc3c6a084df6d094d961c595ca830a9e874eb4e2608de95ac8" -> "sha256:1d9a6e3843a5d0e72c8febf183415478d7b0cb314dbb7eccbb67a60fd5e34bda" [label=""];
  "sha256:1d9a6e3843a5d0e72c8febf183415478d7b0cb314dbb7eccbb67a60fd5e34bda" -> "sha256:06cf0436b3a1743893d313621a780b372f0993427eec894dc16ef86675459e8c" [label=""];
}

