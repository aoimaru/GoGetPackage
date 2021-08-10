[app/sources/392426632.Dockerfile]
digraph {
  "sha256:820310e69daf592f3c5fb2d1a63d812c663479481a0af4e8a7a8bb8a3c22bd38" [label="docker-image://docker.io/library/ruby:2.6.1" shape="ellipse"];
  "sha256:6c3ae7c3464b8945fdbba8e5a89cbf5faac9bcb497d83e1dc2d75215033e7ec7" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:222d9c8dd69291ee1a6080e36fd04bbe19fd5994779a487bd57e0cad6682996c" [label="local://context" shape="ellipse"];
  "sha256:00793bccde7ab5d495d50474dd50590cd35b11ddc345fe9237b4359628016074" [label="copy{src=/Gemfile, dest=/usr/src/app/},copy{src=/app.rb, dest=/usr/src/app/},copy{src=/config.ru, dest=/usr/src/app/}" shape="note"];
  "sha256:59554fc395030a9b68ceea327d9622e960d02b21400c41aac576d95cdc88ae26" [label="/bin/sh -c bundle install" shape="box"];
  "sha256:93492eb70256a6b368e1be29d693073bb75e8d66cf0a4e876115b1fe190f3c14" [label="sha256:93492eb70256a6b368e1be29d693073bb75e8d66cf0a4e876115b1fe190f3c14" shape="plaintext"];
  "sha256:820310e69daf592f3c5fb2d1a63d812c663479481a0af4e8a7a8bb8a3c22bd38" -> "sha256:6c3ae7c3464b8945fdbba8e5a89cbf5faac9bcb497d83e1dc2d75215033e7ec7" [label=""];
  "sha256:6c3ae7c3464b8945fdbba8e5a89cbf5faac9bcb497d83e1dc2d75215033e7ec7" -> "sha256:00793bccde7ab5d495d50474dd50590cd35b11ddc345fe9237b4359628016074" [label=""];
  "sha256:222d9c8dd69291ee1a6080e36fd04bbe19fd5994779a487bd57e0cad6682996c" -> "sha256:00793bccde7ab5d495d50474dd50590cd35b11ddc345fe9237b4359628016074" [label=""];
  "sha256:00793bccde7ab5d495d50474dd50590cd35b11ddc345fe9237b4359628016074" -> "sha256:59554fc395030a9b68ceea327d9622e960d02b21400c41aac576d95cdc88ae26" [label=""];
  "sha256:59554fc395030a9b68ceea327d9622e960d02b21400c41aac576d95cdc88ae26" -> "sha256:93492eb70256a6b368e1be29d693073bb75e8d66cf0a4e876115b1fe190f3c14" [label=""];
}

