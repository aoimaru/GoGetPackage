[app/sources/291072326.Dockerfile]
digraph {
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" [label="docker-image://docker.io/library/ubuntu:latest" shape="ellipse"];
  "sha256:1e382dfc9441fa4570526142961fee6df23630f0e3d2405672eecb6bf87e7f71" [label="/bin/sh -c apt-get update &&    apt-get install -y ruby-dev build-essential nodejs tzdata vim" shape="box"];
  "sha256:c39b79e2cef185bb5a4c66c6613ebc3cfdab113629ec5eff3a1e5514abea9af7" [label="/bin/sh -c apt-get install -y libxslt-dev libxml2-dev zlib1g-dev" shape="box"];
  "sha256:c2b6d155effa9ad0e82c72fe91dcdfe717b80ee878322311b9eccaa9a6d69ff7" [label="/bin/sh -c gem install bundler" shape="box"];
  "sha256:c3a9f4462e577c3b39c38bbacf1f89755e47994ba8cb364b347187adfeafe696" [label="/bin/sh -c ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone" shape="box"];
  "sha256:b3b8d050adde0900f6b16c3209a86d352db878c1dd081229d7c514628ce8ebdd" [label="/bin/sh -c echo \":set encoding=utf8\\n:set expandtab tabstop=4 softtabstop=4 shiftwidth=4\" > ~/.vimrc" shape="box"];
  "sha256:a26f82fc6251e679436c8470957f1858fd21c4981bbc89b4a029f189de2c4dc5" [label="/bin/sh -c mkdir -p /root/.ssh" shape="box"];
  "sha256:36a7ab89f43bb9e535b3c687afb4d8959f763129f65dea37412e0203b02da5fb" [label="local://context" shape="ellipse"];
  "sha256:e8ff5779d6efbc4c95df6c9bd2d655f62043a953956bc28f5fd078c64fc71865" [label="copy{src=/justcopy_id_rsa, dest=/root/.ssh/id_rsa}" shape="note"];
  "sha256:a748ecf0a2660ddb225b5c7965c7dace744bcb0d286d839f246fe77af541d417" [label="/bin/sh -c chmod 700 /root/.ssh/id_rsa" shape="box"];
  "sha256:f1dce653732195b4b9476a5b94b018197d6d17fd9ae87a4c561d4a9b3b7fc112" [label="/bin/sh -c apt-get install -y git openssh-server &&     ssh-keyscan -t rsa github.com > ~/.ssh/known_hosts" shape="box"];
  "sha256:96045697413f33524552c61767abc6ea4ae58b22e2c042eddd3cb03c15664616" [label="mkdir{path=/jekyll}" shape="note"];
  "sha256:992aabd86fab3e0b951f9f778dba291b2066be940cc443de52b7248da2065364" [label="copy{src=/Gemfile, dest=/jekyll/}" shape="note"];
  "sha256:25b276cf9ef252eecd873cac2f884b89ae6ac9a0db0095135ae1753bc903fcc6" [label="copy{src=/Gemfile.lock, dest=/jekyll/}" shape="note"];
  "sha256:32433aec7ea0bd698985351eb62b301cbe52ae16b0ea0f9fdc8a13ed0decb68e" [label="/bin/sh -c ln -s /usr/lib/libz.so.1.2.8 /usr/lib/libzlib.so &&     apt-get install -y libblas-dev liblapack-dev libgsl0-dev" shape="box"];
  "sha256:fe9df7fe0846bf4e2a4a62e9906f904c1b39f605fad37858821751fdfce73af2" [label="/bin/sh -c bundle install" shape="box"];
  "sha256:1678285399e8e5cfd44426eaf649d3c3aa276bcfb9aa8f782518d1b6d5c89eb8" [label="mkdir{path=/jekyll/site}" shape="note"];
  "sha256:5d13f19a86ebd976ba2c0f3d2548fb86232a7c3750cf3db3927e57dc92a1cd9b" [label="/bin/sh -c git init &&     git remote add origin git@github.com:ailabstw/news-ptt.git" shape="box"];
  "sha256:5a17aedd9f47c92b3f21addda74ffd68e7855b382729bf2a37906b600cb45a1a" [label="mkdir{path=/jekyll}" shape="note"];
  "sha256:d727c1d003a960472043db4b6316fb7b778eceea5da272cc8faf5fd1357f4da4" [label="copy{src=/lib/related_posts.rb, dest=/var/lib/gems/2.3.0/gems/jekyll-3.4.5/lib/jekyll/related_posts.rb}" shape="note"];
  "sha256:7040ba1dd124350e8849705c138d799592390987490cd34435fb2962eb3e2237" [label="sha256:7040ba1dd124350e8849705c138d799592390987490cd34435fb2962eb3e2237" shape="plaintext"];
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" -> "sha256:1e382dfc9441fa4570526142961fee6df23630f0e3d2405672eecb6bf87e7f71" [label=""];
  "sha256:1e382dfc9441fa4570526142961fee6df23630f0e3d2405672eecb6bf87e7f71" -> "sha256:c39b79e2cef185bb5a4c66c6613ebc3cfdab113629ec5eff3a1e5514abea9af7" [label=""];
  "sha256:c39b79e2cef185bb5a4c66c6613ebc3cfdab113629ec5eff3a1e5514abea9af7" -> "sha256:c2b6d155effa9ad0e82c72fe91dcdfe717b80ee878322311b9eccaa9a6d69ff7" [label=""];
  "sha256:c2b6d155effa9ad0e82c72fe91dcdfe717b80ee878322311b9eccaa9a6d69ff7" -> "sha256:c3a9f4462e577c3b39c38bbacf1f89755e47994ba8cb364b347187adfeafe696" [label=""];
  "sha256:c3a9f4462e577c3b39c38bbacf1f89755e47994ba8cb364b347187adfeafe696" -> "sha256:b3b8d050adde0900f6b16c3209a86d352db878c1dd081229d7c514628ce8ebdd" [label=""];
  "sha256:b3b8d050adde0900f6b16c3209a86d352db878c1dd081229d7c514628ce8ebdd" -> "sha256:a26f82fc6251e679436c8470957f1858fd21c4981bbc89b4a029f189de2c4dc5" [label=""];
  "sha256:a26f82fc6251e679436c8470957f1858fd21c4981bbc89b4a029f189de2c4dc5" -> "sha256:e8ff5779d6efbc4c95df6c9bd2d655f62043a953956bc28f5fd078c64fc71865" [label=""];
  "sha256:36a7ab89f43bb9e535b3c687afb4d8959f763129f65dea37412e0203b02da5fb" -> "sha256:e8ff5779d6efbc4c95df6c9bd2d655f62043a953956bc28f5fd078c64fc71865" [label=""];
  "sha256:e8ff5779d6efbc4c95df6c9bd2d655f62043a953956bc28f5fd078c64fc71865" -> "sha256:a748ecf0a2660ddb225b5c7965c7dace744bcb0d286d839f246fe77af541d417" [label=""];
  "sha256:a748ecf0a2660ddb225b5c7965c7dace744bcb0d286d839f246fe77af541d417" -> "sha256:f1dce653732195b4b9476a5b94b018197d6d17fd9ae87a4c561d4a9b3b7fc112" [label=""];
  "sha256:f1dce653732195b4b9476a5b94b018197d6d17fd9ae87a4c561d4a9b3b7fc112" -> "sha256:96045697413f33524552c61767abc6ea4ae58b22e2c042eddd3cb03c15664616" [label=""];
  "sha256:96045697413f33524552c61767abc6ea4ae58b22e2c042eddd3cb03c15664616" -> "sha256:992aabd86fab3e0b951f9f778dba291b2066be940cc443de52b7248da2065364" [label=""];
  "sha256:36a7ab89f43bb9e535b3c687afb4d8959f763129f65dea37412e0203b02da5fb" -> "sha256:992aabd86fab3e0b951f9f778dba291b2066be940cc443de52b7248da2065364" [label=""];
  "sha256:992aabd86fab3e0b951f9f778dba291b2066be940cc443de52b7248da2065364" -> "sha256:25b276cf9ef252eecd873cac2f884b89ae6ac9a0db0095135ae1753bc903fcc6" [label=""];
  "sha256:36a7ab89f43bb9e535b3c687afb4d8959f763129f65dea37412e0203b02da5fb" -> "sha256:25b276cf9ef252eecd873cac2f884b89ae6ac9a0db0095135ae1753bc903fcc6" [label=""];
  "sha256:25b276cf9ef252eecd873cac2f884b89ae6ac9a0db0095135ae1753bc903fcc6" -> "sha256:32433aec7ea0bd698985351eb62b301cbe52ae16b0ea0f9fdc8a13ed0decb68e" [label=""];
  "sha256:32433aec7ea0bd698985351eb62b301cbe52ae16b0ea0f9fdc8a13ed0decb68e" -> "sha256:fe9df7fe0846bf4e2a4a62e9906f904c1b39f605fad37858821751fdfce73af2" [label=""];
  "sha256:fe9df7fe0846bf4e2a4a62e9906f904c1b39f605fad37858821751fdfce73af2" -> "sha256:1678285399e8e5cfd44426eaf649d3c3aa276bcfb9aa8f782518d1b6d5c89eb8" [label=""];
  "sha256:1678285399e8e5cfd44426eaf649d3c3aa276bcfb9aa8f782518d1b6d5c89eb8" -> "sha256:5d13f19a86ebd976ba2c0f3d2548fb86232a7c3750cf3db3927e57dc92a1cd9b" [label=""];
  "sha256:5d13f19a86ebd976ba2c0f3d2548fb86232a7c3750cf3db3927e57dc92a1cd9b" -> "sha256:5a17aedd9f47c92b3f21addda74ffd68e7855b382729bf2a37906b600cb45a1a" [label=""];
  "sha256:5a17aedd9f47c92b3f21addda74ffd68e7855b382729bf2a37906b600cb45a1a" -> "sha256:d727c1d003a960472043db4b6316fb7b778eceea5da272cc8faf5fd1357f4da4" [label=""];
  "sha256:36a7ab89f43bb9e535b3c687afb4d8959f763129f65dea37412e0203b02da5fb" -> "sha256:d727c1d003a960472043db4b6316fb7b778eceea5da272cc8faf5fd1357f4da4" [label=""];
  "sha256:d727c1d003a960472043db4b6316fb7b778eceea5da272cc8faf5fd1357f4da4" -> "sha256:7040ba1dd124350e8849705c138d799592390987490cd34435fb2962eb3e2237" [label=""];
}

