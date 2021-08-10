[app/sources/229540128.Dockerfile]
digraph {
  "sha256:fb75134fa4cd014dd2d96ae89142f26707287a8a94158fe58327f7df56d555a3" [label="docker-image://docker.io/mesosphere/mesos:0.20.1" shape="ellipse"];
  "sha256:1d3b6bc3bad36a62d746e071f73fdfeca8a06787544779e6aba593835ffb616e" [label="/bin/sh -c apt-get update &&     apt-get install -y python libnss3 openjdk-7-jre-headless curl" shape="box"];
  "sha256:8290e3df678ebc51104b574be092c24f3215de2c162a755a280681599709bdef" [label="/bin/sh -c mkdir /opt/spark &&     curl http://www.apache.org/dyn/closer.lua/spark/spark-1.4.0/spark-1.4.0-bin-hadoop2.4.tgz     | tar -xzC /opt" shape="box"];
  "sha256:10c9b8196da9554cd097d8228881c10f02052062ff3337dcd02625cc6c503bbd" [label="sha256:10c9b8196da9554cd097d8228881c10f02052062ff3337dcd02625cc6c503bbd" shape="plaintext"];
  "sha256:fb75134fa4cd014dd2d96ae89142f26707287a8a94158fe58327f7df56d555a3" -> "sha256:1d3b6bc3bad36a62d746e071f73fdfeca8a06787544779e6aba593835ffb616e" [label=""];
  "sha256:1d3b6bc3bad36a62d746e071f73fdfeca8a06787544779e6aba593835ffb616e" -> "sha256:8290e3df678ebc51104b574be092c24f3215de2c162a755a280681599709bdef" [label=""];
  "sha256:8290e3df678ebc51104b574be092c24f3215de2c162a755a280681599709bdef" -> "sha256:10c9b8196da9554cd097d8228881c10f02052062ff3337dcd02625cc6c503bbd" [label=""];
}

