[app/sources/471357922.Dockerfile]
digraph {
  "sha256:721e90f72f1dc80d9e8ebec6df0870936305b779ce50e95940b677285150bbbd" [label="docker-image://docker.io/buildkite/puppeteer:latest" shape="ellipse"];
  "sha256:c26c24ecfdae962fb5f906c8a76c885a55e472b955dc059118553b16d727cad8" [label="local://context" shape="ellipse"];
  "sha256:5aa3584d9de2ff1fa71f32052fb76fc4ee96d07651858ec452385394ca9eb45c" [label="copy{src=/, dest=/app}" shape="note"];
  "sha256:24ab707fd367003f3e08d6a0071b2febb93ef8846a84351bc841c91e2b193e2d" [label="mkdir{path=/app}" shape="note"];
  "sha256:123e4d196b82986ec27506966920b11c53f5870235386f68b264b692bbd190be" [label="/bin/sh -c sed -i 's/deb.debian.org/mirrors.163.com/g' /etc/apt/sources.list &&     apt update &&     apt-get install -y dpkg wget unzip" shape="box"];
  "sha256:59098d0b41b172e24f6474d8b58c9e7c2366648f3b5c8ded70a2c5bb2795df86" [label="/bin/sh -c cd /tmp && wget http://ftp.cn.debian.org/debian/pool/main/f/fonts-noto-cjk/fonts-noto-cjk_20170601+repack1-3_all.deb &&     dpkg -i fonts-noto-cjk_20170601+repack1-3_all.deb    &&     wget https://github.com/adobe-fonts/source-sans-pro/releases/download/2.040R-ro%2F1.090R-it/source-sans-pro-2.040R-ro-1.090R-it.zip &&     unzip source-sans-pro-2.040R-ro-1.090R-it.zip && cd source-sans-pro-2.040R-ro-1.090R-it  && mv ./OTF /usr/share/fonts/  &&     fc-cache -f -v" shape="box"];
  "sha256:1fd94a03d8a5291846f22a7e32470470f52918956b45ba8c9c32f498235fda6e" [label="/bin/sh -c npm set registry https://registry.npm.taobao.org &&      npm set disturl https://npm.taobao.org/dist &&      npm set sass_binary_site https://npm.taobao.org/mirrors/node-sass &&      npm set puppeteer_download_host https://npm.taobao.org/mirrors &&      npm set chromedriver_cdnurl https://npm.taobao.org/mirrors/chromedriver &&      npm i" shape="box"];
  "sha256:cbd4aefb5a384149a5ee068bba147751c607608f947522c3e34c223c05523d1c" [label="sha256:cbd4aefb5a384149a5ee068bba147751c607608f947522c3e34c223c05523d1c" shape="plaintext"];
  "sha256:721e90f72f1dc80d9e8ebec6df0870936305b779ce50e95940b677285150bbbd" -> "sha256:5aa3584d9de2ff1fa71f32052fb76fc4ee96d07651858ec452385394ca9eb45c" [label=""];
  "sha256:c26c24ecfdae962fb5f906c8a76c885a55e472b955dc059118553b16d727cad8" -> "sha256:5aa3584d9de2ff1fa71f32052fb76fc4ee96d07651858ec452385394ca9eb45c" [label=""];
  "sha256:5aa3584d9de2ff1fa71f32052fb76fc4ee96d07651858ec452385394ca9eb45c" -> "sha256:24ab707fd367003f3e08d6a0071b2febb93ef8846a84351bc841c91e2b193e2d" [label=""];
  "sha256:24ab707fd367003f3e08d6a0071b2febb93ef8846a84351bc841c91e2b193e2d" -> "sha256:123e4d196b82986ec27506966920b11c53f5870235386f68b264b692bbd190be" [label=""];
  "sha256:123e4d196b82986ec27506966920b11c53f5870235386f68b264b692bbd190be" -> "sha256:59098d0b41b172e24f6474d8b58c9e7c2366648f3b5c8ded70a2c5bb2795df86" [label=""];
  "sha256:59098d0b41b172e24f6474d8b58c9e7c2366648f3b5c8ded70a2c5bb2795df86" -> "sha256:1fd94a03d8a5291846f22a7e32470470f52918956b45ba8c9c32f498235fda6e" [label=""];
  "sha256:1fd94a03d8a5291846f22a7e32470470f52918956b45ba8c9c32f498235fda6e" -> "sha256:cbd4aefb5a384149a5ee068bba147751c607608f947522c3e34c223c05523d1c" [label=""];
}

