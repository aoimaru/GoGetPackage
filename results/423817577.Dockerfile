[app/sources/423817577.Dockerfile]
digraph {
  "sha256:49c6704830d80c298255389caa3b5141deea54cb3aa312e18e6f9eb17a257a9c" [label="local://context" shape="ellipse"];
  "sha256:2eb89b7fad3ef9430b4515acb8e00a48e39ef55cfe05f5d2e6ae5793054fd6de" [label="docker-image://docker.io/rocker/rstudio:3.5.1@sha256:a1d65ab350315824fa572b4764241012018fb656402ca7b1237cbc6b9365fa1f" shape="ellipse"];
  "sha256:dfd7bf61a72a566dbfefbd9d56734f3b7dae58049d74cd5801171c126efac2f9" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:743d94c0d02a28c1d6d880e9f68383072ba5ad77b4e7d3585e9d0ab04d855566" [label="/bin/sh -c if [ ! -f /var/lib/dpkg/available ]; then         apt-get install -y dselect &&         dselect update;     fi" shape="box"];
  "sha256:ae22d113eafe601983a6f1eb57f734aed344f6b6cf0c84251af772fee5900930" [label="/bin/sh -c apt-get install -y automake                         autotools-dev                         fuse                         g++                         git                         libcurl4-gnutls-dev                         libfuse-dev                         libssl-dev                         libxml2-dev                         make                         default-jdk                         apt-utils                         cmake                         pkg-config                         fuse                         nginx                         curl                         zlib1g-dev                         libncurses5-dev                         gettext-base                         libjsoncpp-dev &&     curl https://bootstrap.pypa.io/get-pip.py | python -" shape="box"];
  "sha256:217909d8d36f9c3170ae9b03c917e660a0f3f8dc4b3fbec740b5185cee711d51" [label="/bin/sh -c apt-get install -y libssl1.0-dev                         libffi-dev                         python-dev" shape="box"];
  "sha256:a795b4845b38c204892d93f13b30647574e19df6c90dfac9a6e30e17c5c27203" [label="/bin/sh -c wget -q https://github.com/libgit2/libgit2/archive/v0.24.1.tar.gz &&         tar xzf v0.24.1.tar.gz &&         cd libgit2-0.24.1/ &&         cmake . &&         make && make install && cd .." shape="box"];
  "sha256:0eb3a4e294d3146dedde42231a2c43cad2d9bd714c55eb1a4a39b0eeefe9e5f0" [label="/bin/sh -c ldconfig" shape="box"];
  "sha256:95451350da711cccc3b76a8f7fdc03ef556fdc4cdf5b9472028b00090285af03" [label="/bin/sh -c pip install 'pygit2==0.24.1'" shape="box"];
  "sha256:b821a43ce4057f80452c9e4bb1ce706c9eb2ae410aebbb8008c8c64a5ec4de5c" [label="/bin/sh -c wget -q https://codeload.github.com/PressLabs/gitfs/zip/0.4.5.1 &&         unzip 0.4.5.1 &&         cd gitfs-0.4.5.1 &&         python setup.py install && cd .." shape="box"];
  "sha256:26c7a296fb143de1d65f1856579e93616d21cccf6457ab63e19c8625281e8cb2" [label="/bin/sh -c mkdir -p /var/lib/gitfs" shape="box"];
  "sha256:df48e6c0e0faaa36f7bcddc11dc82c9e1b17fbd9e4a6d71e7905c1753ec7624e" [label="/bin/sh -c mkdir -p /etc/nginx/sites-enabled/" shape="box"];
  "sha256:4993c7654b4a7ba625efbf9570c9bb0dcd20416301f1b4e3c98d48a57543247b" [label="copy{src=/auto-fill-form-template.conf, dest=/auto-fill-form-template.conf}" shape="note"];
  "sha256:6584fa9ce563963c6cdc167863a7c94d03422950a01fdeb4bf0cfadda4e7851d" [label="copy{src=/nginx.conf, dest=/etc/nginx/nginx.conf}" shape="note"];
  "sha256:d1f6e87dd58f5e616a0ee389ca2372c736b1a12a76a4c8190953d5ca5c310f82" [label="copy{src=/start.sh, dest=/start.sh}" shape="note"];
  "sha256:e30bbe481276c5a880c32c7e9afec56f7a1017425df7867e48a52c14f8629398" [label="/bin/sh -c chmod 777 /start.sh" shape="box"];
  "sha256:1684fe8f3645314c5604459899bccc9dd6eb6ff715be2d56f2695c136d4b8c05" [label="/bin/sh -c sed -i '/mran.microsoft/d' /usr/local/lib/R/etc/Rprofile.site" shape="box"];
  "sha256:4deff5df6464a8e547d9cb7f24b5f4fa17bad913bb7ee2a5f01d9db0542d0f5e" [label="/bin/sh -c export ADD=shiny &&     bash /etc/cont-init.d/add &&     rm -rf /srv/shiny-server/* &&     chmod g+rwx /srv -R" shape="box"];
  "sha256:d3039357f665786c03a33dfd6c472a7dc5c49be3f208a61d5c61a96752232ce6" [label="/bin/sh -c rm -f /etc/cont-init.d/userconf" shape="box"];
  "sha256:a9abe216bdc6d59c975ec95f33edc17ec93ea7f844ec108f2694da7c8a5fd32a" [label="copy{src=/post_commit.sh, dest=/root/post_commit.sh}" shape="note"];
  "sha256:099361338bb6495faacd0b495da882cc4df20c7c77449a0dc6eb30202509081e" [label="/bin/sh -c chmod +x /root/post_commit.sh" shape="box"];
  "sha256:54ab7def68b130fb8b4ca5900ac92600403af173f84010ef641b7c611ccf6ecd" [label="sha256:54ab7def68b130fb8b4ca5900ac92600403af173f84010ef641b7c611ccf6ecd" shape="plaintext"];
  "sha256:2eb89b7fad3ef9430b4515acb8e00a48e39ef55cfe05f5d2e6ae5793054fd6de" -> "sha256:dfd7bf61a72a566dbfefbd9d56734f3b7dae58049d74cd5801171c126efac2f9" [label=""];
  "sha256:dfd7bf61a72a566dbfefbd9d56734f3b7dae58049d74cd5801171c126efac2f9" -> "sha256:743d94c0d02a28c1d6d880e9f68383072ba5ad77b4e7d3585e9d0ab04d855566" [label=""];
  "sha256:743d94c0d02a28c1d6d880e9f68383072ba5ad77b4e7d3585e9d0ab04d855566" -> "sha256:ae22d113eafe601983a6f1eb57f734aed344f6b6cf0c84251af772fee5900930" [label=""];
  "sha256:ae22d113eafe601983a6f1eb57f734aed344f6b6cf0c84251af772fee5900930" -> "sha256:217909d8d36f9c3170ae9b03c917e660a0f3f8dc4b3fbec740b5185cee711d51" [label=""];
  "sha256:217909d8d36f9c3170ae9b03c917e660a0f3f8dc4b3fbec740b5185cee711d51" -> "sha256:a795b4845b38c204892d93f13b30647574e19df6c90dfac9a6e30e17c5c27203" [label=""];
  "sha256:a795b4845b38c204892d93f13b30647574e19df6c90dfac9a6e30e17c5c27203" -> "sha256:0eb3a4e294d3146dedde42231a2c43cad2d9bd714c55eb1a4a39b0eeefe9e5f0" [label=""];
  "sha256:0eb3a4e294d3146dedde42231a2c43cad2d9bd714c55eb1a4a39b0eeefe9e5f0" -> "sha256:95451350da711cccc3b76a8f7fdc03ef556fdc4cdf5b9472028b00090285af03" [label=""];
  "sha256:95451350da711cccc3b76a8f7fdc03ef556fdc4cdf5b9472028b00090285af03" -> "sha256:b821a43ce4057f80452c9e4bb1ce706c9eb2ae410aebbb8008c8c64a5ec4de5c" [label=""];
  "sha256:b821a43ce4057f80452c9e4bb1ce706c9eb2ae410aebbb8008c8c64a5ec4de5c" -> "sha256:26c7a296fb143de1d65f1856579e93616d21cccf6457ab63e19c8625281e8cb2" [label=""];
  "sha256:26c7a296fb143de1d65f1856579e93616d21cccf6457ab63e19c8625281e8cb2" -> "sha256:df48e6c0e0faaa36f7bcddc11dc82c9e1b17fbd9e4a6d71e7905c1753ec7624e" [label=""];
  "sha256:df48e6c0e0faaa36f7bcddc11dc82c9e1b17fbd9e4a6d71e7905c1753ec7624e" -> "sha256:4993c7654b4a7ba625efbf9570c9bb0dcd20416301f1b4e3c98d48a57543247b" [label=""];
  "sha256:49c6704830d80c298255389caa3b5141deea54cb3aa312e18e6f9eb17a257a9c" -> "sha256:4993c7654b4a7ba625efbf9570c9bb0dcd20416301f1b4e3c98d48a57543247b" [label=""];
  "sha256:4993c7654b4a7ba625efbf9570c9bb0dcd20416301f1b4e3c98d48a57543247b" -> "sha256:6584fa9ce563963c6cdc167863a7c94d03422950a01fdeb4bf0cfadda4e7851d" [label=""];
  "sha256:49c6704830d80c298255389caa3b5141deea54cb3aa312e18e6f9eb17a257a9c" -> "sha256:6584fa9ce563963c6cdc167863a7c94d03422950a01fdeb4bf0cfadda4e7851d" [label=""];
  "sha256:6584fa9ce563963c6cdc167863a7c94d03422950a01fdeb4bf0cfadda4e7851d" -> "sha256:d1f6e87dd58f5e616a0ee389ca2372c736b1a12a76a4c8190953d5ca5c310f82" [label=""];
  "sha256:49c6704830d80c298255389caa3b5141deea54cb3aa312e18e6f9eb17a257a9c" -> "sha256:d1f6e87dd58f5e616a0ee389ca2372c736b1a12a76a4c8190953d5ca5c310f82" [label=""];
  "sha256:d1f6e87dd58f5e616a0ee389ca2372c736b1a12a76a4c8190953d5ca5c310f82" -> "sha256:e30bbe481276c5a880c32c7e9afec56f7a1017425df7867e48a52c14f8629398" [label=""];
  "sha256:e30bbe481276c5a880c32c7e9afec56f7a1017425df7867e48a52c14f8629398" -> "sha256:1684fe8f3645314c5604459899bccc9dd6eb6ff715be2d56f2695c136d4b8c05" [label=""];
  "sha256:1684fe8f3645314c5604459899bccc9dd6eb6ff715be2d56f2695c136d4b8c05" -> "sha256:4deff5df6464a8e547d9cb7f24b5f4fa17bad913bb7ee2a5f01d9db0542d0f5e" [label=""];
  "sha256:4deff5df6464a8e547d9cb7f24b5f4fa17bad913bb7ee2a5f01d9db0542d0f5e" -> "sha256:d3039357f665786c03a33dfd6c472a7dc5c49be3f208a61d5c61a96752232ce6" [label=""];
  "sha256:d3039357f665786c03a33dfd6c472a7dc5c49be3f208a61d5c61a96752232ce6" -> "sha256:a9abe216bdc6d59c975ec95f33edc17ec93ea7f844ec108f2694da7c8a5fd32a" [label=""];
  "sha256:49c6704830d80c298255389caa3b5141deea54cb3aa312e18e6f9eb17a257a9c" -> "sha256:a9abe216bdc6d59c975ec95f33edc17ec93ea7f844ec108f2694da7c8a5fd32a" [label=""];
  "sha256:a9abe216bdc6d59c975ec95f33edc17ec93ea7f844ec108f2694da7c8a5fd32a" -> "sha256:099361338bb6495faacd0b495da882cc4df20c7c77449a0dc6eb30202509081e" [label=""];
  "sha256:099361338bb6495faacd0b495da882cc4df20c7c77449a0dc6eb30202509081e" -> "sha256:54ab7def68b130fb8b4ca5900ac92600403af173f84010ef641b7c611ccf6ecd" [label=""];
}
