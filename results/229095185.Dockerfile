[app/sources/229095185.Dockerfile]
digraph {
  "sha256:f42adffb46b864171b8cc659c140638a35e604265374726c0c78a3e5c4e5bc3c" [label="docker-image://docker.io/library/ubuntu:wily" shape="ellipse"];
  "sha256:8aa73756a69838bb45674cac1d568a8fb8f5f238f771807c12d8b685c3bfed97" [label="/bin/sh -c apt-get update -qq" shape="box"];
  "sha256:74e639ebc96955fe1f3bed240d499510946921a6919a2e5c8b0f469c4b1ec8cf" [label="/bin/sh -c apt-get upgrade -qq" shape="box"];
  "sha256:c5bbb232dfe4a3ec481a6cb81183f6c6ff97a544604a5ec7f632289e6cf95063" [label="/bin/sh -c apt-get install -qq wget" shape="box"];
  "sha256:4238097defac104159330b6d28ae2565a5c88e36005163d7ddcd0300ca5da243" [label="/bin/sh -c apt-get install -qq build-essential gcc" shape="box"];
  "sha256:5f7e5e7242ab71dc3a76c7296ac854f1ff5f834a3c40fcb450630ab29297712c" [label="/bin/sh -c apt-get install -qq texlive" shape="box"];
  "sha256:9bfef1bace01b3ff15c0c25ae1a51fd1a9887dc359add9eceed182749ff87771" [label="/bin/sh -c apt-get install -qq texlive-latex-extra dvipng" shape="box"];
  "sha256:4db2a9c7b9a81eae7ea9e4c74c8f6557c263bd0f1018c5cb023b67e5909efc90" [label="/bin/sh -c apt-get install -qq pandoc" shape="box"];
  "sha256:9f798bb21517c7d08f432cd81a188cdd386a53126a0f47153cc2bbd46bc0c6ae" [label="/bin/sh -c apt-get install -qq python2.7 python2.7-dev python-pip" shape="box"];
  "sha256:2f0b8faf2f5e12149149abe0ecb2b2fa31dd68ac9c2dab95c2edef1580eff8d6" [label="/bin/sh -c pip install Sphinx sphinxcontrib-googleanalytics" shape="box"];
  "sha256:5cd906e5b27c393dfe5c3ea4ff58f6bc0c9ecd8a1794b9bd0984c85133e9842b" [label="/bin/sh -c pip install cloud_sptheme" shape="box"];
  "sha256:9353f4eba65655a8fbfb36b74649f9e64fa3745b088080142f5754793e45448f" [label="/bin/sh -c apt-get install -qq libjpeg62 libcairo2-dev" shape="box"];
  "sha256:118a675f61b3c378a3c61be62b4cd949f190d35c92f5809c9050abc83cb6d191" [label="/bin/sh -c gpg --keyserver keyserver.ubuntu.com --recv-key E084DAB9" shape="box"];
  "sha256:fe6b329d6f50143facb3f05bd9dc6fc781b5603e5b61dc11ecf472d6286f3fda" [label="/bin/sh -c gpg -a --export E084DAB9 | apt-key add -" shape="box"];
  "sha256:da2d0e32d4ac611d5bd0566f2fca23dc84ff4ae7cc94364fc88c38484b455c10" [label="/bin/sh -c echo 'deb http://cran.r-project.org/bin/linux/ubuntu wily/' > /etc/apt/sources.list.d/cran.list" shape="box"];
  "sha256:c88a0434351ed9cd11e45626e8d321c4b404ee684cbc60b6312d7fab0b732e4f" [label="/bin/sh -c apt-get install -qq r-base" shape="box"];
  "sha256:2cd5a343732538242183b52499d35fe7adc738133cebff3760481137e5ef5ed8" [label="/bin/sh -c echo 'update.packages(ask = FALSE, repos=\"http://cran.r-project.org\")' | R --vanilla" shape="box"];
  "sha256:a336730021c7be4b8b29ca304955d719c26207d33d445c9b1cc9a3c94f22f235" [label="/bin/sh -c echo 'install.packages(c(\"markdown\"), repos=\"http://cran.r-project.org\", dependencies=TRUE)' | R --vanilla" shape="box"];
  "sha256:ec5376a8777d416d7278fc0327eb41cee85af11e3127d12c784e0cae31fc6226" [label="/bin/sh -c echo 'install.packages(c(\"knitr\"), repos=\"http://cran.r-project.org\", dependencies=TRUE)' | R --vanilla" shape="box"];
  "sha256:847168383bac0663334b94f368e697573854fc55cd977c7adade859cbdd126e4" [label="/bin/sh -c echo 'install.packages(c(\"Cairo\"), repos=\"http://cran.r-project.org\", dependencies=TRUE)' | R --vanilla" shape="box"];
  "sha256:b9c801401db1b61869770df53fe4eb9632c88a21d9ae4861da12e9b826693c43" [label="/bin/sh -c echo 'install.packages(c(\"ggplot2\"), repos=\"http://cran.r-project.org\", dependencies=TRUE)' | R --vanilla" shape="box"];
  "sha256:fcf01610e61fb635d0d432f04afc3375d52dd1f89c90d192d80247d300632907" [label="/bin/sh -c echo 'install.packages(c(\"scales\"), repos=\"http://cran.r-project.org\", dependencies=TRUE)' | R --vanilla" shape="box"];
  "sha256:764f15cd1170c85f49c1f7f43b1e3beb133c1c84c2a7d0618e8963ddb45ad6a5" [label="/bin/sh -c wget -q https://static.rust-lang.org/dist/rust-${rust_version}.tar.gz" shape="box"];
  "sha256:d21f51a9fd359073b41603fef7a830ff6d0095d9a5222f6d52000da143bb3851" [label="/bin/sh -c tar xzf rust-${rust_version}.tar.gz" shape="box"];
  "sha256:bd3a5b7bf725f88c61e0035eeb03a566135ad39d098a594609c0ba0a6d21498a" [label="/bin/sh -c rust-${rust_version}/install.sh --without=rust-docs" shape="box"];
  "sha256:550f7ebdf20abe512c047711085de5226ada76247d6f64708a97aabc862f3103" [label="/bin/sh -c rm -fr rust-${rust_version}.tar.gz rust-${rust_version}" shape="box"];
  "sha256:5fc5adcd5a8b69141ad70cabdee1fb4fc4579e284cf200c417138c71a11840f1" [label="/bin/sh -c cargo install --git https://github.com/rust-lang-nursery/rustfmt --root /usr" shape="box"];
  "sha256:956ecdab88023f9b56a2dfbaac44a89cce817f3d447ff53e911b07aa9bd9cb55" [label="sha256:956ecdab88023f9b56a2dfbaac44a89cce817f3d447ff53e911b07aa9bd9cb55" shape="plaintext"];
  "sha256:f42adffb46b864171b8cc659c140638a35e604265374726c0c78a3e5c4e5bc3c" -> "sha256:8aa73756a69838bb45674cac1d568a8fb8f5f238f771807c12d8b685c3bfed97" [label=""];
  "sha256:8aa73756a69838bb45674cac1d568a8fb8f5f238f771807c12d8b685c3bfed97" -> "sha256:74e639ebc96955fe1f3bed240d499510946921a6919a2e5c8b0f469c4b1ec8cf" [label=""];
  "sha256:74e639ebc96955fe1f3bed240d499510946921a6919a2e5c8b0f469c4b1ec8cf" -> "sha256:c5bbb232dfe4a3ec481a6cb81183f6c6ff97a544604a5ec7f632289e6cf95063" [label=""];
  "sha256:c5bbb232dfe4a3ec481a6cb81183f6c6ff97a544604a5ec7f632289e6cf95063" -> "sha256:4238097defac104159330b6d28ae2565a5c88e36005163d7ddcd0300ca5da243" [label=""];
  "sha256:4238097defac104159330b6d28ae2565a5c88e36005163d7ddcd0300ca5da243" -> "sha256:5f7e5e7242ab71dc3a76c7296ac854f1ff5f834a3c40fcb450630ab29297712c" [label=""];
  "sha256:5f7e5e7242ab71dc3a76c7296ac854f1ff5f834a3c40fcb450630ab29297712c" -> "sha256:9bfef1bace01b3ff15c0c25ae1a51fd1a9887dc359add9eceed182749ff87771" [label=""];
  "sha256:9bfef1bace01b3ff15c0c25ae1a51fd1a9887dc359add9eceed182749ff87771" -> "sha256:4db2a9c7b9a81eae7ea9e4c74c8f6557c263bd0f1018c5cb023b67e5909efc90" [label=""];
  "sha256:4db2a9c7b9a81eae7ea9e4c74c8f6557c263bd0f1018c5cb023b67e5909efc90" -> "sha256:9f798bb21517c7d08f432cd81a188cdd386a53126a0f47153cc2bbd46bc0c6ae" [label=""];
  "sha256:9f798bb21517c7d08f432cd81a188cdd386a53126a0f47153cc2bbd46bc0c6ae" -> "sha256:2f0b8faf2f5e12149149abe0ecb2b2fa31dd68ac9c2dab95c2edef1580eff8d6" [label=""];
  "sha256:2f0b8faf2f5e12149149abe0ecb2b2fa31dd68ac9c2dab95c2edef1580eff8d6" -> "sha256:5cd906e5b27c393dfe5c3ea4ff58f6bc0c9ecd8a1794b9bd0984c85133e9842b" [label=""];
  "sha256:5cd906e5b27c393dfe5c3ea4ff58f6bc0c9ecd8a1794b9bd0984c85133e9842b" -> "sha256:9353f4eba65655a8fbfb36b74649f9e64fa3745b088080142f5754793e45448f" [label=""];
  "sha256:9353f4eba65655a8fbfb36b74649f9e64fa3745b088080142f5754793e45448f" -> "sha256:118a675f61b3c378a3c61be62b4cd949f190d35c92f5809c9050abc83cb6d191" [label=""];
  "sha256:118a675f61b3c378a3c61be62b4cd949f190d35c92f5809c9050abc83cb6d191" -> "sha256:fe6b329d6f50143facb3f05bd9dc6fc781b5603e5b61dc11ecf472d6286f3fda" [label=""];
  "sha256:fe6b329d6f50143facb3f05bd9dc6fc781b5603e5b61dc11ecf472d6286f3fda" -> "sha256:da2d0e32d4ac611d5bd0566f2fca23dc84ff4ae7cc94364fc88c38484b455c10" [label=""];
  "sha256:da2d0e32d4ac611d5bd0566f2fca23dc84ff4ae7cc94364fc88c38484b455c10" -> "sha256:c88a0434351ed9cd11e45626e8d321c4b404ee684cbc60b6312d7fab0b732e4f" [label=""];
  "sha256:c88a0434351ed9cd11e45626e8d321c4b404ee684cbc60b6312d7fab0b732e4f" -> "sha256:2cd5a343732538242183b52499d35fe7adc738133cebff3760481137e5ef5ed8" [label=""];
  "sha256:2cd5a343732538242183b52499d35fe7adc738133cebff3760481137e5ef5ed8" -> "sha256:a336730021c7be4b8b29ca304955d719c26207d33d445c9b1cc9a3c94f22f235" [label=""];
  "sha256:a336730021c7be4b8b29ca304955d719c26207d33d445c9b1cc9a3c94f22f235" -> "sha256:ec5376a8777d416d7278fc0327eb41cee85af11e3127d12c784e0cae31fc6226" [label=""];
  "sha256:ec5376a8777d416d7278fc0327eb41cee85af11e3127d12c784e0cae31fc6226" -> "sha256:847168383bac0663334b94f368e697573854fc55cd977c7adade859cbdd126e4" [label=""];
  "sha256:847168383bac0663334b94f368e697573854fc55cd977c7adade859cbdd126e4" -> "sha256:b9c801401db1b61869770df53fe4eb9632c88a21d9ae4861da12e9b826693c43" [label=""];
  "sha256:b9c801401db1b61869770df53fe4eb9632c88a21d9ae4861da12e9b826693c43" -> "sha256:fcf01610e61fb635d0d432f04afc3375d52dd1f89c90d192d80247d300632907" [label=""];
  "sha256:fcf01610e61fb635d0d432f04afc3375d52dd1f89c90d192d80247d300632907" -> "sha256:764f15cd1170c85f49c1f7f43b1e3beb133c1c84c2a7d0618e8963ddb45ad6a5" [label=""];
  "sha256:764f15cd1170c85f49c1f7f43b1e3beb133c1c84c2a7d0618e8963ddb45ad6a5" -> "sha256:d21f51a9fd359073b41603fef7a830ff6d0095d9a5222f6d52000da143bb3851" [label=""];
  "sha256:d21f51a9fd359073b41603fef7a830ff6d0095d9a5222f6d52000da143bb3851" -> "sha256:bd3a5b7bf725f88c61e0035eeb03a566135ad39d098a594609c0ba0a6d21498a" [label=""];
  "sha256:bd3a5b7bf725f88c61e0035eeb03a566135ad39d098a594609c0ba0a6d21498a" -> "sha256:550f7ebdf20abe512c047711085de5226ada76247d6f64708a97aabc862f3103" [label=""];
  "sha256:550f7ebdf20abe512c047711085de5226ada76247d6f64708a97aabc862f3103" -> "sha256:5fc5adcd5a8b69141ad70cabdee1fb4fc4579e284cf200c417138c71a11840f1" [label=""];
  "sha256:5fc5adcd5a8b69141ad70cabdee1fb4fc4579e284cf200c417138c71a11840f1" -> "sha256:956ecdab88023f9b56a2dfbaac44a89cce817f3d447ff53e911b07aa9bd9cb55" [label=""];
}

