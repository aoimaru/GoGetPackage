[app/sources/170591495.Dockerfile]
digraph {
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:bbeea7b982c1982b87ebf962dbb3115b90a14212d2cb49ac1e305f7828474d0a" [label="/bin/sh -c apt-get update && apt-get -y upgrade" shape="box"];
  "sha256:e073d595df8f6ffc1ac781d3a32d69baa492d9a30b13f558e8ba856fa3da63cb" [label="/bin/sh -c apt-get install -y ruby" shape="box"];
  "sha256:73673cf0152061a7a3e6f8c1c0359b6100eeb8e1f40d8cd024635587ceba4f0a" [label="/bin/sh -c gem install sinatra" shape="box"];
  "sha256:c2e652f3567d40f35f9edb207b88ad079b070b1e16607870b37cd2a1531df338" [label="/bin/sh -c mkdir /app" shape="box"];
  "sha256:214f809a614b0b967147aa678b8a069552d8819fae30f95fcb0cc634b3d22ba8" [label="local://context" shape="ellipse"];
  "sha256:2c715c8926a5a7dd287e0fb44af8d014b5be8ddad5b6822dc9a84664b62045af" [label="copy{src=/hello_world.rb, dest=/app/}" shape="note"];
  "sha256:624b8c25dcee595bf0c9e386735aede11dad5142ae46927f3d7ad51944bda692" [label="sha256:624b8c25dcee595bf0c9e386735aede11dad5142ae46927f3d7ad51944bda692" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:bbeea7b982c1982b87ebf962dbb3115b90a14212d2cb49ac1e305f7828474d0a" [label=""];
  "sha256:bbeea7b982c1982b87ebf962dbb3115b90a14212d2cb49ac1e305f7828474d0a" -> "sha256:e073d595df8f6ffc1ac781d3a32d69baa492d9a30b13f558e8ba856fa3da63cb" [label=""];
  "sha256:e073d595df8f6ffc1ac781d3a32d69baa492d9a30b13f558e8ba856fa3da63cb" -> "sha256:73673cf0152061a7a3e6f8c1c0359b6100eeb8e1f40d8cd024635587ceba4f0a" [label=""];
  "sha256:73673cf0152061a7a3e6f8c1c0359b6100eeb8e1f40d8cd024635587ceba4f0a" -> "sha256:c2e652f3567d40f35f9edb207b88ad079b070b1e16607870b37cd2a1531df338" [label=""];
  "sha256:c2e652f3567d40f35f9edb207b88ad079b070b1e16607870b37cd2a1531df338" -> "sha256:2c715c8926a5a7dd287e0fb44af8d014b5be8ddad5b6822dc9a84664b62045af" [label=""];
  "sha256:214f809a614b0b967147aa678b8a069552d8819fae30f95fcb0cc634b3d22ba8" -> "sha256:2c715c8926a5a7dd287e0fb44af8d014b5be8ddad5b6822dc9a84664b62045af" [label=""];
  "sha256:2c715c8926a5a7dd287e0fb44af8d014b5be8ddad5b6822dc9a84664b62045af" -> "sha256:624b8c25dcee595bf0c9e386735aede11dad5142ae46927f3d7ad51944bda692" [label=""];
}

