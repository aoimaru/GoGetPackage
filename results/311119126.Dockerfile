[app/sources/311119126.Dockerfile]
digraph {
  "sha256:8526c548d78f43227e5f2ed4b4c58c8fa98369051cab58bc8d334a4289f71b5f" [label="docker-image://docker.io/rnix/openssl-gost:latest" shape="ellipse"];
  "sha256:939b140a123def81e15a1f181240baeed32ba9aa8810faface6d333e37eed8dd" [label="docker-image://docker.io/library/debian:stretch-slim" shape="ellipse"];
  "sha256:2e6ace96dda576ac881751e1fab8861c8f420c213ec7ed1d05a46dc64c165b4f" [label="copy{src=/usr/local/ssl, dest=/usr/local/ssl}" shape="note"];
  "sha256:1b789d279fdd5f89684cc7f235b8f611b4e8e605f4cd39471849c7b62af59d87" [label="copy{src=/usr/local/ssl/bin/openssl, dest=/usr/bin/openssl}" shape="note"];
  "sha256:173f8ffbc8060713ac3a1ddb5e3b8dca5232aab0e95a61795d7039907bd7a0a6" [label="copy{src=/usr/local/curl, dest=/usr/local/curl}" shape="note"];
  "sha256:7497390f21534ba9139f0dc1b9352625b7b9503c91bbf44cb244cd13c2dc1552" [label="copy{src=/usr/local/curl/bin/curl, dest=/usr/bin/curl}" shape="note"];
  "sha256:a2167ee3f73b5cc3e123c82c053ad5c6021be04da3c02da2c6aa12360490ec73" [label="copy{src=/usr/local/bin/gostsum, dest=/usr/local/bin/gostsum}" shape="note"];
  "sha256:0d301e5847719d8a912d26690e168c89c01e6db4b189cce3392e752fedafb67f" [label="copy{src=/usr/local/bin/gost12sum, dest=/usr/local/bin/gost12sum}" shape="note"];
  "sha256:8d560a897d5d62e33202cccf7b8d2bcb750d443cc9dfef33115cc6127ec3d05c" [label="copy{src=/usr/local/ssl/lib/pkgconfig/*, dest=/usr/lib/x86_64-linux-gnu/pkgconfig/}" shape="note"];
  "sha256:4390814acc7a1a34e0cd2c92ba4c200f42556d4935b22ef9942d3c2d05f71517" [label="copy{src=/usr/local/curl/lib/pkgconfig/*, dest=/usr/lib/x86_64-linux-gnu/pkgconfig/}" shape="note"];
  "sha256:6dd504e9e41f74c26cb76f6a2506d62c3124c226a7029e7fd02507a723886914" [label="sha256:6dd504e9e41f74c26cb76f6a2506d62c3124c226a7029e7fd02507a723886914" shape="plaintext"];
  "sha256:939b140a123def81e15a1f181240baeed32ba9aa8810faface6d333e37eed8dd" -> "sha256:2e6ace96dda576ac881751e1fab8861c8f420c213ec7ed1d05a46dc64c165b4f" [label=""];
  "sha256:8526c548d78f43227e5f2ed4b4c58c8fa98369051cab58bc8d334a4289f71b5f" -> "sha256:2e6ace96dda576ac881751e1fab8861c8f420c213ec7ed1d05a46dc64c165b4f" [label=""];
  "sha256:2e6ace96dda576ac881751e1fab8861c8f420c213ec7ed1d05a46dc64c165b4f" -> "sha256:1b789d279fdd5f89684cc7f235b8f611b4e8e605f4cd39471849c7b62af59d87" [label=""];
  "sha256:8526c548d78f43227e5f2ed4b4c58c8fa98369051cab58bc8d334a4289f71b5f" -> "sha256:1b789d279fdd5f89684cc7f235b8f611b4e8e605f4cd39471849c7b62af59d87" [label=""];
  "sha256:1b789d279fdd5f89684cc7f235b8f611b4e8e605f4cd39471849c7b62af59d87" -> "sha256:173f8ffbc8060713ac3a1ddb5e3b8dca5232aab0e95a61795d7039907bd7a0a6" [label=""];
  "sha256:8526c548d78f43227e5f2ed4b4c58c8fa98369051cab58bc8d334a4289f71b5f" -> "sha256:173f8ffbc8060713ac3a1ddb5e3b8dca5232aab0e95a61795d7039907bd7a0a6" [label=""];
  "sha256:173f8ffbc8060713ac3a1ddb5e3b8dca5232aab0e95a61795d7039907bd7a0a6" -> "sha256:7497390f21534ba9139f0dc1b9352625b7b9503c91bbf44cb244cd13c2dc1552" [label=""];
  "sha256:8526c548d78f43227e5f2ed4b4c58c8fa98369051cab58bc8d334a4289f71b5f" -> "sha256:7497390f21534ba9139f0dc1b9352625b7b9503c91bbf44cb244cd13c2dc1552" [label=""];
  "sha256:7497390f21534ba9139f0dc1b9352625b7b9503c91bbf44cb244cd13c2dc1552" -> "sha256:a2167ee3f73b5cc3e123c82c053ad5c6021be04da3c02da2c6aa12360490ec73" [label=""];
  "sha256:8526c548d78f43227e5f2ed4b4c58c8fa98369051cab58bc8d334a4289f71b5f" -> "sha256:a2167ee3f73b5cc3e123c82c053ad5c6021be04da3c02da2c6aa12360490ec73" [label=""];
  "sha256:a2167ee3f73b5cc3e123c82c053ad5c6021be04da3c02da2c6aa12360490ec73" -> "sha256:0d301e5847719d8a912d26690e168c89c01e6db4b189cce3392e752fedafb67f" [label=""];
  "sha256:8526c548d78f43227e5f2ed4b4c58c8fa98369051cab58bc8d334a4289f71b5f" -> "sha256:0d301e5847719d8a912d26690e168c89c01e6db4b189cce3392e752fedafb67f" [label=""];
  "sha256:0d301e5847719d8a912d26690e168c89c01e6db4b189cce3392e752fedafb67f" -> "sha256:8d560a897d5d62e33202cccf7b8d2bcb750d443cc9dfef33115cc6127ec3d05c" [label=""];
  "sha256:8526c548d78f43227e5f2ed4b4c58c8fa98369051cab58bc8d334a4289f71b5f" -> "sha256:8d560a897d5d62e33202cccf7b8d2bcb750d443cc9dfef33115cc6127ec3d05c" [label=""];
  "sha256:8d560a897d5d62e33202cccf7b8d2bcb750d443cc9dfef33115cc6127ec3d05c" -> "sha256:4390814acc7a1a34e0cd2c92ba4c200f42556d4935b22ef9942d3c2d05f71517" [label=""];
  "sha256:8526c548d78f43227e5f2ed4b4c58c8fa98369051cab58bc8d334a4289f71b5f" -> "sha256:4390814acc7a1a34e0cd2c92ba4c200f42556d4935b22ef9942d3c2d05f71517" [label=""];
  "sha256:4390814acc7a1a34e0cd2c92ba4c200f42556d4935b22ef9942d3c2d05f71517" -> "sha256:6dd504e9e41f74c26cb76f6a2506d62c3124c226a7029e7fd02507a723886914" [label=""];
}

