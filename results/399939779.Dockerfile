[app/sources/399939779.Dockerfile]
digraph {
  "sha256:733e9c2537015577fa342f415d9e8d598417f4e057c5e9d334d714de2b6473f4" [label="docker-image://docker.io/library/ubuntu:16.10" shape="ellipse"];
  "sha256:50159011ca067a3036b5d53d31cd1f9b632e98d34c9b70fd0d5c531469f3a1a8" [label="/bin/sh -c apt-get update -y && apt-get full-upgrade -y" shape="box"];
  "sha256:c3823d9c7bff2f6d0bb4701f6eb2123dfbbc39341f48afd126ccc0ddf56fe8f9" [label="/bin/sh -c apt-get install -y bash-completion zsh curl cowsay git vim bsdmainutils" shape="box"];
  "sha256:0f60de8a2d0331fd71964fd7ad6a3ae14103851f7ec237f066e6a960bf6d2d1d" [label="local://context" shape="ellipse"];
  "sha256:cf6625d114214c91cf2cfb300676afe960f4e55aacc7643a4d87377c307a4707" [label="copy{src=/petstore-cli, dest=/usr/bin/petstore-cli}" shape="note"];
  "sha256:fa00db55db2bdccceaaf40760fced9773562954ac3fd1b057b736f317f3882fa" [label="copy{src=/_petstore-cli, dest=/usr/local/share/zsh/site-functions/_petstore-cli}" shape="note"];
  "sha256:cbb2f9f8d9b780754f70ec6215e7df709e972e1fa7dcdb62b18a6c1b3f262d85" [label="copy{src=/petstore-cli.bash-completion, dest=/etc/bash-completion.d/petstore-cli}" shape="note"];
  "sha256:1dd318596c0955a4c4549cf239191eed6e6832a96f1e3cc09156bf60e5fce9f8" [label="/bin/sh -c chmod 755 /usr/bin/petstore-cli" shape="box"];
  "sha256:39673ff7112b2a1e1c3fa8953a4070883ee8208e281028822e7df45e767a5095" [label="/bin/sh -c sh -c \"$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)\" || true" shape="box"];
  "sha256:c7033282c1b452b582e1d0ca5998ef7f73092883f73e50e5e6d54dc7a8c2b326" [label="/bin/sh -c echo '\\n. /etc/bash_completion\\nsource /etc/bash-completion.d/petstore-cli\\n' >> ~/.bashrc" shape="box"];
  "sha256:f175e5bf59cdc3fb7cb1256b3608df8878ce7983db18e41af6a5e586eaf431f6" [label="/bin/sh -c echo 'export PS1=\"[Swagger Petstore] \\$ \"' >> ~/.bashrc" shape="box"];
  "sha256:272436ecd2618d71358014d59ca90c65a854656bf82d4b6ce9159aef11515cd7" [label="/bin/sh -c echo 'export PROMPT=\"[Swagger Petstore] \\$ \"' >> ~/.zshrc" shape="box"];
  "sha256:6404c41e1f9536b348b8c392d4373830a28a21b5ac749d8f33c1d7e368a97e5a" [label="/bin/sh -c echo 'cat << EOF\\n\\nThis Docker provides preconfigured environment for running the command\\nline REST client for $(tput setaf 6)Swagger Petstore$(tput sgr0).\\n\\nFor convenience, you can export the following environment variables:\\n\\n$(tput setaf 3)PETSTORE_HOST$(tput sgr0) - server URL, e.g. https://example.com:8080\\n$(tput setaf 3)PETSTORE_API_KEY$(tput sgr0) - access token, e.g. \"ASDASHJDG63456asdASSD\"\\n$(tput setaf 3)PETSTORE_API_KEY$(tput sgr0) - access token, e.g. \"ASDASHJDG63456asdASSD\"\\n$(tput setaf 3)PETSTORE_BASIC_AUTH$(tput sgr0) - basic authentication credentials, e.g.: \"username:password\"\\n\\n$(tput setaf 7)Basic usage:$(tput sgr0)\\n\\n$(tput setaf 3)Print the list of operations available on the service$(tput sgr0)\\n$ petstore-cli -h\\n\\n$(tput setaf 3)Print the service description$(tput sgr0)\\n$ petstore-cli --about\\n\\n$(tput setaf 3)Print detailed information about specific operation$(tput sgr0)\\n$ petstore-cli <operationId> -h\\n\\nBy default you are logged into Zsh with full autocompletion for your REST API,\\nbut you can switch to Bash, where basic autocompletion is also supported.\\n\\nEOF\\n' | tee -a ~/.bashrc ~/.zshrc" shape="box"];
  "sha256:045b6d6b750af72aace89d99e0a94e2fa38c345c5397f093c0c889ff5f5da40e" [label="sha256:045b6d6b750af72aace89d99e0a94e2fa38c345c5397f093c0c889ff5f5da40e" shape="plaintext"];
  "sha256:733e9c2537015577fa342f415d9e8d598417f4e057c5e9d334d714de2b6473f4" -> "sha256:50159011ca067a3036b5d53d31cd1f9b632e98d34c9b70fd0d5c531469f3a1a8" [label=""];
  "sha256:50159011ca067a3036b5d53d31cd1f9b632e98d34c9b70fd0d5c531469f3a1a8" -> "sha256:c3823d9c7bff2f6d0bb4701f6eb2123dfbbc39341f48afd126ccc0ddf56fe8f9" [label=""];
  "sha256:c3823d9c7bff2f6d0bb4701f6eb2123dfbbc39341f48afd126ccc0ddf56fe8f9" -> "sha256:cf6625d114214c91cf2cfb300676afe960f4e55aacc7643a4d87377c307a4707" [label=""];
  "sha256:0f60de8a2d0331fd71964fd7ad6a3ae14103851f7ec237f066e6a960bf6d2d1d" -> "sha256:cf6625d114214c91cf2cfb300676afe960f4e55aacc7643a4d87377c307a4707" [label=""];
  "sha256:cf6625d114214c91cf2cfb300676afe960f4e55aacc7643a4d87377c307a4707" -> "sha256:fa00db55db2bdccceaaf40760fced9773562954ac3fd1b057b736f317f3882fa" [label=""];
  "sha256:0f60de8a2d0331fd71964fd7ad6a3ae14103851f7ec237f066e6a960bf6d2d1d" -> "sha256:fa00db55db2bdccceaaf40760fced9773562954ac3fd1b057b736f317f3882fa" [label=""];
  "sha256:fa00db55db2bdccceaaf40760fced9773562954ac3fd1b057b736f317f3882fa" -> "sha256:cbb2f9f8d9b780754f70ec6215e7df709e972e1fa7dcdb62b18a6c1b3f262d85" [label=""];
  "sha256:0f60de8a2d0331fd71964fd7ad6a3ae14103851f7ec237f066e6a960bf6d2d1d" -> "sha256:cbb2f9f8d9b780754f70ec6215e7df709e972e1fa7dcdb62b18a6c1b3f262d85" [label=""];
  "sha256:cbb2f9f8d9b780754f70ec6215e7df709e972e1fa7dcdb62b18a6c1b3f262d85" -> "sha256:1dd318596c0955a4c4549cf239191eed6e6832a96f1e3cc09156bf60e5fce9f8" [label=""];
  "sha256:1dd318596c0955a4c4549cf239191eed6e6832a96f1e3cc09156bf60e5fce9f8" -> "sha256:39673ff7112b2a1e1c3fa8953a4070883ee8208e281028822e7df45e767a5095" [label=""];
  "sha256:39673ff7112b2a1e1c3fa8953a4070883ee8208e281028822e7df45e767a5095" -> "sha256:c7033282c1b452b582e1d0ca5998ef7f73092883f73e50e5e6d54dc7a8c2b326" [label=""];
  "sha256:c7033282c1b452b582e1d0ca5998ef7f73092883f73e50e5e6d54dc7a8c2b326" -> "sha256:f175e5bf59cdc3fb7cb1256b3608df8878ce7983db18e41af6a5e586eaf431f6" [label=""];
  "sha256:f175e5bf59cdc3fb7cb1256b3608df8878ce7983db18e41af6a5e586eaf431f6" -> "sha256:272436ecd2618d71358014d59ca90c65a854656bf82d4b6ce9159aef11515cd7" [label=""];
  "sha256:272436ecd2618d71358014d59ca90c65a854656bf82d4b6ce9159aef11515cd7" -> "sha256:6404c41e1f9536b348b8c392d4373830a28a21b5ac749d8f33c1d7e368a97e5a" [label=""];
  "sha256:6404c41e1f9536b348b8c392d4373830a28a21b5ac749d8f33c1d7e368a97e5a" -> "sha256:045b6d6b750af72aace89d99e0a94e2fa38c345c5397f093c0c889ff5f5da40e" [label=""];
}

