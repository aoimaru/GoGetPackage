[app/sources/332271383.Dockerfile]
digraph {
  "sha256:5e691c7ba4998fa4b60d1218bbc4ed9845bfa527d7d91b0c48922bbea45ce425" [label="docker-image://docker.io/library/ubuntu:18.04" shape="ellipse"];
  "sha256:1ec6971827daffa3c92ed224f104a623b4b41abd73ccc25c363b49ff85a5447a" [label="/bin/sh -c apt update && apt install -y libnet-ssleay-perl && rm -rf /var/cache/apt/* && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:52a49ff70d22ae614eb5a06abfc7afb8308af0916b67f160f205a5f1b76848eb" [label="/bin/sh -c mkdir /nikto" shape="box"];
  "sha256:198f6b871c068a5d05bbfe883d7771d555682540e5cb15b8314d29b44a6782e1" [label="/bin/sh -c apt update && apt install -y git && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:0eca4ca21c48e8402428cc51769a839cc32f19962e19b648dfa5f380ad74f839" [label="/bin/sh -c git clone --depth=1 https://github.com/sullo/nikto.git && rm -rf /nikto/.git/" shape="box"];
  "sha256:2da6ab9a1bf5bf2a7c0d1f8589eba18d9da463ea086386997ec15999e370e7e9" [label="copy{src=/nikto, dest=/nikto}" shape="note"];
  "sha256:55ee2133ebc6c66c4a8ee558dfc192b16e24bf322fffb481de0be101b3e40683" [label="sha256:55ee2133ebc6c66c4a8ee558dfc192b16e24bf322fffb481de0be101b3e40683" shape="plaintext"];
  "sha256:5e691c7ba4998fa4b60d1218bbc4ed9845bfa527d7d91b0c48922bbea45ce425" -> "sha256:1ec6971827daffa3c92ed224f104a623b4b41abd73ccc25c363b49ff85a5447a" [label=""];
  "sha256:1ec6971827daffa3c92ed224f104a623b4b41abd73ccc25c363b49ff85a5447a" -> "sha256:52a49ff70d22ae614eb5a06abfc7afb8308af0916b67f160f205a5f1b76848eb" [label=""];
  "sha256:5e691c7ba4998fa4b60d1218bbc4ed9845bfa527d7d91b0c48922bbea45ce425" -> "sha256:198f6b871c068a5d05bbfe883d7771d555682540e5cb15b8314d29b44a6782e1" [label=""];
  "sha256:198f6b871c068a5d05bbfe883d7771d555682540e5cb15b8314d29b44a6782e1" -> "sha256:0eca4ca21c48e8402428cc51769a839cc32f19962e19b648dfa5f380ad74f839" [label=""];
  "sha256:52a49ff70d22ae614eb5a06abfc7afb8308af0916b67f160f205a5f1b76848eb" -> "sha256:2da6ab9a1bf5bf2a7c0d1f8589eba18d9da463ea086386997ec15999e370e7e9" [label=""];
  "sha256:0eca4ca21c48e8402428cc51769a839cc32f19962e19b648dfa5f380ad74f839" -> "sha256:2da6ab9a1bf5bf2a7c0d1f8589eba18d9da463ea086386997ec15999e370e7e9" [label=""];
  "sha256:2da6ab9a1bf5bf2a7c0d1f8589eba18d9da463ea086386997ec15999e370e7e9" -> "sha256:55ee2133ebc6c66c4a8ee558dfc192b16e24bf322fffb481de0be101b3e40683" [label=""];
}

