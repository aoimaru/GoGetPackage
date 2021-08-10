[app/sources/278506512.Dockerfile]
digraph {
  "sha256:0a07358854a51dec67d8e32ed90e17032dc36fc4677a379a33388416bdaa70e3" [label="local://context" shape="ellipse"];
  "sha256:0a72cc577f654556c046ee53e0639e7c0cbecb40da204effde52b54f3835655f" [label="docker-image://docker.io/kstaken/apache2:latest" shape="ellipse"];
  "sha256:12c3b52e41b27d9b20cf365fc65dcb842d5223f135423acb1105a2fb90bc3942" [label="/bin/sh -c apt-get update && apt-get install -y php5 curl git zip libapache2-mod-php5 php5-mysql php5-cli && apt-get clean && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:a6ecbb5ace68f28b4f93100e1783244080f83219af53a391c077ca4829477e64" [label="copy{src=/vendor, dest=/var/www/vendor}" shape="note"];
  "sha256:7bcf1e6b9f08ff3d074dc1a675b833481039f91384d05889508f937f088f2937" [label="copy{src=/Utils, dest=/var/www/Utils}" shape="note"];
  "sha256:24722b8aa11e5bca96cf07d61f88c6b1e789c606799bdda9fe0884c08d7a8306" [label="copy{src=/api, dest=/var/www/api}" shape="note"];
  "sha256:16009bd40050fe4ad550a3950c1327c64361d622a6371b856da1e562835065e3" [label="copy{src=/assets, dest=/var/www/assets}" shape="note"];
  "sha256:d7ca7574ef1c2667470f12fbc4006af70e28854a7e787a2c176906818d5e1514" [label="copy{src=/index.html, dest=/var/www/index.html}" shape="note"];
  "sha256:8da4662e5638afb513454c3533c3158b28286885a576eecf59b3b3171f82dde6" [label="sha256:8da4662e5638afb513454c3533c3158b28286885a576eecf59b3b3171f82dde6" shape="plaintext"];
  "sha256:0a72cc577f654556c046ee53e0639e7c0cbecb40da204effde52b54f3835655f" -> "sha256:12c3b52e41b27d9b20cf365fc65dcb842d5223f135423acb1105a2fb90bc3942" [label=""];
  "sha256:12c3b52e41b27d9b20cf365fc65dcb842d5223f135423acb1105a2fb90bc3942" -> "sha256:a6ecbb5ace68f28b4f93100e1783244080f83219af53a391c077ca4829477e64" [label=""];
  "sha256:0a07358854a51dec67d8e32ed90e17032dc36fc4677a379a33388416bdaa70e3" -> "sha256:a6ecbb5ace68f28b4f93100e1783244080f83219af53a391c077ca4829477e64" [label=""];
  "sha256:a6ecbb5ace68f28b4f93100e1783244080f83219af53a391c077ca4829477e64" -> "sha256:7bcf1e6b9f08ff3d074dc1a675b833481039f91384d05889508f937f088f2937" [label=""];
  "sha256:0a07358854a51dec67d8e32ed90e17032dc36fc4677a379a33388416bdaa70e3" -> "sha256:7bcf1e6b9f08ff3d074dc1a675b833481039f91384d05889508f937f088f2937" [label=""];
  "sha256:7bcf1e6b9f08ff3d074dc1a675b833481039f91384d05889508f937f088f2937" -> "sha256:24722b8aa11e5bca96cf07d61f88c6b1e789c606799bdda9fe0884c08d7a8306" [label=""];
  "sha256:0a07358854a51dec67d8e32ed90e17032dc36fc4677a379a33388416bdaa70e3" -> "sha256:24722b8aa11e5bca96cf07d61f88c6b1e789c606799bdda9fe0884c08d7a8306" [label=""];
  "sha256:24722b8aa11e5bca96cf07d61f88c6b1e789c606799bdda9fe0884c08d7a8306" -> "sha256:16009bd40050fe4ad550a3950c1327c64361d622a6371b856da1e562835065e3" [label=""];
  "sha256:0a07358854a51dec67d8e32ed90e17032dc36fc4677a379a33388416bdaa70e3" -> "sha256:16009bd40050fe4ad550a3950c1327c64361d622a6371b856da1e562835065e3" [label=""];
  "sha256:16009bd40050fe4ad550a3950c1327c64361d622a6371b856da1e562835065e3" -> "sha256:d7ca7574ef1c2667470f12fbc4006af70e28854a7e787a2c176906818d5e1514" [label=""];
  "sha256:0a07358854a51dec67d8e32ed90e17032dc36fc4677a379a33388416bdaa70e3" -> "sha256:d7ca7574ef1c2667470f12fbc4006af70e28854a7e787a2c176906818d5e1514" [label=""];
  "sha256:d7ca7574ef1c2667470f12fbc4006af70e28854a7e787a2c176906818d5e1514" -> "sha256:8da4662e5638afb513454c3533c3158b28286885a576eecf59b3b3171f82dde6" [label=""];
}

