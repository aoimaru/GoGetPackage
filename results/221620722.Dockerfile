[app/sources/221620722.Dockerfile]
digraph {
  "sha256:2c7c684e9dba81ede849083048ed6bce2ea11f02b6e83f7daeb7130531f91c8c" [label="local://context" shape="ellipse"];
  "sha256:7a6b580ee4e7caf2c6fc90205395efffa8d36aa48a97bfbf9580eec0b3ad3890" [label="docker-image://docker.io/library/ruby:2.1.8@sha256:67169811e302fd3dcedfd730f659edb353f724781ca148424c3edd80bad9c8ed" shape="ellipse"];
  "sha256:c079a50747007454f61f2981e284a6e7d88aa6dbafb6b57e6bd45389fe18da92" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:bf40688323bf2852d31ebef2f2cf02523a496f6c9e4aa8b6ac2d07337927fa79" [label="/bin/sh -c apt-get install nodejs -y" shape="box"];
  "sha256:aafa19413f59f6f54162db87784981e2ced0c0ffe34b576a6d7ee0be000006eb" [label="/bin/sh -c apt-get install nginx -y" shape="box"];
  "sha256:734cf981b7b1ebb33f6419380c6d99e0e03baeaeb0ea9ee189ecfbdaba4b1fa2" [label="mkdir{path=/tmp}" shape="note"];
  "sha256:bdfcc9fa9a8727cff85fbbb6f81bb57c2e489cf82279b26df87e34580e8c8b47" [label="copy{src=/middleman/Gemfile, dest=/tmp/Gemfile}" shape="note"];
  "sha256:64b607d968fe97fb7914f437904e756777ff651edc1915b0025bb5475c36af5f" [label="copy{src=/middleman/Gemfile.lock, dest=/tmp/Gemfile.lock}" shape="note"];
  "sha256:58ae3228d1118341a6750edfae618c276f58519037e409764ec3aa2332b50dc9" [label="/bin/sh -c bundle install" shape="box"];
  "sha256:e5342ea11f704900b6916dc90646b756fcc62943d754f18340cc6192f0ba8e33" [label="/bin/sh -c rm -f /etc/service/nginx/down" shape="box"];
  "sha256:ec5f822bef5667f484eef76fd760a29afe91d727737e616bf0aa72d3c422be53" [label="copy{src=/nginx/default.conf, dest=/etc/nginx/sites-available/default}" shape="note"];
  "sha256:7f27044a8e54c269bd9fa4948a7bf007af557c8caf025ab102e25e815ecdd19d" [label="copy{src=/nginx/nginx.conf, dest=/etc/nginx/nginx.conf}" shape="note"];
  "sha256:e754837b59b2f74c9d68b4f55f3e5baccfd2ecd511c9ae694863c9f5919c53d0" [label="mkdir{path=/home/app}" shape="note"];
  "sha256:bcab963bb2eb3d26b7f2e4389756fba8494b7bfd01b293c09980a229a17874a7" [label="copy{src=/middleman, dest=/home/app}" shape="note"];
  "sha256:f0ef2fbc137826d59a4581b78f03b4d72edd3d5a3992ae8b9df3ed4e2a21bef6" [label="/bin/sh -c bundle exec middleman build --verbose" shape="box"];
  "sha256:d91de0b8e61564603244dcf38b06749e81cc0e1a8dcb0dfc38a4c153ac24f7e2" [label="sha256:d91de0b8e61564603244dcf38b06749e81cc0e1a8dcb0dfc38a4c153ac24f7e2" shape="plaintext"];
  "sha256:7a6b580ee4e7caf2c6fc90205395efffa8d36aa48a97bfbf9580eec0b3ad3890" -> "sha256:c079a50747007454f61f2981e284a6e7d88aa6dbafb6b57e6bd45389fe18da92" [label=""];
  "sha256:c079a50747007454f61f2981e284a6e7d88aa6dbafb6b57e6bd45389fe18da92" -> "sha256:bf40688323bf2852d31ebef2f2cf02523a496f6c9e4aa8b6ac2d07337927fa79" [label=""];
  "sha256:bf40688323bf2852d31ebef2f2cf02523a496f6c9e4aa8b6ac2d07337927fa79" -> "sha256:aafa19413f59f6f54162db87784981e2ced0c0ffe34b576a6d7ee0be000006eb" [label=""];
  "sha256:aafa19413f59f6f54162db87784981e2ced0c0ffe34b576a6d7ee0be000006eb" -> "sha256:734cf981b7b1ebb33f6419380c6d99e0e03baeaeb0ea9ee189ecfbdaba4b1fa2" [label=""];
  "sha256:734cf981b7b1ebb33f6419380c6d99e0e03baeaeb0ea9ee189ecfbdaba4b1fa2" -> "sha256:bdfcc9fa9a8727cff85fbbb6f81bb57c2e489cf82279b26df87e34580e8c8b47" [label=""];
  "sha256:2c7c684e9dba81ede849083048ed6bce2ea11f02b6e83f7daeb7130531f91c8c" -> "sha256:bdfcc9fa9a8727cff85fbbb6f81bb57c2e489cf82279b26df87e34580e8c8b47" [label=""];
  "sha256:bdfcc9fa9a8727cff85fbbb6f81bb57c2e489cf82279b26df87e34580e8c8b47" -> "sha256:64b607d968fe97fb7914f437904e756777ff651edc1915b0025bb5475c36af5f" [label=""];
  "sha256:2c7c684e9dba81ede849083048ed6bce2ea11f02b6e83f7daeb7130531f91c8c" -> "sha256:64b607d968fe97fb7914f437904e756777ff651edc1915b0025bb5475c36af5f" [label=""];
  "sha256:64b607d968fe97fb7914f437904e756777ff651edc1915b0025bb5475c36af5f" -> "sha256:58ae3228d1118341a6750edfae618c276f58519037e409764ec3aa2332b50dc9" [label=""];
  "sha256:58ae3228d1118341a6750edfae618c276f58519037e409764ec3aa2332b50dc9" -> "sha256:e5342ea11f704900b6916dc90646b756fcc62943d754f18340cc6192f0ba8e33" [label=""];
  "sha256:e5342ea11f704900b6916dc90646b756fcc62943d754f18340cc6192f0ba8e33" -> "sha256:ec5f822bef5667f484eef76fd760a29afe91d727737e616bf0aa72d3c422be53" [label=""];
  "sha256:2c7c684e9dba81ede849083048ed6bce2ea11f02b6e83f7daeb7130531f91c8c" -> "sha256:ec5f822bef5667f484eef76fd760a29afe91d727737e616bf0aa72d3c422be53" [label=""];
  "sha256:ec5f822bef5667f484eef76fd760a29afe91d727737e616bf0aa72d3c422be53" -> "sha256:7f27044a8e54c269bd9fa4948a7bf007af557c8caf025ab102e25e815ecdd19d" [label=""];
  "sha256:2c7c684e9dba81ede849083048ed6bce2ea11f02b6e83f7daeb7130531f91c8c" -> "sha256:7f27044a8e54c269bd9fa4948a7bf007af557c8caf025ab102e25e815ecdd19d" [label=""];
  "sha256:7f27044a8e54c269bd9fa4948a7bf007af557c8caf025ab102e25e815ecdd19d" -> "sha256:e754837b59b2f74c9d68b4f55f3e5baccfd2ecd511c9ae694863c9f5919c53d0" [label=""];
  "sha256:e754837b59b2f74c9d68b4f55f3e5baccfd2ecd511c9ae694863c9f5919c53d0" -> "sha256:bcab963bb2eb3d26b7f2e4389756fba8494b7bfd01b293c09980a229a17874a7" [label=""];
  "sha256:2c7c684e9dba81ede849083048ed6bce2ea11f02b6e83f7daeb7130531f91c8c" -> "sha256:bcab963bb2eb3d26b7f2e4389756fba8494b7bfd01b293c09980a229a17874a7" [label=""];
  "sha256:bcab963bb2eb3d26b7f2e4389756fba8494b7bfd01b293c09980a229a17874a7" -> "sha256:f0ef2fbc137826d59a4581b78f03b4d72edd3d5a3992ae8b9df3ed4e2a21bef6" [label=""];
  "sha256:f0ef2fbc137826d59a4581b78f03b4d72edd3d5a3992ae8b9df3ed4e2a21bef6" -> "sha256:d91de0b8e61564603244dcf38b06749e81cc0e1a8dcb0dfc38a4c153ac24f7e2" [label=""];
}

