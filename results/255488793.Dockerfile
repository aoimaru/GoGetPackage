[app/sources/255488793.Dockerfile]
digraph {
  "sha256:a09864e500e453ace4f8e40ee7b9387e08e35e3b1bcb3ab1c3c24b57be1e9a09" [label="docker-image://docker.io/library/ruby:2.6.2-alpine3.9" shape="ellipse"];
  "sha256:733e6ef372946c9c04ce7fcf6475f1def216103aafc1c97fa7a0ea9a50543969" [label="/bin/sh -c addgroup -S $METASPLOIT_GROUP" shape="box"];
  "sha256:5c2e0a169928dc24d851cc7ec2073b182b8a827b48630c774a8ce8e376fd23ef" [label="/bin/sh -c apk add --no-cache bash sqlite-libs nmap nmap-scripts nmap-nselibs postgresql-libs python python3 ncurses libcap su-exec" shape="box"];
  "sha256:81ce363686083a2c50827c5714157d4d2eee06dccce197dce26f9d0aeffaac62" [label="/bin/sh -c /usr/sbin/setcap cap_net_raw,cap_net_bind_service=+eip $(which ruby)" shape="box"];
  "sha256:567f58cdb208706e215caed7b4df7a38eb65ea1f4034caf9e22d5b49e8439f2a" [label="/bin/sh -c /usr/sbin/setcap cap_net_raw,cap_net_bind_service=+eip $(which nmap)" shape="box"];
  "sha256:07392930a0040196790afa5518deae8c4db6672be707d5e623bf3728144be380" [label="mkdir{path=/usr/src/metasploit-framework}" shape="note"];
  "sha256:9bf9fed2519e363a5bf40c9dff1c955d485806372fe1bc71f29f8e424f145bda" [label="local://context" shape="ellipse"];
  "sha256:8ddcc794ddcf0b8e9d3dcab294eb782c8272f1b586c15ff9765ec527a975a8ea" [label="copy{src=/Gemfile*, dest=/usr/src/metasploit-framework/},copy{src=/metasploit-framework.gemspec, dest=/usr/src/metasploit-framework/},copy{src=/Rakefile, dest=/usr/src/metasploit-framework/}" shape="note"];
  "sha256:925a20f0ea711b8862c53067647593bc5f67bd7de1f1466fbe9c611adb2bee15" [label="copy{src=/lib/metasploit/framework/version.rb, dest=/usr/src/metasploit-framework/lib/metasploit/framework/version.rb}" shape="note"];
  "sha256:630e25670d2da62c37f6d545e67a9736c6c5208fb45b1df1af5a1913d076ef1a" [label="copy{src=/lib/metasploit/framework/rails_version_constraint.rb, dest=/usr/src/metasploit-framework/lib/metasploit/framework/rails_version_constraint.rb}" shape="note"];
  "sha256:8dd380d25922deb59ee254fe66e15bf6c751d904a34c7f50bcb809987148dc03" [label="copy{src=/lib/msf/util/helper.rb, dest=/usr/src/metasploit-framework/lib/msf/util/helper.rb}" shape="note"];
  "sha256:2c3b2bf6b97f27f012ec77b504fe7d6137d80e3ead4be6811c188b07f2e49bb8" [label="/bin/sh -c apk add --no-cache       autoconf       bison       build-base       ruby-dev       openssl-dev       readline-dev       sqlite-dev       postgresql-dev       libpcap-dev       libxml2-dev       libxslt-dev       yaml-dev       zlib-dev       ncurses-dev       git     && echo \"gem: --no-ri --no-rdoc\" > /etc/gemrc     && gem update --system     && bundle install --clean --no-cache --system $BUNDLER_ARGS     && rm -rf /usr/local/bundle/cache     && chmod -R a+r /usr/local/bundle" shape="box"];
  "sha256:3b9bdbf88f87deae2faeb68ea4f84c7e266842a9c66e394b31fa7807802f4d33" [label="copy{src=/usr/local/bundle, dest=/usr/local/bundle}" shape="note"];
  "sha256:e44637125fb7fc88e4e574a6902e1321b04aa16a0abec20c701507c635a62764" [label="copy{src=/, dest=/usr/src/metasploit-framework/}" shape="note"];
  "sha256:9d6e48144c63daeb67896c29ed860412bae0127ab1ba52c7360482119fdaa832" [label="/bin/sh -c cp -f $APP_HOME/docker/database.yml $APP_HOME/config/database.yml" shape="box"];
  "sha256:d28dfeaea50debbb85487a30d008c54a53e154157907465cef02d5e77fed30aa" [label="mkdir{path=/usr/src/metasploit-framework}" shape="note"];
  "sha256:e9913e0214182457c3eee652dfa06b53006298d27bb1d0d255d32c070d9ec995" [label="sha256:e9913e0214182457c3eee652dfa06b53006298d27bb1d0d255d32c070d9ec995" shape="plaintext"];
  "sha256:a09864e500e453ace4f8e40ee7b9387e08e35e3b1bcb3ab1c3c24b57be1e9a09" -> "sha256:733e6ef372946c9c04ce7fcf6475f1def216103aafc1c97fa7a0ea9a50543969" [label=""];
  "sha256:733e6ef372946c9c04ce7fcf6475f1def216103aafc1c97fa7a0ea9a50543969" -> "sha256:5c2e0a169928dc24d851cc7ec2073b182b8a827b48630c774a8ce8e376fd23ef" [label=""];
  "sha256:5c2e0a169928dc24d851cc7ec2073b182b8a827b48630c774a8ce8e376fd23ef" -> "sha256:81ce363686083a2c50827c5714157d4d2eee06dccce197dce26f9d0aeffaac62" [label=""];
  "sha256:81ce363686083a2c50827c5714157d4d2eee06dccce197dce26f9d0aeffaac62" -> "sha256:567f58cdb208706e215caed7b4df7a38eb65ea1f4034caf9e22d5b49e8439f2a" [label=""];
  "sha256:a09864e500e453ace4f8e40ee7b9387e08e35e3b1bcb3ab1c3c24b57be1e9a09" -> "sha256:07392930a0040196790afa5518deae8c4db6672be707d5e623bf3728144be380" [label=""];
  "sha256:07392930a0040196790afa5518deae8c4db6672be707d5e623bf3728144be380" -> "sha256:8ddcc794ddcf0b8e9d3dcab294eb782c8272f1b586c15ff9765ec527a975a8ea" [label=""];
  "sha256:9bf9fed2519e363a5bf40c9dff1c955d485806372fe1bc71f29f8e424f145bda" -> "sha256:8ddcc794ddcf0b8e9d3dcab294eb782c8272f1b586c15ff9765ec527a975a8ea" [label=""];
  "sha256:8ddcc794ddcf0b8e9d3dcab294eb782c8272f1b586c15ff9765ec527a975a8ea" -> "sha256:925a20f0ea711b8862c53067647593bc5f67bd7de1f1466fbe9c611adb2bee15" [label=""];
  "sha256:9bf9fed2519e363a5bf40c9dff1c955d485806372fe1bc71f29f8e424f145bda" -> "sha256:925a20f0ea711b8862c53067647593bc5f67bd7de1f1466fbe9c611adb2bee15" [label=""];
  "sha256:925a20f0ea711b8862c53067647593bc5f67bd7de1f1466fbe9c611adb2bee15" -> "sha256:630e25670d2da62c37f6d545e67a9736c6c5208fb45b1df1af5a1913d076ef1a" [label=""];
  "sha256:9bf9fed2519e363a5bf40c9dff1c955d485806372fe1bc71f29f8e424f145bda" -> "sha256:630e25670d2da62c37f6d545e67a9736c6c5208fb45b1df1af5a1913d076ef1a" [label=""];
  "sha256:630e25670d2da62c37f6d545e67a9736c6c5208fb45b1df1af5a1913d076ef1a" -> "sha256:8dd380d25922deb59ee254fe66e15bf6c751d904a34c7f50bcb809987148dc03" [label=""];
  "sha256:9bf9fed2519e363a5bf40c9dff1c955d485806372fe1bc71f29f8e424f145bda" -> "sha256:8dd380d25922deb59ee254fe66e15bf6c751d904a34c7f50bcb809987148dc03" [label=""];
  "sha256:8dd380d25922deb59ee254fe66e15bf6c751d904a34c7f50bcb809987148dc03" -> "sha256:2c3b2bf6b97f27f012ec77b504fe7d6137d80e3ead4be6811c188b07f2e49bb8" [label=""];
  "sha256:567f58cdb208706e215caed7b4df7a38eb65ea1f4034caf9e22d5b49e8439f2a" -> "sha256:3b9bdbf88f87deae2faeb68ea4f84c7e266842a9c66e394b31fa7807802f4d33" [label=""];
  "sha256:2c3b2bf6b97f27f012ec77b504fe7d6137d80e3ead4be6811c188b07f2e49bb8" -> "sha256:3b9bdbf88f87deae2faeb68ea4f84c7e266842a9c66e394b31fa7807802f4d33" [label=""];
  "sha256:3b9bdbf88f87deae2faeb68ea4f84c7e266842a9c66e394b31fa7807802f4d33" -> "sha256:e44637125fb7fc88e4e574a6902e1321b04aa16a0abec20c701507c635a62764" [label=""];
  "sha256:9bf9fed2519e363a5bf40c9dff1c955d485806372fe1bc71f29f8e424f145bda" -> "sha256:e44637125fb7fc88e4e574a6902e1321b04aa16a0abec20c701507c635a62764" [label=""];
  "sha256:e44637125fb7fc88e4e574a6902e1321b04aa16a0abec20c701507c635a62764" -> "sha256:9d6e48144c63daeb67896c29ed860412bae0127ab1ba52c7360482119fdaa832" [label=""];
  "sha256:9d6e48144c63daeb67896c29ed860412bae0127ab1ba52c7360482119fdaa832" -> "sha256:d28dfeaea50debbb85487a30d008c54a53e154157907465cef02d5e77fed30aa" [label=""];
  "sha256:d28dfeaea50debbb85487a30d008c54a53e154157907465cef02d5e77fed30aa" -> "sha256:e9913e0214182457c3eee652dfa06b53006298d27bb1d0d255d32c070d9ec995" [label=""];
}

