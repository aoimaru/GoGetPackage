[app/sources/187589901.Dockerfile]
digraph {
  "sha256:bbc36c747f67eb2548c35cca070eb62a17ca9311fd893a63032fe3a66ca3c992" [label="docker-image://docker.io/library/busybox:glibc" shape="ellipse"];
  "sha256:4b406921317cefd91f166f7eca6b32aa2cae9f967b0961f894712cede69d1fa8" [label="/bin/sh -c mkdir -p /root/svc9" shape="box"];
  "sha256:97445061579cd133f40b22be23fbba6dfc697940f260f234628bcf55ce45d93e" [label="local://context" shape="ellipse"];
  "sha256:321b025b615296d6e15f1bf0881beb93ef35b951a74153ac21307eeccda4711b" [label="copy{src=/svc9, dest=/root/svc9/svc9}" shape="note"];
  "sha256:878eefbcdb537980b715ffe630913a004422a1da2180ec24ea41af86980b8fec" [label="copy{src=/server.key, dest=/root/svc9/server.key}" shape="note"];
  "sha256:ee2c3903b1d04c323ce4840307a12ff8ee4cac6ca8f791c8cec93956e9486147" [label="copy{src=/server.crt, dest=/root/svc9/server.crt}" shape="note"];
  "sha256:84f8e4df77b3be3d2404b567950aab0ac1e94ddf0fd8bcbca560479d174e3e7b" [label="copy{src=/rootCA.pem, dest=/root/svc9/rootCA.pem}" shape="note"];
  "sha256:9dabb169823d80f56c3fe4decbe071dd668f55244c418be8e0900158cfd02567" [label="/bin/sh -c chmod +x /root/svc9/svc9" shape="box"];
  "sha256:61bdd334ba07d6042138c87e3c30659aad6ccdee4aaa4fd39f180a8ca503aa55" [label="mkdir{path=/root/svc9}" shape="note"];
  "sha256:3c063c50579b95bab3e0030d77a128bc04112fd30113a849e853084e604a1583" [label="sha256:3c063c50579b95bab3e0030d77a128bc04112fd30113a849e853084e604a1583" shape="plaintext"];
  "sha256:bbc36c747f67eb2548c35cca070eb62a17ca9311fd893a63032fe3a66ca3c992" -> "sha256:4b406921317cefd91f166f7eca6b32aa2cae9f967b0961f894712cede69d1fa8" [label=""];
  "sha256:4b406921317cefd91f166f7eca6b32aa2cae9f967b0961f894712cede69d1fa8" -> "sha256:321b025b615296d6e15f1bf0881beb93ef35b951a74153ac21307eeccda4711b" [label=""];
  "sha256:97445061579cd133f40b22be23fbba6dfc697940f260f234628bcf55ce45d93e" -> "sha256:321b025b615296d6e15f1bf0881beb93ef35b951a74153ac21307eeccda4711b" [label=""];
  "sha256:321b025b615296d6e15f1bf0881beb93ef35b951a74153ac21307eeccda4711b" -> "sha256:878eefbcdb537980b715ffe630913a004422a1da2180ec24ea41af86980b8fec" [label=""];
  "sha256:97445061579cd133f40b22be23fbba6dfc697940f260f234628bcf55ce45d93e" -> "sha256:878eefbcdb537980b715ffe630913a004422a1da2180ec24ea41af86980b8fec" [label=""];
  "sha256:878eefbcdb537980b715ffe630913a004422a1da2180ec24ea41af86980b8fec" -> "sha256:ee2c3903b1d04c323ce4840307a12ff8ee4cac6ca8f791c8cec93956e9486147" [label=""];
  "sha256:97445061579cd133f40b22be23fbba6dfc697940f260f234628bcf55ce45d93e" -> "sha256:ee2c3903b1d04c323ce4840307a12ff8ee4cac6ca8f791c8cec93956e9486147" [label=""];
  "sha256:ee2c3903b1d04c323ce4840307a12ff8ee4cac6ca8f791c8cec93956e9486147" -> "sha256:84f8e4df77b3be3d2404b567950aab0ac1e94ddf0fd8bcbca560479d174e3e7b" [label=""];
  "sha256:97445061579cd133f40b22be23fbba6dfc697940f260f234628bcf55ce45d93e" -> "sha256:84f8e4df77b3be3d2404b567950aab0ac1e94ddf0fd8bcbca560479d174e3e7b" [label=""];
  "sha256:84f8e4df77b3be3d2404b567950aab0ac1e94ddf0fd8bcbca560479d174e3e7b" -> "sha256:9dabb169823d80f56c3fe4decbe071dd668f55244c418be8e0900158cfd02567" [label=""];
  "sha256:9dabb169823d80f56c3fe4decbe071dd668f55244c418be8e0900158cfd02567" -> "sha256:61bdd334ba07d6042138c87e3c30659aad6ccdee4aaa4fd39f180a8ca503aa55" [label=""];
  "sha256:61bdd334ba07d6042138c87e3c30659aad6ccdee4aaa4fd39f180a8ca503aa55" -> "sha256:3c063c50579b95bab3e0030d77a128bc04112fd30113a849e853084e604a1583" [label=""];
}

