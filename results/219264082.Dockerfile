[app/sources/219264082.Dockerfile]
digraph {
  "sha256:669b3dd28d67a7ee85850bdf6d01d1ba7a054aa903719920a2015f80f87022b3" [label="local://context" shape="ellipse"];
  "sha256:8fdabc5b86d4fb92a772008f6de85b49117cd73f073e97ecfafe1a14deadb143" [label="docker-image://docker.io/bitnami/minideb:stretch@sha256:940f4bc821ab9d7d128a3e8bdc5644d16474e70270fe1af7e1095adc92882feb" shape="ellipse"];
  "sha256:bb41b086136b846231fdafb9d51c4e09900438d40eada9a923f6dabbc9b6350f" [label="/bin/sh -c install_packages apt-transport-https gnupg2 ca-certificates" shape="box"];
  "sha256:24c64ea9f8d6d5ca34c751aee7b13ce0cb88dfc76e30eb917cd78fe07455e79a" [label="copy{src=/.docker/apt/sources.list.d/*, dest=/etc/apt/sources.list.d/}" shape="note"];
  "sha256:489927a7206a3bdcaf5dc22c84810b7c1a10d361a4574d4db178576ce0b89bc7" [label="copy{src=/.docker/apt/keys/*, dest=/}" shape="note"];
  "sha256:958c0d2242ab82c3cd03c06418be131169aeca65cae880b1b0819b39cb72f5f5" [label="/bin/sh -c cat /nodesource.gpg | apt-key add - && rm /nodesource.gpg" shape="box"];
  "sha256:e049571895838a5b3447a5623bb432af3863e2ec708fb21f70272377238a632c" [label="/bin/sh -c cat /yarn.gpg | apt-key add - && rm yarn.gpg" shape="box"];
  "sha256:f50e14950ca6c8fb166f3c95f19b6eceac34cc922a35f5f4b04586699e5c5d37" [label="/bin/sh -c install_packages   bash   build-essential   curl   cmake   git   less   libnss-wrapper   libxml2-dev   libxml2-utils   make   nodejs   nginx   openssh-client   openssh-server   perl-base   python   python3   python3-pip   ruby   ruby-dev   unzip   yarn   xsltproc" shape="box"];
  "sha256:a843042e5679b7d3e8f22b268cb60f4907d72bac3a5ec83a707bcdbc52830c92" [label="/bin/sh -c rm -rf /var/log/nginx && rm -rf /run/nginx" shape="box"];
  "sha256:de0ac4b76480af407912babb3346e7addc87b843e8a4b9d71631c70378545700" [label="/bin/sh -c pip3 install   beautifulsoup4==4.7.1   lxml==4.3.1   pycodestyle==2.5.0" shape="box"];
  "sha256:6e19b33de3935a3607a3dc018acb7016d1a8289c11b513cd4b94c32c00218201" [label="/bin/sh -c gem install bundler:2.0.1" shape="box"];
  "sha256:145d73fa56b475df9d1a0354afe32fb5fc583d0d9f9544560baa924f8f0650ce" [label="/bin/sh -c bundle config --global silence_root_warning 1" shape="box"];
  "sha256:8a9e9ef76a91f14a58fe9c226067509705f141792a4a465031beccb54eae8256" [label="copy{src=/Gemfile*, dest=/}" shape="note"];
  "sha256:345bc79985a6f21887a3bdff38a6b109dcf1fd0121f8284216d26975c3c868f8" [label="/bin/sh -c bundle install --binstubs --system --frozen" shape="box"];
  "sha256:7795d3d1fda238812f9628ed06ee5c643e4fb3e24c7e34b25d06710740b80a58" [label="copy{src=/package.json, dest=/}" shape="note"];
  "sha256:0cf668ed08185b20bb945dd7cf395a59d287848e616089e1577fa4ee21141aaa" [label="copy{src=/yarn.lock, dest=/}" shape="note"];
  "sha256:c23f02bec4fb7648629eaa2025f8c6cab704b5d8296babb8979e44035b6984fa" [label="/bin/sh -c yarn install --frozen-lockfile" shape="box"];
  "sha256:fc881ad8dbbb465556eaf6d2c375c4f8de0575ec7f9c9a2e2d0e7b7177a7d2a7" [label="sha256:fc881ad8dbbb465556eaf6d2c375c4f8de0575ec7f9c9a2e2d0e7b7177a7d2a7" shape="plaintext"];
  "sha256:8fdabc5b86d4fb92a772008f6de85b49117cd73f073e97ecfafe1a14deadb143" -> "sha256:bb41b086136b846231fdafb9d51c4e09900438d40eada9a923f6dabbc9b6350f" [label=""];
  "sha256:bb41b086136b846231fdafb9d51c4e09900438d40eada9a923f6dabbc9b6350f" -> "sha256:24c64ea9f8d6d5ca34c751aee7b13ce0cb88dfc76e30eb917cd78fe07455e79a" [label=""];
  "sha256:669b3dd28d67a7ee85850bdf6d01d1ba7a054aa903719920a2015f80f87022b3" -> "sha256:24c64ea9f8d6d5ca34c751aee7b13ce0cb88dfc76e30eb917cd78fe07455e79a" [label=""];
  "sha256:24c64ea9f8d6d5ca34c751aee7b13ce0cb88dfc76e30eb917cd78fe07455e79a" -> "sha256:489927a7206a3bdcaf5dc22c84810b7c1a10d361a4574d4db178576ce0b89bc7" [label=""];
  "sha256:669b3dd28d67a7ee85850bdf6d01d1ba7a054aa903719920a2015f80f87022b3" -> "sha256:489927a7206a3bdcaf5dc22c84810b7c1a10d361a4574d4db178576ce0b89bc7" [label=""];
  "sha256:489927a7206a3bdcaf5dc22c84810b7c1a10d361a4574d4db178576ce0b89bc7" -> "sha256:958c0d2242ab82c3cd03c06418be131169aeca65cae880b1b0819b39cb72f5f5" [label=""];
  "sha256:958c0d2242ab82c3cd03c06418be131169aeca65cae880b1b0819b39cb72f5f5" -> "sha256:e049571895838a5b3447a5623bb432af3863e2ec708fb21f70272377238a632c" [label=""];
  "sha256:e049571895838a5b3447a5623bb432af3863e2ec708fb21f70272377238a632c" -> "sha256:f50e14950ca6c8fb166f3c95f19b6eceac34cc922a35f5f4b04586699e5c5d37" [label=""];
  "sha256:f50e14950ca6c8fb166f3c95f19b6eceac34cc922a35f5f4b04586699e5c5d37" -> "sha256:a843042e5679b7d3e8f22b268cb60f4907d72bac3a5ec83a707bcdbc52830c92" [label=""];
  "sha256:a843042e5679b7d3e8f22b268cb60f4907d72bac3a5ec83a707bcdbc52830c92" -> "sha256:de0ac4b76480af407912babb3346e7addc87b843e8a4b9d71631c70378545700" [label=""];
  "sha256:de0ac4b76480af407912babb3346e7addc87b843e8a4b9d71631c70378545700" -> "sha256:6e19b33de3935a3607a3dc018acb7016d1a8289c11b513cd4b94c32c00218201" [label=""];
  "sha256:6e19b33de3935a3607a3dc018acb7016d1a8289c11b513cd4b94c32c00218201" -> "sha256:145d73fa56b475df9d1a0354afe32fb5fc583d0d9f9544560baa924f8f0650ce" [label=""];
  "sha256:145d73fa56b475df9d1a0354afe32fb5fc583d0d9f9544560baa924f8f0650ce" -> "sha256:8a9e9ef76a91f14a58fe9c226067509705f141792a4a465031beccb54eae8256" [label=""];
  "sha256:669b3dd28d67a7ee85850bdf6d01d1ba7a054aa903719920a2015f80f87022b3" -> "sha256:8a9e9ef76a91f14a58fe9c226067509705f141792a4a465031beccb54eae8256" [label=""];
  "sha256:8a9e9ef76a91f14a58fe9c226067509705f141792a4a465031beccb54eae8256" -> "sha256:345bc79985a6f21887a3bdff38a6b109dcf1fd0121f8284216d26975c3c868f8" [label=""];
  "sha256:345bc79985a6f21887a3bdff38a6b109dcf1fd0121f8284216d26975c3c868f8" -> "sha256:7795d3d1fda238812f9628ed06ee5c643e4fb3e24c7e34b25d06710740b80a58" [label=""];
  "sha256:669b3dd28d67a7ee85850bdf6d01d1ba7a054aa903719920a2015f80f87022b3" -> "sha256:7795d3d1fda238812f9628ed06ee5c643e4fb3e24c7e34b25d06710740b80a58" [label=""];
  "sha256:7795d3d1fda238812f9628ed06ee5c643e4fb3e24c7e34b25d06710740b80a58" -> "sha256:0cf668ed08185b20bb945dd7cf395a59d287848e616089e1577fa4ee21141aaa" [label=""];
  "sha256:669b3dd28d67a7ee85850bdf6d01d1ba7a054aa903719920a2015f80f87022b3" -> "sha256:0cf668ed08185b20bb945dd7cf395a59d287848e616089e1577fa4ee21141aaa" [label=""];
  "sha256:0cf668ed08185b20bb945dd7cf395a59d287848e616089e1577fa4ee21141aaa" -> "sha256:c23f02bec4fb7648629eaa2025f8c6cab704b5d8296babb8979e44035b6984fa" [label=""];
  "sha256:c23f02bec4fb7648629eaa2025f8c6cab704b5d8296babb8979e44035b6984fa" -> "sha256:fc881ad8dbbb465556eaf6d2c375c4f8de0575ec7f9c9a2e2d0e7b7177a7d2a7" [label=""];
}

