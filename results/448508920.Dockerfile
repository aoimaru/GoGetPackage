[app/sources/448508920.Dockerfile]
digraph {
  "sha256:b7be036732673a618c4eba063bc5e77a716812adaad29b4e0234c4a61378429e" [label="docker-image://docker.io/yelpmoe/min_reqs:latest" shape="ellipse"];
  "sha256:0838af5b4138c7e31a7a53eab518794fd6dd8dc429742ad1476aa10ce7868f27" [label="https://bootstrap.pypa.io/get-pip.py" shape="ellipse"];
  "sha256:312c675962e6ff8c92a95866938bb1fd8e4cd9eaf45d6a3efcad3d9454ca4298" [label="copy{src=/get-pip.py, dest=/tmp/get-pip.py}" shape="note"];
  "sha256:67cb1ea3187e03759bf93ee4b6e30115ead563756d962b9b08891a2832a95599" [label="/bin/sh -c python /tmp/get-pip.py" shape="box"];
  "sha256:6472ea82e040e41f5fd51ec587adde7189dcb9f7d20a21e660535ecde9c59654" [label="local://context" shape="ellipse"];
  "sha256:57cba1a41586c1102fce92cc8364fa3a8c2be2dababcaf5ce401907f5825b854" [label="copy{src=/requirements.txt, dest=/home/app/MOE/}" shape="note"];
  "sha256:64fc81672704f56988faf9e2dd5c41979cfe8e91c1e43b7f76865f78d31a6d27" [label="/bin/sh -c cd /home/app/MOE/ && pip install -r requirements.txt" shape="box"];
  "sha256:cff1f280d4d794c2663473bff78bdb5df87b9bb47c4d05d7035151f6e4bf5626" [label="copy{src=/, dest=/home/app/MOE/}" shape="note"];
  "sha256:7df10c495a3e1c4489c5298adad1cb2a4a823507d6d2a57de8f05d761e7b0e51" [label="mkdir{path=/home/app/MOE}" shape="note"];
  "sha256:a9a94330eea92d54ade6eb4408d3dd7b1ddbee0d2cdc3a19614545f6581ae12b" [label="/bin/sh -c python setup.py install" shape="box"];
  "sha256:764356817948be6f6fb356101c7d160e0281c19511aad0a14b4d2d689322ff32" [label="mkdir{path=/home/app/MOE/moe}" shape="note"];
  "sha256:03a5b2b2dc9943df6788d2dcd9cae09d27ba063effa789822e46fa46bfdfcc30" [label="/bin/sh -c rm -rf build" shape="box"];
  "sha256:10adc94393db3ace852a25f105a810df7e86994de7849ad6fedf47ecca73f8f8" [label="/bin/sh -c mkdir build" shape="box"];
  "sha256:f91654d502142fcbefcb544c51bbf02b5128d4e32af4bcd82d7e4fd556099f49" [label="mkdir{path=/home/app/MOE/moe/build}" shape="note"];
  "sha256:41b337dd923403c06e2f8dcd0e8240e68c131f2c27fe574a898c1322587e9991" [label="/bin/sh -c cmake /home/app/MOE/moe/optimal_learning/cpp/" shape="box"];
  "sha256:a4aec9c2d1a3999d00c61f21ae5535b31867c3253dca6a153ecc8f5764ede249" [label="/bin/sh -c make" shape="box"];
  "sha256:73eb473caf0dff3d11a2f2ebb3a32a7c1604ad0e9bab080f37496a67224a18ea" [label="/bin/sh -c cp -r /home/app/MOE/moe/build $(python -c \"import site; print(site.getsitepackages()[0])\")/moe/." shape="box"];
  "sha256:1149c3fbef1b37492b40df186cc61a1d5d997f39a7b5c5f287aed87fec02f594" [label="/bin/sh -c chown -R app:app /home/app/MOE && chmod -R a+r /home/app/MOE" shape="box"];
  "sha256:1f199d21a88df51c1122058849ff9f7f4273026507de593622f47445b2ff90ba" [label="mkdir{path=/home/app/MOE}" shape="note"];
  "sha256:3e2c96a7685bc6072b1071d8b2ac124a126e1e0b50c441fb3e5132ba9a5ad5b9" [label="/bin/sh -c make test" shape="box"];
  "sha256:4895578bf3aa0613fcd2b365d9f9e92b3729248521d2c02ff6006ebd9dc57116" [label="sha256:4895578bf3aa0613fcd2b365d9f9e92b3729248521d2c02ff6006ebd9dc57116" shape="plaintext"];
  "sha256:b7be036732673a618c4eba063bc5e77a716812adaad29b4e0234c4a61378429e" -> "sha256:312c675962e6ff8c92a95866938bb1fd8e4cd9eaf45d6a3efcad3d9454ca4298" [label=""];
  "sha256:0838af5b4138c7e31a7a53eab518794fd6dd8dc429742ad1476aa10ce7868f27" -> "sha256:312c675962e6ff8c92a95866938bb1fd8e4cd9eaf45d6a3efcad3d9454ca4298" [label=""];
  "sha256:312c675962e6ff8c92a95866938bb1fd8e4cd9eaf45d6a3efcad3d9454ca4298" -> "sha256:67cb1ea3187e03759bf93ee4b6e30115ead563756d962b9b08891a2832a95599" [label=""];
  "sha256:67cb1ea3187e03759bf93ee4b6e30115ead563756d962b9b08891a2832a95599" -> "sha256:57cba1a41586c1102fce92cc8364fa3a8c2be2dababcaf5ce401907f5825b854" [label=""];
  "sha256:6472ea82e040e41f5fd51ec587adde7189dcb9f7d20a21e660535ecde9c59654" -> "sha256:57cba1a41586c1102fce92cc8364fa3a8c2be2dababcaf5ce401907f5825b854" [label=""];
  "sha256:57cba1a41586c1102fce92cc8364fa3a8c2be2dababcaf5ce401907f5825b854" -> "sha256:64fc81672704f56988faf9e2dd5c41979cfe8e91c1e43b7f76865f78d31a6d27" [label=""];
  "sha256:64fc81672704f56988faf9e2dd5c41979cfe8e91c1e43b7f76865f78d31a6d27" -> "sha256:cff1f280d4d794c2663473bff78bdb5df87b9bb47c4d05d7035151f6e4bf5626" [label=""];
  "sha256:6472ea82e040e41f5fd51ec587adde7189dcb9f7d20a21e660535ecde9c59654" -> "sha256:cff1f280d4d794c2663473bff78bdb5df87b9bb47c4d05d7035151f6e4bf5626" [label=""];
  "sha256:cff1f280d4d794c2663473bff78bdb5df87b9bb47c4d05d7035151f6e4bf5626" -> "sha256:7df10c495a3e1c4489c5298adad1cb2a4a823507d6d2a57de8f05d761e7b0e51" [label=""];
  "sha256:7df10c495a3e1c4489c5298adad1cb2a4a823507d6d2a57de8f05d761e7b0e51" -> "sha256:a9a94330eea92d54ade6eb4408d3dd7b1ddbee0d2cdc3a19614545f6581ae12b" [label=""];
  "sha256:a9a94330eea92d54ade6eb4408d3dd7b1ddbee0d2cdc3a19614545f6581ae12b" -> "sha256:764356817948be6f6fb356101c7d160e0281c19511aad0a14b4d2d689322ff32" [label=""];
  "sha256:764356817948be6f6fb356101c7d160e0281c19511aad0a14b4d2d689322ff32" -> "sha256:03a5b2b2dc9943df6788d2dcd9cae09d27ba063effa789822e46fa46bfdfcc30" [label=""];
  "sha256:03a5b2b2dc9943df6788d2dcd9cae09d27ba063effa789822e46fa46bfdfcc30" -> "sha256:10adc94393db3ace852a25f105a810df7e86994de7849ad6fedf47ecca73f8f8" [label=""];
  "sha256:10adc94393db3ace852a25f105a810df7e86994de7849ad6fedf47ecca73f8f8" -> "sha256:f91654d502142fcbefcb544c51bbf02b5128d4e32af4bcd82d7e4fd556099f49" [label=""];
  "sha256:f91654d502142fcbefcb544c51bbf02b5128d4e32af4bcd82d7e4fd556099f49" -> "sha256:41b337dd923403c06e2f8dcd0e8240e68c131f2c27fe574a898c1322587e9991" [label=""];
  "sha256:41b337dd923403c06e2f8dcd0e8240e68c131f2c27fe574a898c1322587e9991" -> "sha256:a4aec9c2d1a3999d00c61f21ae5535b31867c3253dca6a153ecc8f5764ede249" [label=""];
  "sha256:a4aec9c2d1a3999d00c61f21ae5535b31867c3253dca6a153ecc8f5764ede249" -> "sha256:73eb473caf0dff3d11a2f2ebb3a32a7c1604ad0e9bab080f37496a67224a18ea" [label=""];
  "sha256:73eb473caf0dff3d11a2f2ebb3a32a7c1604ad0e9bab080f37496a67224a18ea" -> "sha256:1149c3fbef1b37492b40df186cc61a1d5d997f39a7b5c5f287aed87fec02f594" [label=""];
  "sha256:1149c3fbef1b37492b40df186cc61a1d5d997f39a7b5c5f287aed87fec02f594" -> "sha256:1f199d21a88df51c1122058849ff9f7f4273026507de593622f47445b2ff90ba" [label=""];
  "sha256:1f199d21a88df51c1122058849ff9f7f4273026507de593622f47445b2ff90ba" -> "sha256:3e2c96a7685bc6072b1071d8b2ac124a126e1e0b50c441fb3e5132ba9a5ad5b9" [label=""];
  "sha256:3e2c96a7685bc6072b1071d8b2ac124a126e1e0b50c441fb3e5132ba9a5ad5b9" -> "sha256:4895578bf3aa0613fcd2b365d9f9e92b3729248521d2c02ff6006ebd9dc57116" [label=""];
}

