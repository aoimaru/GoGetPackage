[app/sources/296300686.Dockerfile]
digraph {
  "sha256:bd34ea592abe9ee78a4165c1fc85186f5cdd49eee93fcbdab5df157b902dea4f" [label="docker-image://docker.io/library/ruby:latest" shape="ellipse"];
  "sha256:7f91c470bba33d2a66ba49bcaa7e74bf3f5343001f96e627c851ccd44749f6e5" [label="/bin/sh -c curl -O https://storage.googleapis.com/golang/go1.8.linux-amd64.tar.gz" shape="box"];
  "sha256:2489b81e5f5d1a72398148032aed4cb3642c116cc1f54d5574319a95be956277" [label="/bin/sh -c tar -xvf go1.8.linux-amd64.tar.gz" shape="box"];
  "sha256:7ffed8d851a71f99ab266f82580dae29bfbfe3d4faf9f9c8ec4bae320cc55afb" [label="/bin/sh -c mv go /usr/local" shape="box"];
  "sha256:cd9e3088473db47ef731a0591752df49c706d09f0d6258ea7fee01c423b67f63" [label="/bin/sh -c go version" shape="box"];
  "sha256:53fc5210b2f1f8351c1652dd58824e1f96bc2cb60adf6d47fc9559c380779906" [label="/bin/sh -c mkdir $GOPATH" shape="box"];
  "sha256:ff5f3fc45f52317a44232c208369a8c7657814a6e305a25fa19b63c0493ac103" [label="/bin/sh -c mkdir -p $CCTR" shape="box"];
  "sha256:96baa7116cc227b85cf98793b490dda566a57bbe37d6839a3d7234075752177d" [label="mkdir{path=/go/src/github.com/codeclimate/test-reporter}" shape="note"];
  "sha256:6692628bc1e9e06f2aa026b2591ef70d62b383f3160b5f43c455cee0cebd96e7" [label="local://context" shape="ellipse"];
  "sha256:7ff4541570b1d7df6582a00b3736f782379c10a5a9251c91ca427355c4920d8e" [label="copy{src=/, dest=/go/src/github.com/codeclimate/test-reporter/}" shape="note"];
  "sha256:be535efd4676563d8b76b9738b6ce4c63cec1080d49b1fd1693136b2353a565d" [label="/bin/sh -c go install -v" shape="box"];
  "sha256:be234114f2e8bf5b9770e9ce1f0a45f052339abf47f0e571a07cd8135bff4299" [label="/bin/sh -c git clone https://github.com/codeclimate/ruby-test-reporter.git" shape="box"];
  "sha256:d09daf2b9864fbc3eac8b717fab2896b813e920fa50ded9d7c8579d5fb271b27" [label="mkdir{path=/go/src/github.com/codeclimate/test-reporter/ruby-test-reporter}" shape="note"];
  "sha256:9d21be955cdb9d4db6c0c4c46cfec7ce912e1802ebf4b6b7f141b04b8eda6ed8" [label="/bin/sh -c bundle" shape="box"];
  "sha256:c0859654e2ec52a94e7d2b7db8b74a3b8083cede8d4974c109e8dd900f362b03" [label="/bin/sh -c echo \"testing\" > ignore.me" shape="box"];
  "sha256:021ba4337abd0dfcc4b85cde98626cdf24244c986e978a33d8d8459b23f53011" [label="/bin/sh -c git config --global user.email \"you@example.com\"" shape="box"];
  "sha256:a32dbc7d03f63ab699474a67290dd3059635143f9b7ff3ed9a832d300f8bfdd9" [label="/bin/sh -c git config --global user.name \"Your Name\"" shape="box"];
  "sha256:57ddb7d7714a2e8dad3038dde0da643dacc63e1510e8e3958190681f7cbe5aa5" [label="/bin/sh -c git add ignore.me" shape="box"];
  "sha256:8403fe3140e62b83cbe82b11db9506b77139c2c4110a035851b2d759606d3561" [label="/bin/sh -c git commit -m \"testing\"" shape="box"];
  "sha256:570d8ae57191ae0779fb1b15084c91cb289f434a5efa67a0b1665f1a76a2346b" [label="/bin/sh -c bundle exec rake; exit 0" shape="box"];
  "sha256:0e1d319ace62b3381b67c32edc3c44edb2ea98c9d048c4ae58b4b37cb4fcd19f" [label="/bin/sh -c test-reporter after-build -s 5 -d" shape="box"];
  "sha256:8c5eddd5811e2295ad1aed5c6e4e120b66a7c62dc25bbbc815adbd5931ff2df3" [label="sha256:8c5eddd5811e2295ad1aed5c6e4e120b66a7c62dc25bbbc815adbd5931ff2df3" shape="plaintext"];
  "sha256:bd34ea592abe9ee78a4165c1fc85186f5cdd49eee93fcbdab5df157b902dea4f" -> "sha256:7f91c470bba33d2a66ba49bcaa7e74bf3f5343001f96e627c851ccd44749f6e5" [label=""];
  "sha256:7f91c470bba33d2a66ba49bcaa7e74bf3f5343001f96e627c851ccd44749f6e5" -> "sha256:2489b81e5f5d1a72398148032aed4cb3642c116cc1f54d5574319a95be956277" [label=""];
  "sha256:2489b81e5f5d1a72398148032aed4cb3642c116cc1f54d5574319a95be956277" -> "sha256:7ffed8d851a71f99ab266f82580dae29bfbfe3d4faf9f9c8ec4bae320cc55afb" [label=""];
  "sha256:7ffed8d851a71f99ab266f82580dae29bfbfe3d4faf9f9c8ec4bae320cc55afb" -> "sha256:cd9e3088473db47ef731a0591752df49c706d09f0d6258ea7fee01c423b67f63" [label=""];
  "sha256:cd9e3088473db47ef731a0591752df49c706d09f0d6258ea7fee01c423b67f63" -> "sha256:53fc5210b2f1f8351c1652dd58824e1f96bc2cb60adf6d47fc9559c380779906" [label=""];
  "sha256:53fc5210b2f1f8351c1652dd58824e1f96bc2cb60adf6d47fc9559c380779906" -> "sha256:ff5f3fc45f52317a44232c208369a8c7657814a6e305a25fa19b63c0493ac103" [label=""];
  "sha256:ff5f3fc45f52317a44232c208369a8c7657814a6e305a25fa19b63c0493ac103" -> "sha256:96baa7116cc227b85cf98793b490dda566a57bbe37d6839a3d7234075752177d" [label=""];
  "sha256:96baa7116cc227b85cf98793b490dda566a57bbe37d6839a3d7234075752177d" -> "sha256:7ff4541570b1d7df6582a00b3736f782379c10a5a9251c91ca427355c4920d8e" [label=""];
  "sha256:6692628bc1e9e06f2aa026b2591ef70d62b383f3160b5f43c455cee0cebd96e7" -> "sha256:7ff4541570b1d7df6582a00b3736f782379c10a5a9251c91ca427355c4920d8e" [label=""];
  "sha256:7ff4541570b1d7df6582a00b3736f782379c10a5a9251c91ca427355c4920d8e" -> "sha256:be535efd4676563d8b76b9738b6ce4c63cec1080d49b1fd1693136b2353a565d" [label=""];
  "sha256:be535efd4676563d8b76b9738b6ce4c63cec1080d49b1fd1693136b2353a565d" -> "sha256:be234114f2e8bf5b9770e9ce1f0a45f052339abf47f0e571a07cd8135bff4299" [label=""];
  "sha256:be234114f2e8bf5b9770e9ce1f0a45f052339abf47f0e571a07cd8135bff4299" -> "sha256:d09daf2b9864fbc3eac8b717fab2896b813e920fa50ded9d7c8579d5fb271b27" [label=""];
  "sha256:d09daf2b9864fbc3eac8b717fab2896b813e920fa50ded9d7c8579d5fb271b27" -> "sha256:9d21be955cdb9d4db6c0c4c46cfec7ce912e1802ebf4b6b7f141b04b8eda6ed8" [label=""];
  "sha256:9d21be955cdb9d4db6c0c4c46cfec7ce912e1802ebf4b6b7f141b04b8eda6ed8" -> "sha256:c0859654e2ec52a94e7d2b7db8b74a3b8083cede8d4974c109e8dd900f362b03" [label=""];
  "sha256:c0859654e2ec52a94e7d2b7db8b74a3b8083cede8d4974c109e8dd900f362b03" -> "sha256:021ba4337abd0dfcc4b85cde98626cdf24244c986e978a33d8d8459b23f53011" [label=""];
  "sha256:021ba4337abd0dfcc4b85cde98626cdf24244c986e978a33d8d8459b23f53011" -> "sha256:a32dbc7d03f63ab699474a67290dd3059635143f9b7ff3ed9a832d300f8bfdd9" [label=""];
  "sha256:a32dbc7d03f63ab699474a67290dd3059635143f9b7ff3ed9a832d300f8bfdd9" -> "sha256:57ddb7d7714a2e8dad3038dde0da643dacc63e1510e8e3958190681f7cbe5aa5" [label=""];
  "sha256:57ddb7d7714a2e8dad3038dde0da643dacc63e1510e8e3958190681f7cbe5aa5" -> "sha256:8403fe3140e62b83cbe82b11db9506b77139c2c4110a035851b2d759606d3561" [label=""];
  "sha256:8403fe3140e62b83cbe82b11db9506b77139c2c4110a035851b2d759606d3561" -> "sha256:570d8ae57191ae0779fb1b15084c91cb289f434a5efa67a0b1665f1a76a2346b" [label=""];
  "sha256:570d8ae57191ae0779fb1b15084c91cb289f434a5efa67a0b1665f1a76a2346b" -> "sha256:0e1d319ace62b3381b67c32edc3c44edb2ea98c9d048c4ae58b4b37cb4fcd19f" [label=""];
  "sha256:0e1d319ace62b3381b67c32edc3c44edb2ea98c9d048c4ae58b4b37cb4fcd19f" -> "sha256:8c5eddd5811e2295ad1aed5c6e4e120b66a7c62dc25bbbc815adbd5931ff2df3" [label=""];
}

