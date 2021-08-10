[app/sources/461152836.Dockerfile]
digraph {
  "sha256:fb0b5f3e3df60ee7340bd6c35ef35660fd30484802060fe6deefaf441391f4c0" [label="docker-image://docker.io/library/alpine:3.8" shape="ellipse"];
  "sha256:2e5b7c594d2d898834e1eb51924d35c1b5bfcc29edb3f0719ed172f34c7f0526" [label="/bin/sh -c apk add --no-cache       build-base       ctags       git       libx11-dev       libxpm-dev       libxt-dev       make       ncurses-dev       ruby       ruby-dev" shape="box"];
  "sha256:0af22ff5710940dee3133f7ebe61e03f7636c9dd1d1add77a8194ee825bb9918" [label="/bin/sh -c git clone https://github.com/vim/vim   && cd vim   && ./configure   --disable-gui   --disable-netbeans   --enable-multibyte   --enable-rubyinterp   --with-ruby-command=/usr/bin/ruby   --with-features=big   && make install" shape="box"];
  "sha256:c30f77ada7ea7cfaf4bfedcbe5f17908808c3968c4a58c07a624d27f3025c130" [label="copy{src=/usr/local/bin, dest=/usr/local/bin}" shape="note"];
  "sha256:94da47d17603e707880b66f928034aa855ab35844eb2b98d71560189d4e466e8" [label="copy{src=/usr/local/share/vim, dest=/usr/local/share/vim/}" shape="note"];
  "sha256:8e02610c99cad3fbabbb9e9724076b928925662bcbff3ce97a8eefb9dfbc7a69" [label="/bin/sh -c apk add bash neovim ruby gcc make git unzip ruby-rdoc ruby-dev terraform cmake build-base diffutils libice libsm libx11 libxt ncurses" shape="box"];
  "sha256:2b2266fca11a7692b315471cb5a538b01f9f155b0befe8588c1e5650575319e5" [label="/bin/sh -c gem install neovim" shape="box"];
  "sha256:5e2cfe4c0767f43333b4910f5642a1461fffd60049cc92b903befd2276643df3" [label="sha256:5e2cfe4c0767f43333b4910f5642a1461fffd60049cc92b903befd2276643df3" shape="plaintext"];
  "sha256:fb0b5f3e3df60ee7340bd6c35ef35660fd30484802060fe6deefaf441391f4c0" -> "sha256:2e5b7c594d2d898834e1eb51924d35c1b5bfcc29edb3f0719ed172f34c7f0526" [label=""];
  "sha256:2e5b7c594d2d898834e1eb51924d35c1b5bfcc29edb3f0719ed172f34c7f0526" -> "sha256:0af22ff5710940dee3133f7ebe61e03f7636c9dd1d1add77a8194ee825bb9918" [label=""];
  "sha256:fb0b5f3e3df60ee7340bd6c35ef35660fd30484802060fe6deefaf441391f4c0" -> "sha256:c30f77ada7ea7cfaf4bfedcbe5f17908808c3968c4a58c07a624d27f3025c130" [label=""];
  "sha256:0af22ff5710940dee3133f7ebe61e03f7636c9dd1d1add77a8194ee825bb9918" -> "sha256:c30f77ada7ea7cfaf4bfedcbe5f17908808c3968c4a58c07a624d27f3025c130" [label=""];
  "sha256:c30f77ada7ea7cfaf4bfedcbe5f17908808c3968c4a58c07a624d27f3025c130" -> "sha256:94da47d17603e707880b66f928034aa855ab35844eb2b98d71560189d4e466e8" [label=""];
  "sha256:0af22ff5710940dee3133f7ebe61e03f7636c9dd1d1add77a8194ee825bb9918" -> "sha256:94da47d17603e707880b66f928034aa855ab35844eb2b98d71560189d4e466e8" [label=""];
  "sha256:94da47d17603e707880b66f928034aa855ab35844eb2b98d71560189d4e466e8" -> "sha256:8e02610c99cad3fbabbb9e9724076b928925662bcbff3ce97a8eefb9dfbc7a69" [label=""];
  "sha256:8e02610c99cad3fbabbb9e9724076b928925662bcbff3ce97a8eefb9dfbc7a69" -> "sha256:2b2266fca11a7692b315471cb5a538b01f9f155b0befe8588c1e5650575319e5" [label=""];
  "sha256:2b2266fca11a7692b315471cb5a538b01f9f155b0befe8588c1e5650575319e5" -> "sha256:5e2cfe4c0767f43333b4910f5642a1461fffd60049cc92b903befd2276643df3" [label=""];
}

