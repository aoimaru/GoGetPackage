[app/sources/273088297.Dockerfile]
digraph {
  "sha256:2d105d7d1f9dbc50bc49a10733461a59c633766110ba29938de070793db34f23" [label="docker-image://docker.io/aarch64/ubuntu:xenial" shape="ellipse"];
  "sha256:974199d4c7a11e605be150e5047fa8940d3b072e088a0a37c0abe884bc86e455" [label="/bin/sh -c apt-get update && apt-get install -y git golang-go" shape="box"];
  "sha256:c174591b37258ba363fbb7f4439b9ff767f2470518d69bdd43fcad5f7f5af046" [label="/bin/sh -c mkdir -p /go/src /go/bin /go/pkg" shape="box"];
  "sha256:8e92fe58212dbf834c342dd4ecaa9fa02c0846e34ec4d1c13ac4479f297be3ed" [label="/bin/sh -c export GLIDE=v0.11.1;         export TARGET=/go/src/github.com/Masterminds;         mkdir -p ${TARGET} &&         git clone https://github.com/Masterminds/glide.git ${TARGET}/glide &&         cd ${TARGET}/glide &&         git checkout $GLIDE &&         make build &&         cp ./glide /usr/bin/glide &&         cd / && rm -rf /go/src/* /go/bin/* /go/pkg/*" shape="box"];
  "sha256:e3c4f16f7f7c5bf103539b3c61449bf5a40c347bef9a507e33fcea34501225bc" [label="local://context" shape="ellipse"];
  "sha256:d976c0829400aebbf0a81bfa805a09fe5082f99d7778f4a0b9221cc0c4d1ff18" [label="copy{src=/glide.yaml, dest=/manvendor/}" shape="note"];
  "sha256:76ac8fa052d4f7e30ea86cc70357fec300d6feb7092a803c474fa96287caf59d" [label="copy{src=/glide.lock, dest=/manvendor/}" shape="note"];
  "sha256:87787d5fb2fdfe865fe9ebb2e17187c58c781c82d1464223e6df3c88dc2d33f3" [label="mkdir{path=/manvendor}" shape="note"];
  "sha256:f3b58685422b09f9302951de9787ecbff216172c71e071a6fb66d3337f9aea46" [label="/bin/sh -c glide install && mv vendor src" shape="box"];
  "sha256:060efcfc4c8278e620e2771603311291626b9fef772b203588e76c9d216a6748" [label="/bin/sh -c go build -o /usr/bin/go-md2man github.com/cpuguy83/go-md2man" shape="box"];
  "sha256:63783be7d7f2f9b227da725c2c34908aad77f55c222945e2e18253f5f9f4b0ca" [label="mkdir{path=/go/src/github.com/docker/docker}" shape="note"];
  "sha256:1803e40efd5ecb062aec008a65cb266197b1e999b1f3a4d3013364ef06fa2237" [label="sha256:1803e40efd5ecb062aec008a65cb266197b1e999b1f3a4d3013364ef06fa2237" shape="plaintext"];
  "sha256:2d105d7d1f9dbc50bc49a10733461a59c633766110ba29938de070793db34f23" -> "sha256:974199d4c7a11e605be150e5047fa8940d3b072e088a0a37c0abe884bc86e455" [label=""];
  "sha256:974199d4c7a11e605be150e5047fa8940d3b072e088a0a37c0abe884bc86e455" -> "sha256:c174591b37258ba363fbb7f4439b9ff767f2470518d69bdd43fcad5f7f5af046" [label=""];
  "sha256:c174591b37258ba363fbb7f4439b9ff767f2470518d69bdd43fcad5f7f5af046" -> "sha256:8e92fe58212dbf834c342dd4ecaa9fa02c0846e34ec4d1c13ac4479f297be3ed" [label=""];
  "sha256:8e92fe58212dbf834c342dd4ecaa9fa02c0846e34ec4d1c13ac4479f297be3ed" -> "sha256:d976c0829400aebbf0a81bfa805a09fe5082f99d7778f4a0b9221cc0c4d1ff18" [label=""];
  "sha256:e3c4f16f7f7c5bf103539b3c61449bf5a40c347bef9a507e33fcea34501225bc" -> "sha256:d976c0829400aebbf0a81bfa805a09fe5082f99d7778f4a0b9221cc0c4d1ff18" [label=""];
  "sha256:d976c0829400aebbf0a81bfa805a09fe5082f99d7778f4a0b9221cc0c4d1ff18" -> "sha256:76ac8fa052d4f7e30ea86cc70357fec300d6feb7092a803c474fa96287caf59d" [label=""];
  "sha256:e3c4f16f7f7c5bf103539b3c61449bf5a40c347bef9a507e33fcea34501225bc" -> "sha256:76ac8fa052d4f7e30ea86cc70357fec300d6feb7092a803c474fa96287caf59d" [label=""];
  "sha256:76ac8fa052d4f7e30ea86cc70357fec300d6feb7092a803c474fa96287caf59d" -> "sha256:87787d5fb2fdfe865fe9ebb2e17187c58c781c82d1464223e6df3c88dc2d33f3" [label=""];
  "sha256:87787d5fb2fdfe865fe9ebb2e17187c58c781c82d1464223e6df3c88dc2d33f3" -> "sha256:f3b58685422b09f9302951de9787ecbff216172c71e071a6fb66d3337f9aea46" [label=""];
  "sha256:f3b58685422b09f9302951de9787ecbff216172c71e071a6fb66d3337f9aea46" -> "sha256:060efcfc4c8278e620e2771603311291626b9fef772b203588e76c9d216a6748" [label=""];
  "sha256:060efcfc4c8278e620e2771603311291626b9fef772b203588e76c9d216a6748" -> "sha256:63783be7d7f2f9b227da725c2c34908aad77f55c222945e2e18253f5f9f4b0ca" [label=""];
  "sha256:63783be7d7f2f9b227da725c2c34908aad77f55c222945e2e18253f5f9f4b0ca" -> "sha256:1803e40efd5ecb062aec008a65cb266197b1e999b1f3a4d3013364ef06fa2237" [label=""];
}

