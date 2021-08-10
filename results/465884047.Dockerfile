[app/sources/465884047.Dockerfile]
digraph {
  "sha256:620fd90159edad1365223b3ae5a20438eb86c9376f8f6071f0ab4d2e2c7cacc3" [label="docker-image://docker.io/opensuse/leap:15.0" shape="ellipse"];
  "sha256:0d7c7d5157adf2c677dd2e6691e1191cb09eeecde1acd6cb32118456a5b0cb6c" [label="/bin/sh -c zypper ar https://download.opensuse.org/repositories/devel:/languages:/go/openSUSE_Leap_15.0/devel:languages:go.repo" shape="box"];
  "sha256:a86d39104d2e304c6506f5c5e0e95cc3b4ac51b01c876130b7cee1d2f0fad4b6" [label="/bin/sh -c zypper --non-interactive --no-gpg-checks  ref" shape="box"];
  "sha256:0c075ea44100811bb994c76554eec522d7a367e0d0bb7f496fb047d7f03be133" [label="/bin/sh -c zypper in -y make git go" shape="box"];
  "sha256:c6243a6ed916d15e2d5094eaf9c739d0b7c4f0868c3fca011d5d2b092c3f3232" [label="/bin/sh -c go version" shape="box"];
  "sha256:db8d614f39dcb7f9e8e000be55374c2119aadfb9ce8c1b53cb9de9274fd2d7f4" [label="local://context" shape="ellipse"];
  "sha256:b6e97946c07eee608c70c72040c8e11457c0ebe43d3def4682e44cbb940cce34" [label="copy{src=/, dest=/go/src/github.com/kubic-project/dex-operator}" shape="note"];
  "sha256:b26e76034aeaa4c625d4515b758de1717ac8a1e68924e87c2d98891c956952a7" [label="mkdir{path=/go/src/github.com/kubic-project/dex-operator}" shape="note"];
  "sha256:0bdfa8b68022849bfa976c1d941d3c14d83bdb999d6e884fa85c18fe67c048e6" [label="/bin/sh -c make -C /go/src/github.com/kubic-project/dex-operator clean all" shape="box"];
  "sha256:1f020ee6304ec1a4ccbf232645527a53c8d4f070b243b825f92bedaeb46c4f69" [label="copy{src=/go/src/github.com/kubic-project/dex-operator/cmd/dex-operator/dex-operator, dest=/usr/local/bin/dex-operator}" shape="note"];
  "sha256:36e9fa91a264431f7c7c3dd7a0f6bef1dd26b548aaa43136dbf9dc7c0e2aabc1" [label="/bin/sh -c chmod 755 /usr/local/bin/dex-operator" shape="box"];
  "sha256:c11e321188bd8dd9e71b95605a6e8e63e7de0b88430dc174c4d4271a88661b37" [label="sha256:c11e321188bd8dd9e71b95605a6e8e63e7de0b88430dc174c4d4271a88661b37" shape="plaintext"];
  "sha256:620fd90159edad1365223b3ae5a20438eb86c9376f8f6071f0ab4d2e2c7cacc3" -> "sha256:0d7c7d5157adf2c677dd2e6691e1191cb09eeecde1acd6cb32118456a5b0cb6c" [label=""];
  "sha256:0d7c7d5157adf2c677dd2e6691e1191cb09eeecde1acd6cb32118456a5b0cb6c" -> "sha256:a86d39104d2e304c6506f5c5e0e95cc3b4ac51b01c876130b7cee1d2f0fad4b6" [label=""];
  "sha256:a86d39104d2e304c6506f5c5e0e95cc3b4ac51b01c876130b7cee1d2f0fad4b6" -> "sha256:0c075ea44100811bb994c76554eec522d7a367e0d0bb7f496fb047d7f03be133" [label=""];
  "sha256:0c075ea44100811bb994c76554eec522d7a367e0d0bb7f496fb047d7f03be133" -> "sha256:c6243a6ed916d15e2d5094eaf9c739d0b7c4f0868c3fca011d5d2b092c3f3232" [label=""];
  "sha256:c6243a6ed916d15e2d5094eaf9c739d0b7c4f0868c3fca011d5d2b092c3f3232" -> "sha256:b6e97946c07eee608c70c72040c8e11457c0ebe43d3def4682e44cbb940cce34" [label=""];
  "sha256:db8d614f39dcb7f9e8e000be55374c2119aadfb9ce8c1b53cb9de9274fd2d7f4" -> "sha256:b6e97946c07eee608c70c72040c8e11457c0ebe43d3def4682e44cbb940cce34" [label=""];
  "sha256:b6e97946c07eee608c70c72040c8e11457c0ebe43d3def4682e44cbb940cce34" -> "sha256:b26e76034aeaa4c625d4515b758de1717ac8a1e68924e87c2d98891c956952a7" [label=""];
  "sha256:b26e76034aeaa4c625d4515b758de1717ac8a1e68924e87c2d98891c956952a7" -> "sha256:0bdfa8b68022849bfa976c1d941d3c14d83bdb999d6e884fa85c18fe67c048e6" [label=""];
  "sha256:620fd90159edad1365223b3ae5a20438eb86c9376f8f6071f0ab4d2e2c7cacc3" -> "sha256:1f020ee6304ec1a4ccbf232645527a53c8d4f070b243b825f92bedaeb46c4f69" [label=""];
  "sha256:0bdfa8b68022849bfa976c1d941d3c14d83bdb999d6e884fa85c18fe67c048e6" -> "sha256:1f020ee6304ec1a4ccbf232645527a53c8d4f070b243b825f92bedaeb46c4f69" [label=""];
  "sha256:1f020ee6304ec1a4ccbf232645527a53c8d4f070b243b825f92bedaeb46c4f69" -> "sha256:36e9fa91a264431f7c7c3dd7a0f6bef1dd26b548aaa43136dbf9dc7c0e2aabc1" [label=""];
  "sha256:36e9fa91a264431f7c7c3dd7a0f6bef1dd26b548aaa43136dbf9dc7c0e2aabc1" -> "sha256:c11e321188bd8dd9e71b95605a6e8e63e7de0b88430dc174c4d4271a88661b37" [label=""];
}

