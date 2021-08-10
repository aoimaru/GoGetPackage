[app/sources/409119174.Dockerfile]
digraph {
  "sha256:262e47fc4a008b6a006ec796412324d1f783bb3ff610bcc8dd775f8b798527e7" [label="docker-image://docker.io/nickstenning/java7:latest" shape="ellipse"];
  "sha256:b256de7e31db177f516cb9c1680625ce1d12edc97ad3bc574f228df737677e2b" [label="/bin/sh -c apt-get install -y curl unzip vim" shape="box"];
  "sha256:5cb46d36f70926c1901fe46ee4fd3eef05a7c3efed3cce7cb216102cdf6a652f" [label="/bin/sh -c adduser hipster --home /home/hipster --gecos \"\" --disabled-password" shape="box"];
  "sha256:da9b3fcd4be91b0f8a78994eb11631d0cea03dcb5fa0937281bbfb4734537ed1" [label="mkdir{path=/home/hipster}" shape="note"];
  "sha256:f03e9c314d7870873f25874572655519f284cb02ef69e37e1a0d2a510b387e6e" [label="/bin/sh -c mkdir /home/hipster/bin" shape="box"];
  "sha256:8baaf27b9afe4065876b468a40f19a82e930c938b04e0f125533e2d595ee0c3e" [label="/bin/sh -c curl -s get.gvmtool.net | bash" shape="box"];
  "sha256:8b0974c9cfb31282cec43b304aae3790069cfb87042f2380b8d2d0d9cac61f37" [label="/bin/sh -c bash -c \"source ~/.gvm/bin/gvm-init.sh && gvm install gradle; exit 0\"" shape="box"];
  "sha256:cc818fe0801a4be03e50dd86f3550d7f53871ee11d3f3be226489b2b140d87d6" [label="/bin/sh -c bash -c \"source ~/.gvm/bin/gvm-init.sh && gvm install lazybones; exit 0\"" shape="box"];
  "sha256:633ff06d80b315957fb2757d9b23378a85a051dd354a08dd9f8109e6a52a5707" [label="/bin/sh -c bash -c \"source ~/.gvm/bin/gvm-init.sh && gvm install vertx; exit 0\"" shape="box"];
  "sha256:dd25ed7ce0504345cd9e5f6c5f35a299d9e61c63da623ac91de1d475e996a71e" [label="/bin/sh -c bash -c \"source ~/.gvm/bin/gvm-init.sh && gvm install springboot; exit 0\"" shape="box"];
  "sha256:51feb3b249d627f200b1dc15e0623997694eddfaad7b6016fe9542ddd48326a2" [label="/bin/sh -c wget https://raw.githubusercontent.com/technomancy/leiningen/stable/bin/lein -O ~/bin/lein && chmod +x ~/bin/lein" shape="box"];
  "sha256:1270b61667464b29c9ccbeeb144684a2a883455bf826170bb32a7e513ab54240" [label="/bin/sh -c echo \"source /home/hipster/.gvm/bin/gvm-init.sh\" >> /home/hipster/.bashrc" shape="box"];
  "sha256:887fd5a2c2dddc0698b56929163f7e478ede6c26a1a16f00bf4171cd383aaf70" [label="/bin/sh -c echo \"export PATH=$PATH:/home/hipster/bin\" >> /home/hipster/.bashrc" shape="box"];
  "sha256:1e2f64fe06a9dec1cf8fb588ebfebf8cd5d78bb7aac0a4e697086e75eae888dd" [label="sha256:1e2f64fe06a9dec1cf8fb588ebfebf8cd5d78bb7aac0a4e697086e75eae888dd" shape="plaintext"];
  "sha256:262e47fc4a008b6a006ec796412324d1f783bb3ff610bcc8dd775f8b798527e7" -> "sha256:b256de7e31db177f516cb9c1680625ce1d12edc97ad3bc574f228df737677e2b" [label=""];
  "sha256:b256de7e31db177f516cb9c1680625ce1d12edc97ad3bc574f228df737677e2b" -> "sha256:5cb46d36f70926c1901fe46ee4fd3eef05a7c3efed3cce7cb216102cdf6a652f" [label=""];
  "sha256:5cb46d36f70926c1901fe46ee4fd3eef05a7c3efed3cce7cb216102cdf6a652f" -> "sha256:da9b3fcd4be91b0f8a78994eb11631d0cea03dcb5fa0937281bbfb4734537ed1" [label=""];
  "sha256:da9b3fcd4be91b0f8a78994eb11631d0cea03dcb5fa0937281bbfb4734537ed1" -> "sha256:f03e9c314d7870873f25874572655519f284cb02ef69e37e1a0d2a510b387e6e" [label=""];
  "sha256:f03e9c314d7870873f25874572655519f284cb02ef69e37e1a0d2a510b387e6e" -> "sha256:8baaf27b9afe4065876b468a40f19a82e930c938b04e0f125533e2d595ee0c3e" [label=""];
  "sha256:8baaf27b9afe4065876b468a40f19a82e930c938b04e0f125533e2d595ee0c3e" -> "sha256:8b0974c9cfb31282cec43b304aae3790069cfb87042f2380b8d2d0d9cac61f37" [label=""];
  "sha256:8b0974c9cfb31282cec43b304aae3790069cfb87042f2380b8d2d0d9cac61f37" -> "sha256:cc818fe0801a4be03e50dd86f3550d7f53871ee11d3f3be226489b2b140d87d6" [label=""];
  "sha256:cc818fe0801a4be03e50dd86f3550d7f53871ee11d3f3be226489b2b140d87d6" -> "sha256:633ff06d80b315957fb2757d9b23378a85a051dd354a08dd9f8109e6a52a5707" [label=""];
  "sha256:633ff06d80b315957fb2757d9b23378a85a051dd354a08dd9f8109e6a52a5707" -> "sha256:dd25ed7ce0504345cd9e5f6c5f35a299d9e61c63da623ac91de1d475e996a71e" [label=""];
  "sha256:dd25ed7ce0504345cd9e5f6c5f35a299d9e61c63da623ac91de1d475e996a71e" -> "sha256:51feb3b249d627f200b1dc15e0623997694eddfaad7b6016fe9542ddd48326a2" [label=""];
  "sha256:51feb3b249d627f200b1dc15e0623997694eddfaad7b6016fe9542ddd48326a2" -> "sha256:1270b61667464b29c9ccbeeb144684a2a883455bf826170bb32a7e513ab54240" [label=""];
  "sha256:1270b61667464b29c9ccbeeb144684a2a883455bf826170bb32a7e513ab54240" -> "sha256:887fd5a2c2dddc0698b56929163f7e478ede6c26a1a16f00bf4171cd383aaf70" [label=""];
  "sha256:887fd5a2c2dddc0698b56929163f7e478ede6c26a1a16f00bf4171cd383aaf70" -> "sha256:1e2f64fe06a9dec1cf8fb588ebfebf8cd5d78bb7aac0a4e697086e75eae888dd" [label=""];
}

