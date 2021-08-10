[app/sources/211121940.Dockerfile]
digraph {
  "sha256:9f8345bd9f7336cd2b33f2de74ce8e48b299f0cbdb4f7629978e834d23c988ba" [label="docker-image://docker.io/rajaorg/compiler:ubuntu-clang-base" shape="ellipse"];
  "sha256:748086b5fd8bef90f3d8552a62671d017522376f47a73ff6d62d02a1022f6c48" [label="/bin/sh -c sudo apt-get -qq install -y --no-install-recommends          g++-4.9          g++-4.9-multilib     && sudo update-alternatives --install /usr/bin/g++ g++ /usr/bin/g++-4.9 100     && sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-4.9 100     && sudo update-alternatives --install /usr/bin/cc cc /usr/bin/gcc-4.9 100     && sudo update-alternatives --install /usr/bin/c++ c++ /usr/bin/g++-4.9 100" shape="box"];
  "sha256:1e66c02d35e69f147f88c71dd4342c24b91a6ecdd8b810833208367d9c110295" [label="mkdir{path=/home/raja}" shape="note"];
  "sha256:68439112d7e02e1fd5544445e08402dc41dce4c563b8f2aa7b0d2bf53e7632cb" [label="sha256:68439112d7e02e1fd5544445e08402dc41dce4c563b8f2aa7b0d2bf53e7632cb" shape="plaintext"];
  "sha256:9f8345bd9f7336cd2b33f2de74ce8e48b299f0cbdb4f7629978e834d23c988ba" -> "sha256:748086b5fd8bef90f3d8552a62671d017522376f47a73ff6d62d02a1022f6c48" [label=""];
  "sha256:748086b5fd8bef90f3d8552a62671d017522376f47a73ff6d62d02a1022f6c48" -> "sha256:1e66c02d35e69f147f88c71dd4342c24b91a6ecdd8b810833208367d9c110295" [label=""];
  "sha256:1e66c02d35e69f147f88c71dd4342c24b91a6ecdd8b810833208367d9c110295" -> "sha256:68439112d7e02e1fd5544445e08402dc41dce4c563b8f2aa7b0d2bf53e7632cb" [label=""];
}

