[app/sources/252773994.Dockerfile]
digraph {
  "sha256:2abd4f62eeae3ae677f329f46e6bcb1e11e784f0dec02fc57058a8ee7638b4a5" [label="docker-image://docker.io/phusion/baseimage:0.9.17" shape="ellipse"];
  "sha256:fcf9ecd0334c8bb792d1e73c3e44fc32502f6299f369c80d22e16e4087de4a18" [label="/bin/sh -c apt-get update && apt-get upgrade -y -o Dpkg::Options::=\"--force-confold\"" shape="box"];
  "sha256:a997f479a3fc1cd9e35f0c1dd382d7af85db882fc9b160eb99c53308e0736c2e" [label="/bin/sh -c apt-get -y install unzip openjdk-7-jre-headless" shape="box"];
  "sha256:0427665714495942cbabdd55068ea9e96d34fdf3c02cd526258bb4869b8e5843" [label="http://tinkerpop.com/downloads/rexster/rexster-server-2.6.0.zip" shape="ellipse"];
  "sha256:126d9f0d348e8e42b95008f83c1837db303c16063964ab1b6a2abbf1d564404f" [label="copy{src=/rexster-server-2.6.0.zip, dest=/}" shape="note"];
  "sha256:eeb30214ed9404ab1a2ccfc3c3a0dd47ad20179f91f16fa301c85b8f460cf2b0" [label="/bin/sh -c unzip rexster-server-2.6.0.zip" shape="box"];
  "sha256:88686656b0e747e1c15f92d8ed60f2f03ebe5fbed0f99066f9ffc4e3b4099c3d" [label="/bin/sh -c rm rexster-server-2.6.0.zip" shape="box"];
  "sha256:a826ef9c12f6f6c3ffa8f1dd0ab468701bb31bd29f7a2423912e5749cad79625" [label="/bin/sh -c mv rexster-server-2.6.0 rexster-server" shape="box"];
  "sha256:7eccb6617d2aae930796db635ed04e2554b772c1d06f861c10932a0f64720913" [label="/bin/sh -c mkdir /etc/service/rexster" shape="box"];
  "sha256:5168b12278ded5a7ea90a11a1388268291ada02c9ea051eba70f03b233829d72" [label="local://context" shape="ellipse"];
  "sha256:709a7a9853b8a783fc87a2a79fff611bc9f14f6480874ec238c0e6a30ff3f6a6" [label="copy{src=/rexster.sh, dest=/etc/service/rexster/run}" shape="note"];
  "sha256:35d94b076dab97fc4bcff5ef13ac924cba1b54a47884bac19d68e1646e5f8ef8" [label="/bin/sh -c apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*" shape="box"];
  "sha256:99abdd759d40a0568ffb27c8af0ed3cb350cfcdc37fd0a52191b24ba40adc912" [label="mkdir{path=/rexster-server}" shape="note"];
  "sha256:983546b4e6d7510a69b21ced1eaadae76f136f0a790e70560b19090f85c85bcc" [label="sha256:983546b4e6d7510a69b21ced1eaadae76f136f0a790e70560b19090f85c85bcc" shape="plaintext"];
  "sha256:2abd4f62eeae3ae677f329f46e6bcb1e11e784f0dec02fc57058a8ee7638b4a5" -> "sha256:fcf9ecd0334c8bb792d1e73c3e44fc32502f6299f369c80d22e16e4087de4a18" [label=""];
  "sha256:fcf9ecd0334c8bb792d1e73c3e44fc32502f6299f369c80d22e16e4087de4a18" -> "sha256:a997f479a3fc1cd9e35f0c1dd382d7af85db882fc9b160eb99c53308e0736c2e" [label=""];
  "sha256:a997f479a3fc1cd9e35f0c1dd382d7af85db882fc9b160eb99c53308e0736c2e" -> "sha256:126d9f0d348e8e42b95008f83c1837db303c16063964ab1b6a2abbf1d564404f" [label=""];
  "sha256:0427665714495942cbabdd55068ea9e96d34fdf3c02cd526258bb4869b8e5843" -> "sha256:126d9f0d348e8e42b95008f83c1837db303c16063964ab1b6a2abbf1d564404f" [label=""];
  "sha256:126d9f0d348e8e42b95008f83c1837db303c16063964ab1b6a2abbf1d564404f" -> "sha256:eeb30214ed9404ab1a2ccfc3c3a0dd47ad20179f91f16fa301c85b8f460cf2b0" [label=""];
  "sha256:eeb30214ed9404ab1a2ccfc3c3a0dd47ad20179f91f16fa301c85b8f460cf2b0" -> "sha256:88686656b0e747e1c15f92d8ed60f2f03ebe5fbed0f99066f9ffc4e3b4099c3d" [label=""];
  "sha256:88686656b0e747e1c15f92d8ed60f2f03ebe5fbed0f99066f9ffc4e3b4099c3d" -> "sha256:a826ef9c12f6f6c3ffa8f1dd0ab468701bb31bd29f7a2423912e5749cad79625" [label=""];
  "sha256:a826ef9c12f6f6c3ffa8f1dd0ab468701bb31bd29f7a2423912e5749cad79625" -> "sha256:7eccb6617d2aae930796db635ed04e2554b772c1d06f861c10932a0f64720913" [label=""];
  "sha256:7eccb6617d2aae930796db635ed04e2554b772c1d06f861c10932a0f64720913" -> "sha256:709a7a9853b8a783fc87a2a79fff611bc9f14f6480874ec238c0e6a30ff3f6a6" [label=""];
  "sha256:5168b12278ded5a7ea90a11a1388268291ada02c9ea051eba70f03b233829d72" -> "sha256:709a7a9853b8a783fc87a2a79fff611bc9f14f6480874ec238c0e6a30ff3f6a6" [label=""];
  "sha256:709a7a9853b8a783fc87a2a79fff611bc9f14f6480874ec238c0e6a30ff3f6a6" -> "sha256:35d94b076dab97fc4bcff5ef13ac924cba1b54a47884bac19d68e1646e5f8ef8" [label=""];
  "sha256:35d94b076dab97fc4bcff5ef13ac924cba1b54a47884bac19d68e1646e5f8ef8" -> "sha256:99abdd759d40a0568ffb27c8af0ed3cb350cfcdc37fd0a52191b24ba40adc912" [label=""];
  "sha256:99abdd759d40a0568ffb27c8af0ed3cb350cfcdc37fd0a52191b24ba40adc912" -> "sha256:983546b4e6d7510a69b21ced1eaadae76f136f0a790e70560b19090f85c85bcc" [label=""];
}

