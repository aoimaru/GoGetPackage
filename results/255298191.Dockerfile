[app/sources/255298191.Dockerfile]
digraph {
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" [label="docker-image://docker.io/library/ubuntu:latest" shape="ellipse"];
  "sha256:8143caf77ea14dc51c97a1b371f1f4ad35cdaf7185371a26dd00cf459eb9cc35" [label="/bin/sh -c apt-get -y update &&     apt-get -y dist-upgrade" shape="box"];
  "sha256:d2388a768778f5581d73a37575c0e44542ec8a713f2de536b2395d16800be5c1" [label="/bin/sh -c apt-get install -y curl git tofrodos" shape="box"];
  "sha256:0258a225549dfdada0024154109579da18974a9cee05b27c28d173100d5b1d25" [label="/bin/sh -c mkdir /opt/subscan && mkdir /opt/subscan/wordlists" shape="box"];
  "sha256:6f2a37e1c2adc8233c6dd676ba4eebad2dfc8a0a9d1af586675ed749a66d599c" [label="mkdir{path=/opt/subscan}" shape="note"];
  "sha256:59a2b6652e1e61f84b17b905d44c0015d77841ef68114e8a98182c53fb2fde90" [label="/bin/sh -c curl -O https://storage.googleapis.com/golang/go1.6.linux-amd64.tar.gz && \ttar -xvf go1.6.linux-amd64.tar.gz && \tmv go /usr/local && \texport PATH=$PATH:/usr/local/go/bin && \tmkdir $HOME/work && \texport GOPATH=$HOME/work && \tmkdir -p $GOPATH/src/github.com/subscan/ && \tcd $GOPATH/src/github.com/subscan/ && \tgit clone https://github.com/OJ/gobuster.git && \tcd gobuster && \tgo get && go build && \tgo install" shape="box"];
  "sha256:be51fc5eb6d1251c14279d2a317787fd83de9b25c611a2a131f3c17ad1a4caf4" [label="/bin/sh -c mkdir /opt/secdevops" shape="box"];
  "sha256:08d246127414c51399d666c26fbdc51c674f19cd71b1d23315f5f03aaf717e8e" [label="local://context" shape="ellipse"];
  "sha256:f345aa333eb09688456e9b1535a44a4f1d8ce480dccd173e8c3037d967bae1a6" [label="copy{src=/scripts/*, dest=/opt/secdevops/}" shape="note"];
  "sha256:dd2f042baa85dde3d83594efbd10d82fc70282bf0abbce0f615975f7012ede26" [label="copy{src=/wordlists/*, dest=/opt/subscan/wordlists/}" shape="note"];
  "sha256:3f53a16e6ec09de627663ef42e4d3ec775df3a1033df180ad64c58a45bb05f54" [label="/bin/sh -c chmod +x /opt/secdevops/*" shape="box"];
  "sha256:2ad466979f9f10c580f5f7292fade5d42f89a3b3b577de4c773ee05e46f1e101" [label="sha256:2ad466979f9f10c580f5f7292fade5d42f89a3b3b577de4c773ee05e46f1e101" shape="plaintext"];
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" -> "sha256:8143caf77ea14dc51c97a1b371f1f4ad35cdaf7185371a26dd00cf459eb9cc35" [label=""];
  "sha256:8143caf77ea14dc51c97a1b371f1f4ad35cdaf7185371a26dd00cf459eb9cc35" -> "sha256:d2388a768778f5581d73a37575c0e44542ec8a713f2de536b2395d16800be5c1" [label=""];
  "sha256:d2388a768778f5581d73a37575c0e44542ec8a713f2de536b2395d16800be5c1" -> "sha256:0258a225549dfdada0024154109579da18974a9cee05b27c28d173100d5b1d25" [label=""];
  "sha256:0258a225549dfdada0024154109579da18974a9cee05b27c28d173100d5b1d25" -> "sha256:6f2a37e1c2adc8233c6dd676ba4eebad2dfc8a0a9d1af586675ed749a66d599c" [label=""];
  "sha256:6f2a37e1c2adc8233c6dd676ba4eebad2dfc8a0a9d1af586675ed749a66d599c" -> "sha256:59a2b6652e1e61f84b17b905d44c0015d77841ef68114e8a98182c53fb2fde90" [label=""];
  "sha256:59a2b6652e1e61f84b17b905d44c0015d77841ef68114e8a98182c53fb2fde90" -> "sha256:be51fc5eb6d1251c14279d2a317787fd83de9b25c611a2a131f3c17ad1a4caf4" [label=""];
  "sha256:be51fc5eb6d1251c14279d2a317787fd83de9b25c611a2a131f3c17ad1a4caf4" -> "sha256:f345aa333eb09688456e9b1535a44a4f1d8ce480dccd173e8c3037d967bae1a6" [label=""];
  "sha256:08d246127414c51399d666c26fbdc51c674f19cd71b1d23315f5f03aaf717e8e" -> "sha256:f345aa333eb09688456e9b1535a44a4f1d8ce480dccd173e8c3037d967bae1a6" [label=""];
  "sha256:f345aa333eb09688456e9b1535a44a4f1d8ce480dccd173e8c3037d967bae1a6" -> "sha256:dd2f042baa85dde3d83594efbd10d82fc70282bf0abbce0f615975f7012ede26" [label=""];
  "sha256:08d246127414c51399d666c26fbdc51c674f19cd71b1d23315f5f03aaf717e8e" -> "sha256:dd2f042baa85dde3d83594efbd10d82fc70282bf0abbce0f615975f7012ede26" [label=""];
  "sha256:dd2f042baa85dde3d83594efbd10d82fc70282bf0abbce0f615975f7012ede26" -> "sha256:3f53a16e6ec09de627663ef42e4d3ec775df3a1033df180ad64c58a45bb05f54" [label=""];
  "sha256:3f53a16e6ec09de627663ef42e4d3ec775df3a1033df180ad64c58a45bb05f54" -> "sha256:2ad466979f9f10c580f5f7292fade5d42f89a3b3b577de4c773ee05e46f1e101" [label=""];
}

