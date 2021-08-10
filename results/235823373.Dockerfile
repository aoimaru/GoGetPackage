[app/sources/235823373.Dockerfile]
digraph {
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:3045850bbeebddc4d3b07e7fbf696610fa6c70a57d038899f891ebbc595b033f" [label="/bin/sh -c apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF" shape="box"];
  "sha256:c150d7d36c4348c6caa9a8627e73f34a025e822836356e5173aac60322976ba5" [label="/bin/sh -c echo \"deb http://download.mono-project.com/repo/debian wheezy main\" | tee /etc/apt/sources.list.d/mono-xamarin.list" shape="box"];
  "sha256:ea0dcde3f7e7057b41891ca81d5c8b4b194a7b786fa01c7b510631d00e13eb8b" [label="/bin/sh -c echo \"deb http://download.mono-project.com/repo/debian wheezy-apache24-compat main\" | tee -a /etc/apt/sources.list.d/mono-xamarin.list" shape="box"];
  "sha256:4c4bdf1a07cf19c4aebf6e976857c6eee9d1813961706411705d787948895a38" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:4a4160eab1bd2ba66b62e2d3fa10a8541ab52870135c344e559a638b383081e2" [label="/bin/sh -c apt-get install -y apt-transport-https" shape="box"];
  "sha256:d6a3446b7cc81b8f1171d50775e791526cbbb3235ca2b3ea488f835e3cb6a638" [label="/bin/sh -c sh -c 'echo \"deb [arch=amd64] https://apt-mo.trafficmanager.net/repos/dotnet-release/ xenial main\" > /etc/apt/sources.list.d/dotnetdev.list'" shape="box"];
  "sha256:34b31a70957451aa8750e0d31b22bac63f78fcbd41d7ea3def817caa1cd96cae" [label="/bin/sh -c apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 417A0893" shape="box"];
  "sha256:8b2701bd2af74804381e317303124d00da8e94fcb62e752afff0dad89be1d018" [label="/bin/sh -c apt-get install -y apt-transport-https" shape="box"];
  "sha256:8944d3fd37fe947a28f184e27a54928e4a9ee8aaa9382cd1158a836fc8e80df5" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:0ce0eb9ee48ef4b319940c6e473123fc31b7199e60272e2c94526a65cbec1bed" [label="/bin/sh -c apt-get install -y dotnet-dev-1.0.0-preview2.1-003177" shape="box"];
  "sha256:55fc9fc7e98c59ed26f2087dcef79a66958a99688d29637548b9abcff2e7705b" [label="/bin/sh -c apt-get install -y dotnet-dev-1.0.0-preview2-003156" shape="box"];
  "sha256:ed68c3e2efb2f41e0e0a002c616e9bf858741f97ef0c9e58fab48a629aedcb94" [label="/bin/sh -c apt-get install -y dotnet-dev-1.0.1" shape="box"];
  "sha256:a1ccc3698315192866b7e0afe363814ab7fe5f6e9b2d60c2e29cd3a2f8a3568b" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends         build-essential         cmake         git         wget         vim         python-dev         python-numpy         python-pip         python-yaml" shape="box"];
  "sha256:e351235378c5e11e03cb3254499e8a8b116fcc006c087a83bb7d6552db60b411" [label="/bin/sh -c apt-get install -y bison curl nfs-common" shape="box"];
  "sha256:a3451c7e30dcde8717df9803a9b4a6d84faf9103d7d9c2bddd92c8fe20361bba" [label="/bin/sh -c pip install --upgrade pip;" shape="box"];
  "sha256:b1c4ba618b6d2d3398401a8d76153ad1b6d916b41372aad46cb5fc5649a2fce6" [label="/bin/sh -c pip install setuptools;" shape="box"];
  "sha256:c67d48805276bc134607f1c11562a02da079efc4149ac8f78ff0387aa4229577" [label="/bin/sh -c locale-gen en_US.UTF-8" shape="box"];
  "sha256:f3e253d82a78a58cdb91dbfdb845c33fbf1e9c9c17e586a52254e8d29e08cda3" [label="/bin/sh -c update-locale LANG=en_US.UTF-8" shape="box"];
  "sha256:2371a57d0436b47b19209b4eac2d5a69cf98405d5800a8f96af0f376148e2fa6" [label="/bin/sh -c pip install flask" shape="box"];
  "sha256:44fdb0faa784f05b8e3049995e70d4c343f15b1878eb5f323374ea19f2e943f4" [label="/bin/sh -c pip install flask.restful" shape="box"];
  "sha256:91825a1e92d82017bea228df9cdcaf22262b5477f7c4c9d01eaabe6e9753856b" [label="sha256:91825a1e92d82017bea228df9cdcaf22262b5477f7c4c9d01eaabe6e9753856b" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:3045850bbeebddc4d3b07e7fbf696610fa6c70a57d038899f891ebbc595b033f" [label=""];
  "sha256:3045850bbeebddc4d3b07e7fbf696610fa6c70a57d038899f891ebbc595b033f" -> "sha256:c150d7d36c4348c6caa9a8627e73f34a025e822836356e5173aac60322976ba5" [label=""];
  "sha256:c150d7d36c4348c6caa9a8627e73f34a025e822836356e5173aac60322976ba5" -> "sha256:ea0dcde3f7e7057b41891ca81d5c8b4b194a7b786fa01c7b510631d00e13eb8b" [label=""];
  "sha256:ea0dcde3f7e7057b41891ca81d5c8b4b194a7b786fa01c7b510631d00e13eb8b" -> "sha256:4c4bdf1a07cf19c4aebf6e976857c6eee9d1813961706411705d787948895a38" [label=""];
  "sha256:4c4bdf1a07cf19c4aebf6e976857c6eee9d1813961706411705d787948895a38" -> "sha256:4a4160eab1bd2ba66b62e2d3fa10a8541ab52870135c344e559a638b383081e2" [label=""];
  "sha256:4a4160eab1bd2ba66b62e2d3fa10a8541ab52870135c344e559a638b383081e2" -> "sha256:d6a3446b7cc81b8f1171d50775e791526cbbb3235ca2b3ea488f835e3cb6a638" [label=""];
  "sha256:d6a3446b7cc81b8f1171d50775e791526cbbb3235ca2b3ea488f835e3cb6a638" -> "sha256:34b31a70957451aa8750e0d31b22bac63f78fcbd41d7ea3def817caa1cd96cae" [label=""];
  "sha256:34b31a70957451aa8750e0d31b22bac63f78fcbd41d7ea3def817caa1cd96cae" -> "sha256:8b2701bd2af74804381e317303124d00da8e94fcb62e752afff0dad89be1d018" [label=""];
  "sha256:8b2701bd2af74804381e317303124d00da8e94fcb62e752afff0dad89be1d018" -> "sha256:8944d3fd37fe947a28f184e27a54928e4a9ee8aaa9382cd1158a836fc8e80df5" [label=""];
  "sha256:8944d3fd37fe947a28f184e27a54928e4a9ee8aaa9382cd1158a836fc8e80df5" -> "sha256:0ce0eb9ee48ef4b319940c6e473123fc31b7199e60272e2c94526a65cbec1bed" [label=""];
  "sha256:0ce0eb9ee48ef4b319940c6e473123fc31b7199e60272e2c94526a65cbec1bed" -> "sha256:55fc9fc7e98c59ed26f2087dcef79a66958a99688d29637548b9abcff2e7705b" [label=""];
  "sha256:55fc9fc7e98c59ed26f2087dcef79a66958a99688d29637548b9abcff2e7705b" -> "sha256:ed68c3e2efb2f41e0e0a002c616e9bf858741f97ef0c9e58fab48a629aedcb94" [label=""];
  "sha256:ed68c3e2efb2f41e0e0a002c616e9bf858741f97ef0c9e58fab48a629aedcb94" -> "sha256:a1ccc3698315192866b7e0afe363814ab7fe5f6e9b2d60c2e29cd3a2f8a3568b" [label=""];
  "sha256:a1ccc3698315192866b7e0afe363814ab7fe5f6e9b2d60c2e29cd3a2f8a3568b" -> "sha256:e351235378c5e11e03cb3254499e8a8b116fcc006c087a83bb7d6552db60b411" [label=""];
  "sha256:e351235378c5e11e03cb3254499e8a8b116fcc006c087a83bb7d6552db60b411" -> "sha256:a3451c7e30dcde8717df9803a9b4a6d84faf9103d7d9c2bddd92c8fe20361bba" [label=""];
  "sha256:a3451c7e30dcde8717df9803a9b4a6d84faf9103d7d9c2bddd92c8fe20361bba" -> "sha256:b1c4ba618b6d2d3398401a8d76153ad1b6d916b41372aad46cb5fc5649a2fce6" [label=""];
  "sha256:b1c4ba618b6d2d3398401a8d76153ad1b6d916b41372aad46cb5fc5649a2fce6" -> "sha256:c67d48805276bc134607f1c11562a02da079efc4149ac8f78ff0387aa4229577" [label=""];
  "sha256:c67d48805276bc134607f1c11562a02da079efc4149ac8f78ff0387aa4229577" -> "sha256:f3e253d82a78a58cdb91dbfdb845c33fbf1e9c9c17e586a52254e8d29e08cda3" [label=""];
  "sha256:f3e253d82a78a58cdb91dbfdb845c33fbf1e9c9c17e586a52254e8d29e08cda3" -> "sha256:2371a57d0436b47b19209b4eac2d5a69cf98405d5800a8f96af0f376148e2fa6" [label=""];
  "sha256:2371a57d0436b47b19209b4eac2d5a69cf98405d5800a8f96af0f376148e2fa6" -> "sha256:44fdb0faa784f05b8e3049995e70d4c343f15b1878eb5f323374ea19f2e943f4" [label=""];
  "sha256:44fdb0faa784f05b8e3049995e70d4c343f15b1878eb5f323374ea19f2e943f4" -> "sha256:91825a1e92d82017bea228df9cdcaf22262b5477f7c4c9d01eaabe6e9753856b" [label=""];
}

