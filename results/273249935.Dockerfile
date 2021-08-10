[app/sources/273249935.Dockerfile]
digraph {
  "sha256:6eb21ad08aab0995a108490f101204948cf54148cb885a5647d63d924ed0d702" [label="docker-image://docker.io/rocker/r-ver:latest" shape="ellipse"];
  "sha256:f1fc9d5216b9bff8c5c013880d4d4e55b61e0c6433306ec58f654e94268582c2" [label="/bin/sh -c apt-get update && apt-get -y install     libxml2-dev     libcurl4-openssl-dev     git     automake     libtool     gtk-doc-tools     bison     flex     libgmp-dev      libmhash-dev     libgcrypt20-dev     libpcre3-dev     libv8-dev     libjq-dev     libpq-dev     libdb-dev     libsqlite3-dev     libmariadbclient-dev     librdf-storage-virtuoso \tunixodbc-dev" shape="box"];
  "sha256:00611620b02107e81a66ae4c5e151bdfcfffe25026d59af082f7784807be06bc" [label="/bin/sh -c git clone git://github.com/dajobe/raptor.git &&     cd raptor &&     ./autogen.sh &&     make &&     make install &&     cd .. &&     git clone git://github.com/dajobe/rasqal.git &&     cd rasqal &&     ./autogen.sh &&     make &&     make install &&     cd .. &&     git clone git://github.com/dajobe/librdf.git &&     cd librdf &&     ./autogen.sh &&     make &&     make install" shape="box"];
  "sha256:7174094a01b98c1a681e33b79683ace943801292a23d3ef32f2406539bf6f25e" [label="/bin/sh -c R -e \"install.packages(c('remotes','devtools'))\" &&     R -e \"remotes::install_github('ropensci/redland-bindings/R/redland')\" &&     R -e \"remotes::install_github('ropensci/rdflib')\"" shape="box"];
  "sha256:27d860a3e0a718d9c76ac037e10d876ded92fae9f4106137d9d538762b109872" [label="sha256:27d860a3e0a718d9c76ac037e10d876ded92fae9f4106137d9d538762b109872" shape="plaintext"];
  "sha256:6eb21ad08aab0995a108490f101204948cf54148cb885a5647d63d924ed0d702" -> "sha256:f1fc9d5216b9bff8c5c013880d4d4e55b61e0c6433306ec58f654e94268582c2" [label=""];
  "sha256:f1fc9d5216b9bff8c5c013880d4d4e55b61e0c6433306ec58f654e94268582c2" -> "sha256:00611620b02107e81a66ae4c5e151bdfcfffe25026d59af082f7784807be06bc" [label=""];
  "sha256:00611620b02107e81a66ae4c5e151bdfcfffe25026d59af082f7784807be06bc" -> "sha256:7174094a01b98c1a681e33b79683ace943801292a23d3ef32f2406539bf6f25e" [label=""];
  "sha256:7174094a01b98c1a681e33b79683ace943801292a23d3ef32f2406539bf6f25e" -> "sha256:27d860a3e0a718d9c76ac037e10d876ded92fae9f4106137d9d538762b109872" [label=""];
}

