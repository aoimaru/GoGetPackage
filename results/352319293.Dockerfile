[app/sources/352319293.Dockerfile]
digraph {
  "sha256:14dd403f25ae9e519bd44f27dc17af7ce80f5a4f9f48ca88108364e67ec5d360" [label="docker-image://docker.io/library/ubuntu:xenial" shape="ellipse"];
  "sha256:7f1d83244dc8689a545335e3aa79431418fb64117a5065fb25d43cc7e1576f7a" [label="/bin/sh -c apt-get --assume-yes update" shape="box"];
  "sha256:df1f64687ab82e29950161314a0c85fa91c139d10d94bf3acfccb46ca201028f" [label="/bin/sh -c apt-get --assume-yes upgrade" shape="box"];
  "sha256:589f5934a6860c043925f5f66afb6a23d89ae9bd268a48495eace90345053447" [label="/bin/sh -c apt-get --assume-yes install build-essential reprepro rsync wget zip git bzr mercurial" shape="box"];
  "sha256:4459e9e73bc9b53db3492987c6d2c2961f77c90a66f8fe6def058b1e72950aa4" [label="/bin/sh -c wget https://dl.google.com/go/go1.12.5.linux-amd64.tar.gz" shape="box"];
  "sha256:f8ae93a2d7cc1586cf3f51f49db70697f8d13f4f03c2a421c806fd2113917fb5" [label="/bin/sh -c echo \"aea86e3c73495f205929cfebba0d63f1382c8ac59be081b6351681415f4063cf go1.12.5.linux-amd64.tar.gz\" | sha256sum -c -" shape="box"];
  "sha256:d07fa1f0c5ddf76ad25bab13dd6159cbb5be5f2211aa3f6700dbaf8d00f6582f" [label="/bin/sh -c tar -C /usr/local -xf go1.12.5.linux-amd64.tar.gz" shape="box"];
  "sha256:c1848b047138d8bd044cd3592cf5b0e684f34d25c0f46434a9a770617c667c75" [label="/bin/sh -c rm -f go1.12.5.linux-amd64.tar.gz" shape="box"];
  "sha256:245733b7c45fd45b349d745aa83fbf4d39cdfdf533bcf6993da64c1d6515deb3" [label="/bin/sh -c go get github.com/pacur/pacur" shape="box"];
  "sha256:bfb9da0707a555844cd11f763e991581c72bf2f0cfb346c8cd6bee752385beff" [label="sha256:bfb9da0707a555844cd11f763e991581c72bf2f0cfb346c8cd6bee752385beff" shape="plaintext"];
  "sha256:14dd403f25ae9e519bd44f27dc17af7ce80f5a4f9f48ca88108364e67ec5d360" -> "sha256:7f1d83244dc8689a545335e3aa79431418fb64117a5065fb25d43cc7e1576f7a" [label=""];
  "sha256:7f1d83244dc8689a545335e3aa79431418fb64117a5065fb25d43cc7e1576f7a" -> "sha256:df1f64687ab82e29950161314a0c85fa91c139d10d94bf3acfccb46ca201028f" [label=""];
  "sha256:df1f64687ab82e29950161314a0c85fa91c139d10d94bf3acfccb46ca201028f" -> "sha256:589f5934a6860c043925f5f66afb6a23d89ae9bd268a48495eace90345053447" [label=""];
  "sha256:589f5934a6860c043925f5f66afb6a23d89ae9bd268a48495eace90345053447" -> "sha256:4459e9e73bc9b53db3492987c6d2c2961f77c90a66f8fe6def058b1e72950aa4" [label=""];
  "sha256:4459e9e73bc9b53db3492987c6d2c2961f77c90a66f8fe6def058b1e72950aa4" -> "sha256:f8ae93a2d7cc1586cf3f51f49db70697f8d13f4f03c2a421c806fd2113917fb5" [label=""];
  "sha256:f8ae93a2d7cc1586cf3f51f49db70697f8d13f4f03c2a421c806fd2113917fb5" -> "sha256:d07fa1f0c5ddf76ad25bab13dd6159cbb5be5f2211aa3f6700dbaf8d00f6582f" [label=""];
  "sha256:d07fa1f0c5ddf76ad25bab13dd6159cbb5be5f2211aa3f6700dbaf8d00f6582f" -> "sha256:c1848b047138d8bd044cd3592cf5b0e684f34d25c0f46434a9a770617c667c75" [label=""];
  "sha256:c1848b047138d8bd044cd3592cf5b0e684f34d25c0f46434a9a770617c667c75" -> "sha256:245733b7c45fd45b349d745aa83fbf4d39cdfdf533bcf6993da64c1d6515deb3" [label=""];
  "sha256:245733b7c45fd45b349d745aa83fbf4d39cdfdf533bcf6993da64c1d6515deb3" -> "sha256:bfb9da0707a555844cd11f763e991581c72bf2f0cfb346c8cd6bee752385beff" [label=""];
}

