[app/sources/319592106.Dockerfile]
digraph {
  "sha256:7e37ccbfac51170b57c53a3310a391035e6a249a2017773557908f59d81c50a2" [label="local://context" shape="ellipse"];
  "sha256:d704e41d1d03445e0ff7cdf943b1f5282ca8adde87edba6ca133d1ed9023fe06" [label="copy{src=/bin/yggdrasil-linux-amd64, dest=/yggdrasil}" shape="note"];
  "sha256:e718e8eea1656fa816d19d3817f94cf03a9743c876d18ab2534e1ee598cdafc8" [label="sha256:e718e8eea1656fa816d19d3817f94cf03a9743c876d18ab2534e1ee598cdafc8" shape="plaintext"];
  "sha256:7e37ccbfac51170b57c53a3310a391035e6a249a2017773557908f59d81c50a2" -> "sha256:d704e41d1d03445e0ff7cdf943b1f5282ca8adde87edba6ca133d1ed9023fe06" [label=""];
  "sha256:d704e41d1d03445e0ff7cdf943b1f5282ca8adde87edba6ca133d1ed9023fe06" -> "sha256:e718e8eea1656fa816d19d3817f94cf03a9743c876d18ab2534e1ee598cdafc8" [label=""];
}

