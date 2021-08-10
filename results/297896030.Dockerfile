[app/sources/297896030.Dockerfile]
digraph {
  "sha256:6395fb6cefb4ef709878380ace6218cd2c84506bc634fd1e1243cceb818155ba" [label="docker-image://docker.io/sroegner/centos-base-ssh:6" shape="ellipse"];
  "sha256:6d48352638ade70e6659d288200aac49ade7b111b149d76c1e2878312abb1343" [label="/bin/sh -c yum -y install createrepo;     mkdir /tmp/nexus &&     cd /tmp/nexus &&     curl -L http://download.sonatype.com/nexus/oss/nexus-latest-bundle.tar.gz | tar xz --no-same-owner" shape="box"];
  "sha256:7e7821895c6e927d2ba5ba224b35e5e8960f69fa3ee75ac490ac78647bc79e38" [label="/bin/sh -c useradd -m -d /srv/nexus nexus" shape="box"];
  "sha256:bb6e6c54f7aa20e7aa3267946de4073410e994918bc58e99251b6979fb59c119" [label="/bin/sh -c mv -v $(ls -1d /tmp/nexus/nex*|head -1) /srv/nexus/;     ln -s $(ls -1d /srv/nexus/nexus-*|head -1) /srv/nexus/nexus-server;     mv -v /tmp/nexus/sonatype-work /srv/nexus &&     chown -R nexus:nexus /srv/nexus/*" shape="box"];
  "sha256:3dc204648e07ee9828fa6928008691c09247b5516d6dab6368f7da246e791cab" [label="local://context" shape="ellipse"];
  "sha256:52dfa93a808fe8f40e022bd8f3a6c1d075688b3bfadec6cc7c2e93a3bbdc22f3" [label="copy{src=/nexus.properties, dest=/srv/nexus/nexus-server/conf/nexus.properties}" shape="note"];
  "sha256:b5c5579b4e9c31b9ce3b5b949162f28277d302e49ad3d719a85c52085163a0da" [label="mkdir{path=/srv/nexus/nexus-server}" shape="note"];
  "sha256:ff6d5d811e7a20b9b498f6acc5e2f90536ec21fc0642f7fd69f3426ea29a8918" [label="sha256:ff6d5d811e7a20b9b498f6acc5e2f90536ec21fc0642f7fd69f3426ea29a8918" shape="plaintext"];
  "sha256:6395fb6cefb4ef709878380ace6218cd2c84506bc634fd1e1243cceb818155ba" -> "sha256:6d48352638ade70e6659d288200aac49ade7b111b149d76c1e2878312abb1343" [label=""];
  "sha256:6d48352638ade70e6659d288200aac49ade7b111b149d76c1e2878312abb1343" -> "sha256:7e7821895c6e927d2ba5ba224b35e5e8960f69fa3ee75ac490ac78647bc79e38" [label=""];
  "sha256:7e7821895c6e927d2ba5ba224b35e5e8960f69fa3ee75ac490ac78647bc79e38" -> "sha256:bb6e6c54f7aa20e7aa3267946de4073410e994918bc58e99251b6979fb59c119" [label=""];
  "sha256:bb6e6c54f7aa20e7aa3267946de4073410e994918bc58e99251b6979fb59c119" -> "sha256:52dfa93a808fe8f40e022bd8f3a6c1d075688b3bfadec6cc7c2e93a3bbdc22f3" [label=""];
  "sha256:3dc204648e07ee9828fa6928008691c09247b5516d6dab6368f7da246e791cab" -> "sha256:52dfa93a808fe8f40e022bd8f3a6c1d075688b3bfadec6cc7c2e93a3bbdc22f3" [label=""];
  "sha256:52dfa93a808fe8f40e022bd8f3a6c1d075688b3bfadec6cc7c2e93a3bbdc22f3" -> "sha256:b5c5579b4e9c31b9ce3b5b949162f28277d302e49ad3d719a85c52085163a0da" [label=""];
  "sha256:b5c5579b4e9c31b9ce3b5b949162f28277d302e49ad3d719a85c52085163a0da" -> "sha256:ff6d5d811e7a20b9b498f6acc5e2f90536ec21fc0642f7fd69f3426ea29a8918" [label=""];
}

