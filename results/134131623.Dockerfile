[app/sources/134131623.Dockerfile]
digraph {
  "sha256:2c13a60162907574852963997ba23911204e046f863480dcbd1d303615eb4394" [label="docker-image://docker.io/library/centos:6" shape="ellipse"];
  "sha256:fea9484a72e4fa5d8e69a86b64588cf23e381d02d7c212fe1534a103d026145b" [label="/bin/sh -c yum -y update &&   yum install -y   curl   git   mercurial   tar   wget" shape="box"];
  "sha256:1263e675984f142246ed97020490b3e5f623e5a46d997016949fa5afa922e3d1" [label="/bin/sh -c wget http://golang.org/dl/go1.4.1.linux-amd64.tar.gz &&     tar -C /usr/local -xzf go1.4.1.linux-amd64.tar.gz &&     rm go1.4.1.linux-amd64.tar.gz" shape="box"];
  "sha256:ccc20180b093b1cdf8f0142ec8a3e7be85ceb2e215e26d30aad02a5693945234" [label="/bin/sh -c go get -u -v -t github.com/couchbaselabs/cbgb/..." shape="box"];
  "sha256:674fee7092febd5213968257e173a53b2c6048e3b8947aa306e82ffca8a9209c" [label="sha256:674fee7092febd5213968257e173a53b2c6048e3b8947aa306e82ffca8a9209c" shape="plaintext"];
  "sha256:2c13a60162907574852963997ba23911204e046f863480dcbd1d303615eb4394" -> "sha256:fea9484a72e4fa5d8e69a86b64588cf23e381d02d7c212fe1534a103d026145b" [label=""];
  "sha256:fea9484a72e4fa5d8e69a86b64588cf23e381d02d7c212fe1534a103d026145b" -> "sha256:1263e675984f142246ed97020490b3e5f623e5a46d997016949fa5afa922e3d1" [label=""];
  "sha256:1263e675984f142246ed97020490b3e5f623e5a46d997016949fa5afa922e3d1" -> "sha256:ccc20180b093b1cdf8f0142ec8a3e7be85ceb2e215e26d30aad02a5693945234" [label=""];
  "sha256:ccc20180b093b1cdf8f0142ec8a3e7be85ceb2e215e26d30aad02a5693945234" -> "sha256:674fee7092febd5213968257e173a53b2c6048e3b8947aa306e82ffca8a9209c" [label=""];
}

