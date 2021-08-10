[app/sources/260939627.Dockerfile]
digraph {
  "sha256:dfc19ada78e1e53fdc7371e3d515d9980d111a55dde54abf942249973637dc4b" [label="local://context" shape="ellipse"];
  "sha256:a4f1da6abea09a6b1b9a4513531f41fe3ab5660393eb1d0a68570d04fb0f89a9" [label="docker-image://docker.io/toopher/centos-i386:centos6" shape="ellipse"];
  "sha256:6d9179a0141507452baf0d6b52d08611c858d16ebdec327a6c77bdb16c3bc9c5" [label="/bin/sh -c yum update -y" shape="box"];
  "sha256:69e9a7c453d95257853575bc8157eca17f0737ffbda54e08909096e6f0568d94" [label="/bin/sh -c yum install -y epel-release" shape="box"];
  "sha256:25e12cf2ae0407124199d2eda7422e5b609e08d35f1a27dc04310d3d40a181f6" [label="/bin/sh -c yum install -y make development-tools rpmdevtools clang gcc-c++ tar" shape="box"];
  "sha256:ed5b61c682737a4528779009ba46dfd9c3ca275b7e38b6596bb6a16c1fde5386" [label="/bin/sh -c yum install -y nodejs npm" shape="box"];
  "sha256:a908577484b9a3e73a1c53623a92ee12ecade12230fddeb3fc8bd18c24cffd6d" [label="/bin/sh -c rm -f /usr/include/http_parser.h" shape="box"];
  "sha256:3adf05401cd234d299ac373b36ffd8020c6095857e388ecfe48659225c6a2684" [label="copy{src=/zt1-src.tar.gz, dest=/}" shape="note"];
  "sha256:9ca86698ec555f2786d96b0d2926124e7fdb52be02a5a5fa91699454fe72b225" [label="sha256:9ca86698ec555f2786d96b0d2926124e7fdb52be02a5a5fa91699454fe72b225" shape="plaintext"];
  "sha256:a4f1da6abea09a6b1b9a4513531f41fe3ab5660393eb1d0a68570d04fb0f89a9" -> "sha256:6d9179a0141507452baf0d6b52d08611c858d16ebdec327a6c77bdb16c3bc9c5" [label=""];
  "sha256:6d9179a0141507452baf0d6b52d08611c858d16ebdec327a6c77bdb16c3bc9c5" -> "sha256:69e9a7c453d95257853575bc8157eca17f0737ffbda54e08909096e6f0568d94" [label=""];
  "sha256:69e9a7c453d95257853575bc8157eca17f0737ffbda54e08909096e6f0568d94" -> "sha256:25e12cf2ae0407124199d2eda7422e5b609e08d35f1a27dc04310d3d40a181f6" [label=""];
  "sha256:25e12cf2ae0407124199d2eda7422e5b609e08d35f1a27dc04310d3d40a181f6" -> "sha256:ed5b61c682737a4528779009ba46dfd9c3ca275b7e38b6596bb6a16c1fde5386" [label=""];
  "sha256:ed5b61c682737a4528779009ba46dfd9c3ca275b7e38b6596bb6a16c1fde5386" -> "sha256:a908577484b9a3e73a1c53623a92ee12ecade12230fddeb3fc8bd18c24cffd6d" [label=""];
  "sha256:a908577484b9a3e73a1c53623a92ee12ecade12230fddeb3fc8bd18c24cffd6d" -> "sha256:3adf05401cd234d299ac373b36ffd8020c6095857e388ecfe48659225c6a2684" [label=""];
  "sha256:dfc19ada78e1e53fdc7371e3d515d9980d111a55dde54abf942249973637dc4b" -> "sha256:3adf05401cd234d299ac373b36ffd8020c6095857e388ecfe48659225c6a2684" [label=""];
  "sha256:3adf05401cd234d299ac373b36ffd8020c6095857e388ecfe48659225c6a2684" -> "sha256:9ca86698ec555f2786d96b0d2926124e7fdb52be02a5a5fa91699454fe72b225" [label=""];
}

