[app/sources/423817463.Dockerfile]
digraph {
  "sha256:eccdc23ae33ff032265281cdcd61b6bcb08837a6e55df3e7dcb5aef332534337" [label="docker-image://docker.io/library/centos:7" shape="ellipse"];
  "sha256:7f62b3a88bbe0fe8e0c5ab3b4155788a4287366af9e05c21e22e24b6bbca72d5" [label="/bin/sh -c curl -sL https://rpm.nodesource.com/setup_10.x | bash -" shape="box"];
  "sha256:9cef4a8dd8ef521db3d5c5bd76080d3570b0f6fc69b1bed04d87dcf10d7b17e8" [label="/bin/sh -c yum install gcc-c++                 make                 nodejs                 git                 openssl -y" shape="box"];
  "sha256:2478c617bcdb6520ad22e0d524105493b2ff80ae465ad920c1663169784d944a" [label="/bin/sh -c cd /opt &&     git clone https://github.com/rodichenko/saml-idp.git &&     cd saml-idp &&     git checkout tags/v1.2.4 &&     npm install --global" shape="box"];
  "sha256:ca0650863c5364fddb46ac8c99f74a07f4d13d12a31bbf914e9f2fde5ad98ce2" [label="local://context" shape="ellipse"];
  "sha256:842d30b6c08046a4dfa9800f7b78917ccae2677e3ca1d4655c908b4a31917629" [label="copy{src=/config.js, dest=/opt/saml-idp/}" shape="note"];
  "sha256:bf0461a1f4405eca1c55ca1a97b39865984e66bcc325bbcc96bda37073556a6a" [label="copy{src=/logo.png, dest=/opt/saml-idp/public/}" shape="note"];
  "sha256:46a8d0158a12aacc663fc8a99e89ebf2ed64f167381f079ef5a6477dbbf1557a" [label="copy{src=/init, dest=/init}" shape="note"];
  "sha256:cdc623e74420387e782554a9560d504d9ec24df91933c2a473531aa8c5d7a17c" [label="/bin/sh -c chmod +x /init" shape="box"];
  "sha256:0d28c070e2563d9779515f37cbba1ccc314bc902a488d52ce2909b9d66f3c9b5" [label="sha256:0d28c070e2563d9779515f37cbba1ccc314bc902a488d52ce2909b9d66f3c9b5" shape="plaintext"];
  "sha256:eccdc23ae33ff032265281cdcd61b6bcb08837a6e55df3e7dcb5aef332534337" -> "sha256:7f62b3a88bbe0fe8e0c5ab3b4155788a4287366af9e05c21e22e24b6bbca72d5" [label=""];
  "sha256:7f62b3a88bbe0fe8e0c5ab3b4155788a4287366af9e05c21e22e24b6bbca72d5" -> "sha256:9cef4a8dd8ef521db3d5c5bd76080d3570b0f6fc69b1bed04d87dcf10d7b17e8" [label=""];
  "sha256:9cef4a8dd8ef521db3d5c5bd76080d3570b0f6fc69b1bed04d87dcf10d7b17e8" -> "sha256:2478c617bcdb6520ad22e0d524105493b2ff80ae465ad920c1663169784d944a" [label=""];
  "sha256:2478c617bcdb6520ad22e0d524105493b2ff80ae465ad920c1663169784d944a" -> "sha256:842d30b6c08046a4dfa9800f7b78917ccae2677e3ca1d4655c908b4a31917629" [label=""];
  "sha256:ca0650863c5364fddb46ac8c99f74a07f4d13d12a31bbf914e9f2fde5ad98ce2" -> "sha256:842d30b6c08046a4dfa9800f7b78917ccae2677e3ca1d4655c908b4a31917629" [label=""];
  "sha256:842d30b6c08046a4dfa9800f7b78917ccae2677e3ca1d4655c908b4a31917629" -> "sha256:bf0461a1f4405eca1c55ca1a97b39865984e66bcc325bbcc96bda37073556a6a" [label=""];
  "sha256:ca0650863c5364fddb46ac8c99f74a07f4d13d12a31bbf914e9f2fde5ad98ce2" -> "sha256:bf0461a1f4405eca1c55ca1a97b39865984e66bcc325bbcc96bda37073556a6a" [label=""];
  "sha256:bf0461a1f4405eca1c55ca1a97b39865984e66bcc325bbcc96bda37073556a6a" -> "sha256:46a8d0158a12aacc663fc8a99e89ebf2ed64f167381f079ef5a6477dbbf1557a" [label=""];
  "sha256:ca0650863c5364fddb46ac8c99f74a07f4d13d12a31bbf914e9f2fde5ad98ce2" -> "sha256:46a8d0158a12aacc663fc8a99e89ebf2ed64f167381f079ef5a6477dbbf1557a" [label=""];
  "sha256:46a8d0158a12aacc663fc8a99e89ebf2ed64f167381f079ef5a6477dbbf1557a" -> "sha256:cdc623e74420387e782554a9560d504d9ec24df91933c2a473531aa8c5d7a17c" [label=""];
  "sha256:cdc623e74420387e782554a9560d504d9ec24df91933c2a473531aa8c5d7a17c" -> "sha256:0d28c070e2563d9779515f37cbba1ccc314bc902a488d52ce2909b9d66f3c9b5" [label=""];
}

