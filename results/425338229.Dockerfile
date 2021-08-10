[app/sources/425338229.Dockerfile]
digraph {
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:7368373628c0261c65deebebb50df1ead0da8b9e3dbacaadd632717872e0614f" [label="local://context" shape="ellipse"];
  "sha256:fec230aef3babb919460076c4f002a845986f8726073acb5fd2f35da4be265a1" [label="copy{src=/, dest=/sortmerna}" shape="note"];
  "sha256:b7948f93df6d1bad4f01acdebd0a7149f6c9204d9923c42732a3ec2ad24a8742" [label="/bin/sh -c apt-get update && apt-get install -y make g++ zlib1g-dev python2.7 python-pip python-numpy python-scipy python-tk" shape="box"];
  "sha256:2f7cdc2cd6601c669c688a196a2da794375ebc08db019dc431daeb2ddab9d506" [label="/bin/sh -c cd /sortmerna && ./configure && make && make install" shape="box"];
  "sha256:44f6155f8810301669ee564979385ae016c12eba8b0c837cd823126ed9edd21a" [label="/bin/sh -c pip install --upgrade pip && pip install scikit-bio==0.2.3" shape="box"];
  "sha256:7f94c8cbabac441713595d663e5a0d91e0c7a426e69a47c13a154fd150a14103" [label="sha256:7f94c8cbabac441713595d663e5a0d91e0c7a426e69a47c13a154fd150a14103" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:fec230aef3babb919460076c4f002a845986f8726073acb5fd2f35da4be265a1" [label=""];
  "sha256:7368373628c0261c65deebebb50df1ead0da8b9e3dbacaadd632717872e0614f" -> "sha256:fec230aef3babb919460076c4f002a845986f8726073acb5fd2f35da4be265a1" [label=""];
  "sha256:fec230aef3babb919460076c4f002a845986f8726073acb5fd2f35da4be265a1" -> "sha256:b7948f93df6d1bad4f01acdebd0a7149f6c9204d9923c42732a3ec2ad24a8742" [label=""];
  "sha256:b7948f93df6d1bad4f01acdebd0a7149f6c9204d9923c42732a3ec2ad24a8742" -> "sha256:2f7cdc2cd6601c669c688a196a2da794375ebc08db019dc431daeb2ddab9d506" [label=""];
  "sha256:2f7cdc2cd6601c669c688a196a2da794375ebc08db019dc431daeb2ddab9d506" -> "sha256:44f6155f8810301669ee564979385ae016c12eba8b0c837cd823126ed9edd21a" [label=""];
  "sha256:44f6155f8810301669ee564979385ae016c12eba8b0c837cd823126ed9edd21a" -> "sha256:7f94c8cbabac441713595d663e5a0d91e0c7a426e69a47c13a154fd150a14103" [label=""];
}

