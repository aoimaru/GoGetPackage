[app/sources/371656759.Dockerfile]
digraph {
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:69ee6260c9a35ce903d2ee4ebc7e25a744a9b03a32aeede060dc9f8c88abb346" [label="/bin/bash -c echo root:$rootpassword | chpasswd" shape="box"];
  "sha256:69c711b0eba73c7fb2048a0e2200df23922d15889ea5ee5483feef90fd43c368" [label="/bin/bash -c apt-get update -y" shape="box"];
  "sha256:30657c216e13c88419e90e9bf46fdb7290b4b7bfc92a9cb691fe648df9ff0aa1" [label="/bin/bash -c apt-get install -y git pkg-config make g++ rpm librpm-dev libpam0g-dev libssl-dev libkrb5-dev;" shape="box"];
  "sha256:ba01dfce7ca352f3c8dde1161683124813bc7e686a58cf41f52976ab34bf529f" [label="/bin/bash -c git clone https://github.com/$fork/omi.git -b $branch;     cd omi;     pushd Unix;     ./configure;     make -j;     make install;     popd;" shape="box"];
  "sha256:6c8c028c7781e5f96b2571c85495d27afa1592042d84255d1b3c3cc459116e53" [label="sha256:6c8c028c7781e5f96b2571c85495d27afa1592042d84255d1b3c3cc459116e53" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:69ee6260c9a35ce903d2ee4ebc7e25a744a9b03a32aeede060dc9f8c88abb346" [label=""];
  "sha256:69ee6260c9a35ce903d2ee4ebc7e25a744a9b03a32aeede060dc9f8c88abb346" -> "sha256:69c711b0eba73c7fb2048a0e2200df23922d15889ea5ee5483feef90fd43c368" [label=""];
  "sha256:69c711b0eba73c7fb2048a0e2200df23922d15889ea5ee5483feef90fd43c368" -> "sha256:30657c216e13c88419e90e9bf46fdb7290b4b7bfc92a9cb691fe648df9ff0aa1" [label=""];
  "sha256:30657c216e13c88419e90e9bf46fdb7290b4b7bfc92a9cb691fe648df9ff0aa1" -> "sha256:ba01dfce7ca352f3c8dde1161683124813bc7e686a58cf41f52976ab34bf529f" [label=""];
  "sha256:ba01dfce7ca352f3c8dde1161683124813bc7e686a58cf41f52976ab34bf529f" -> "sha256:6c8c028c7781e5f96b2571c85495d27afa1592042d84255d1b3c3cc459116e53" [label=""];
}

