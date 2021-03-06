[app/sources/146981474.Dockerfile]
digraph {
  "sha256:6bc512ee72a678c7e82e78a3535d6d9cb9abfec120c0787e7d8b991b7e4f1c82" [label="docker-image://docker.io/library/python:2.7.14-stretch" shape="ellipse"];
  "sha256:e4c0594f9d279aead5e150429a509a8db265ec564d239fdbbc5b188532860c1a" [label="/bin/sh -c apt-get update && apt-get -y install wget git" shape="box"];
  "sha256:4b93a0a155789bb60365febbb677362499413a7a6d84067afbd779cf527da039" [label="/bin/sh -c apt-get update && apt-get -y install libgfortran3" shape="box"];
  "sha256:c20f61d8cb3ed1b5dd7cca69ad933d2353f20c6dd8fcceab42f75d72d88fc62b" [label="/bin/sh -c apt-get update && apt-get -y install r-base" shape="box"];
  "sha256:e5b70afa6c3aa8e6413e325a009fbfac3c94bc331c30b5645499af8ed972c681" [label="/bin/sh -c pip install --no-cache-dir notebook==5.*" shape="box"];
  "sha256:cccc20dab8ec54c76628d6aa2bbadf3ccd6509d63b9ae54b459c08743dc8464a" [label="/bin/sh -c pip install numpy pandas bokeh" shape="box"];
  "sha256:e704d66558001135b42356bc04c03623363a27a9f952d18d01bcce5639e289a3" [label="/bin/sh -c pip install randomcolor" shape="box"];
  "sha256:993c1bbac51fdd3c357664255932a5a182a912c8470b334e76600e21a35695db" [label="/bin/sh -c pip install ferretmagic==2016.10.28" shape="box"];
  "sha256:6bc64e285c2092875b5e4d2abef57ede64f177c7d5ba78f78cc9412466cbbdda" [label="/bin/sh -c pip install rpy2==2.8.5" shape="box"];
  "sha256:4fa7746f15fae633022ddf3774efd79f4178564ec69382c2cce84e4320dbf7a8" [label="/bin/sh -c pip install ipywidgets" shape="box"];
  "sha256:e587679555438e3b31cc8b99eae640aaab70dfa6c91da44ae22d574affe82968" [label="/bin/sh -c jupyter nbextension enable --py widgetsnbextension --sys-prefix" shape="box"];
  "sha256:78259991aaa660be8e300e1ee0a064faf9c6a4f969e5614fffe465b5eece4253" [label="/bin/sh -c adduser --disabled-password     --gecos \"Default user\"     --uid ${NB_UID}     ${NB_USER}" shape="box"];
  "sha256:8bb0d871e19ca8180d6d0b8d88b0511fdf53ecd37261ba933dc299814a5857ee" [label="mkdir{path=/opt}" shape="note"];
  "sha256:29ba04dac89f172ed3ca57b5a324d1751ad4577f84c7eef610c20bf47299f500" [label="/bin/sh -c wget --no-check-certificate https://sourceforge.net/projects/libpng/files/libpng15/1.5.30/libpng-1.5.30.tar.gz &&     tar xvfz libpng-1.5.30.tar.gz" shape="box"];
  "sha256:c1f10ea60c1f4a6804501e167fbd9b3f5fb8a968cb45917ab1372f62bed27296" [label="/bin/sh -c cd libpng-1.5.30 &&     ./configure --prefix=/usr/local/libpng &&     make check &&     make install" shape="box"];
  "sha256:e10afc35e384693b1933409ea6041e526b014443e6d10229fbfc24c653ff9d97" [label="mkdir{path=/opt}" shape="note"];
  "sha256:a0e6d93ee74fdf6dac62c94e2a5966821bbe4aa4b9069aac3a13043b710e9f72" [label="/bin/sh -c wget https://github.com/NOAA-PMEL/PyFerret/releases/download/v7.3/pyferret-7.3-RHEL7-64.tar.gz &&     tar xvfz pyferret-7.3-RHEL7-64.tar.gz" shape="box"];
  "sha256:c8f8102e3b199db1563bf6a503fd9051a982607271881afc43a8caaea782156d" [label="/bin/sh -c git clone https://github.com/NOAA-PMEL/FerretDatasets &&     mv FerretDatasets fer_dsets" shape="box"];
  "sha256:93e3e75c3daa56025b24b5208a9004f18d79b1f8c8fd914bd637633bf8d204b0" [label="mkdir{path=/opt}" shape="note"];
  "sha256:4f4a8d65eee28ab014af98efd971e3732815ab75d02dd3222d475f45e24b4c4b" [label="/bin/sh -c git clone https://github.com/PBrockmann/fast" shape="box"];
  "sha256:15c7cdd2af169a310887a72a4b010ab9217604ae497cb4f675fd8e5cc629bd61" [label="local://context" shape="ellipse"];
  "sha256:3497faee03bbfd24f5e094b373f3e564fdddef823433e7570676bd85cb3ac986" [label="copy{src=/, dest=/home/agentk}" shape="note"];
  "sha256:58b34073ca3853fdc7324f927f5468cc4ab2622914912ef5d85365aa9f0ab6d0" [label="/bin/sh -c chown -R ${NB_UID} ${HOME}" shape="box"];
  "sha256:0f04a7c0e0aa26dc865856a7ae4892f997122dd2bf567bb4b5947ec1f4398b4b" [label="mkdir{path=/home/agentk}" shape="note"];
  "sha256:5a28792e348e7e7281865a3d07a7ff328c3af0d6ee46a83dc014bce8bf3e616d" [label="sha256:5a28792e348e7e7281865a3d07a7ff328c3af0d6ee46a83dc014bce8bf3e616d" shape="plaintext"];
  "sha256:6bc512ee72a678c7e82e78a3535d6d9cb9abfec120c0787e7d8b991b7e4f1c82" -> "sha256:e4c0594f9d279aead5e150429a509a8db265ec564d239fdbbc5b188532860c1a" [label=""];
  "sha256:e4c0594f9d279aead5e150429a509a8db265ec564d239fdbbc5b188532860c1a" -> "sha256:4b93a0a155789bb60365febbb677362499413a7a6d84067afbd779cf527da039" [label=""];
  "sha256:4b93a0a155789bb60365febbb677362499413a7a6d84067afbd779cf527da039" -> "sha256:c20f61d8cb3ed1b5dd7cca69ad933d2353f20c6dd8fcceab42f75d72d88fc62b" [label=""];
  "sha256:c20f61d8cb3ed1b5dd7cca69ad933d2353f20c6dd8fcceab42f75d72d88fc62b" -> "sha256:e5b70afa6c3aa8e6413e325a009fbfac3c94bc331c30b5645499af8ed972c681" [label=""];
  "sha256:e5b70afa6c3aa8e6413e325a009fbfac3c94bc331c30b5645499af8ed972c681" -> "sha256:cccc20dab8ec54c76628d6aa2bbadf3ccd6509d63b9ae54b459c08743dc8464a" [label=""];
  "sha256:cccc20dab8ec54c76628d6aa2bbadf3ccd6509d63b9ae54b459c08743dc8464a" -> "sha256:e704d66558001135b42356bc04c03623363a27a9f952d18d01bcce5639e289a3" [label=""];
  "sha256:e704d66558001135b42356bc04c03623363a27a9f952d18d01bcce5639e289a3" -> "sha256:993c1bbac51fdd3c357664255932a5a182a912c8470b334e76600e21a35695db" [label=""];
  "sha256:993c1bbac51fdd3c357664255932a5a182a912c8470b334e76600e21a35695db" -> "sha256:6bc64e285c2092875b5e4d2abef57ede64f177c7d5ba78f78cc9412466cbbdda" [label=""];
  "sha256:6bc64e285c2092875b5e4d2abef57ede64f177c7d5ba78f78cc9412466cbbdda" -> "sha256:4fa7746f15fae633022ddf3774efd79f4178564ec69382c2cce84e4320dbf7a8" [label=""];
  "sha256:4fa7746f15fae633022ddf3774efd79f4178564ec69382c2cce84e4320dbf7a8" -> "sha256:e587679555438e3b31cc8b99eae640aaab70dfa6c91da44ae22d574affe82968" [label=""];
  "sha256:e587679555438e3b31cc8b99eae640aaab70dfa6c91da44ae22d574affe82968" -> "sha256:78259991aaa660be8e300e1ee0a064faf9c6a4f969e5614fffe465b5eece4253" [label=""];
  "sha256:78259991aaa660be8e300e1ee0a064faf9c6a4f969e5614fffe465b5eece4253" -> "sha256:8bb0d871e19ca8180d6d0b8d88b0511fdf53ecd37261ba933dc299814a5857ee" [label=""];
  "sha256:8bb0d871e19ca8180d6d0b8d88b0511fdf53ecd37261ba933dc299814a5857ee" -> "sha256:29ba04dac89f172ed3ca57b5a324d1751ad4577f84c7eef610c20bf47299f500" [label=""];
  "sha256:29ba04dac89f172ed3ca57b5a324d1751ad4577f84c7eef610c20bf47299f500" -> "sha256:c1f10ea60c1f4a6804501e167fbd9b3f5fb8a968cb45917ab1372f62bed27296" [label=""];
  "sha256:c1f10ea60c1f4a6804501e167fbd9b3f5fb8a968cb45917ab1372f62bed27296" -> "sha256:e10afc35e384693b1933409ea6041e526b014443e6d10229fbfc24c653ff9d97" [label=""];
  "sha256:e10afc35e384693b1933409ea6041e526b014443e6d10229fbfc24c653ff9d97" -> "sha256:a0e6d93ee74fdf6dac62c94e2a5966821bbe4aa4b9069aac3a13043b710e9f72" [label=""];
  "sha256:a0e6d93ee74fdf6dac62c94e2a5966821bbe4aa4b9069aac3a13043b710e9f72" -> "sha256:c8f8102e3b199db1563bf6a503fd9051a982607271881afc43a8caaea782156d" [label=""];
  "sha256:c8f8102e3b199db1563bf6a503fd9051a982607271881afc43a8caaea782156d" -> "sha256:93e3e75c3daa56025b24b5208a9004f18d79b1f8c8fd914bd637633bf8d204b0" [label=""];
  "sha256:93e3e75c3daa56025b24b5208a9004f18d79b1f8c8fd914bd637633bf8d204b0" -> "sha256:4f4a8d65eee28ab014af98efd971e3732815ab75d02dd3222d475f45e24b4c4b" [label=""];
  "sha256:4f4a8d65eee28ab014af98efd971e3732815ab75d02dd3222d475f45e24b4c4b" -> "sha256:3497faee03bbfd24f5e094b373f3e564fdddef823433e7570676bd85cb3ac986" [label=""];
  "sha256:15c7cdd2af169a310887a72a4b010ab9217604ae497cb4f675fd8e5cc629bd61" -> "sha256:3497faee03bbfd24f5e094b373f3e564fdddef823433e7570676bd85cb3ac986" [label=""];
  "sha256:3497faee03bbfd24f5e094b373f3e564fdddef823433e7570676bd85cb3ac986" -> "sha256:58b34073ca3853fdc7324f927f5468cc4ab2622914912ef5d85365aa9f0ab6d0" [label=""];
  "sha256:58b34073ca3853fdc7324f927f5468cc4ab2622914912ef5d85365aa9f0ab6d0" -> "sha256:0f04a7c0e0aa26dc865856a7ae4892f997122dd2bf567bb4b5947ec1f4398b4b" [label=""];
  "sha256:0f04a7c0e0aa26dc865856a7ae4892f997122dd2bf567bb4b5947ec1f4398b4b" -> "sha256:5a28792e348e7e7281865a3d07a7ff328c3af0d6ee46a83dc014bce8bf3e616d" [label=""];
}

