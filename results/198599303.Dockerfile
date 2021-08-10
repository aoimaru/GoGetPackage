[app/sources/198599303.Dockerfile]
digraph {
  "sha256:a2126d6aa7c2b71875176a087e75c027062a111f190581b308a711a6f2dcade8" [label="docker-image://docker.io/library/python:3.4-slim" shape="ellipse"];
  "sha256:72595c3c87c3d57c3b0a4a289aa997b7ef96d569ce33dc47b61ef5e0f9d56aeb" [label="/bin/sh -c apt-get update && apt-get install -y glpk-utils && apt-get install -y python3-pip" shape="box"];
  "sha256:c7ee7ee67888f55a9eaa716b9e3aaa1825363d27fa86afe7c0f32b48a7c91d38" [label="/bin/sh -c apt-get install -y git" shape="box"];
  "sha256:cec57363ce9d357c597942f607fd2586a863bdd3f77abe7ef5f8be536ddd4375" [label="/bin/sh -c pip install git+git://github.com/eandersson/amqpstorm.git@feature/reuse_channels" shape="box"];
  "sha256:b149eda95c810849df703ed70d8d92f42d5e2a0e196ccb6126e8f4f639d8cfbd" [label="local://context" shape="ellipse"];
  "sha256:8ffbe08272efbed92a5fced21a639a836fee89adc02782b6e20bdb11098d1e8f" [label="copy{src=/son-mano-base, dest=/son-mano-base}" shape="note"];
  "sha256:02d6f4ad52262918d0d5d17f3043e47a2e2c8ea3bfec6e9cf9a387de82820573" [label="copy{src=/utils/delayedstart.sh, dest=/delayedstart.sh}" shape="note"];
  "sha256:aa16db9e7dd4191f658f8c45c0f1cce96cf5b1caf3d51faf7d464655bceef7d7" [label="copy{src=/plugins/son-mano-scaling-executive, dest=/plugins/son-mano-scaling-executive}" shape="note"];
  "sha256:154f018f06af4e585560aaf3d0cb5d5a63e33a402822e4b0efcd2f64aa94f90c" [label="mkdir{path=/son-mano-base}" shape="note"];
  "sha256:4537c819e8f77d1a5f5e3f1b6e2fbbf0865508964c162fd0592c3bdba0032194" [label="/bin/sh -c python setup.py install" shape="box"];
  "sha256:564cffe470d1f9d4bd72ac974d802002ced727a49d7f7d0fb952bab092c88755" [label="mkdir{path=/plugins/son-mano-scaling-executive}" shape="note"];
  "sha256:c6ef8cab2d1b52f95e4b18f9686e94c9c41bc465d26e2616f97089d4dda12148" [label="/bin/sh -c python setup.py develop" shape="box"];
  "sha256:ab54e37d1c197aab32385907830f6062edad573c0929bd967f1895605b0cfb79" [label="sha256:ab54e37d1c197aab32385907830f6062edad573c0929bd967f1895605b0cfb79" shape="plaintext"];
  "sha256:a2126d6aa7c2b71875176a087e75c027062a111f190581b308a711a6f2dcade8" -> "sha256:72595c3c87c3d57c3b0a4a289aa997b7ef96d569ce33dc47b61ef5e0f9d56aeb" [label=""];
  "sha256:72595c3c87c3d57c3b0a4a289aa997b7ef96d569ce33dc47b61ef5e0f9d56aeb" -> "sha256:c7ee7ee67888f55a9eaa716b9e3aaa1825363d27fa86afe7c0f32b48a7c91d38" [label=""];
  "sha256:c7ee7ee67888f55a9eaa716b9e3aaa1825363d27fa86afe7c0f32b48a7c91d38" -> "sha256:cec57363ce9d357c597942f607fd2586a863bdd3f77abe7ef5f8be536ddd4375" [label=""];
  "sha256:cec57363ce9d357c597942f607fd2586a863bdd3f77abe7ef5f8be536ddd4375" -> "sha256:8ffbe08272efbed92a5fced21a639a836fee89adc02782b6e20bdb11098d1e8f" [label=""];
  "sha256:b149eda95c810849df703ed70d8d92f42d5e2a0e196ccb6126e8f4f639d8cfbd" -> "sha256:8ffbe08272efbed92a5fced21a639a836fee89adc02782b6e20bdb11098d1e8f" [label=""];
  "sha256:8ffbe08272efbed92a5fced21a639a836fee89adc02782b6e20bdb11098d1e8f" -> "sha256:02d6f4ad52262918d0d5d17f3043e47a2e2c8ea3bfec6e9cf9a387de82820573" [label=""];
  "sha256:b149eda95c810849df703ed70d8d92f42d5e2a0e196ccb6126e8f4f639d8cfbd" -> "sha256:02d6f4ad52262918d0d5d17f3043e47a2e2c8ea3bfec6e9cf9a387de82820573" [label=""];
  "sha256:02d6f4ad52262918d0d5d17f3043e47a2e2c8ea3bfec6e9cf9a387de82820573" -> "sha256:aa16db9e7dd4191f658f8c45c0f1cce96cf5b1caf3d51faf7d464655bceef7d7" [label=""];
  "sha256:b149eda95c810849df703ed70d8d92f42d5e2a0e196ccb6126e8f4f639d8cfbd" -> "sha256:aa16db9e7dd4191f658f8c45c0f1cce96cf5b1caf3d51faf7d464655bceef7d7" [label=""];
  "sha256:aa16db9e7dd4191f658f8c45c0f1cce96cf5b1caf3d51faf7d464655bceef7d7" -> "sha256:154f018f06af4e585560aaf3d0cb5d5a63e33a402822e4b0efcd2f64aa94f90c" [label=""];
  "sha256:154f018f06af4e585560aaf3d0cb5d5a63e33a402822e4b0efcd2f64aa94f90c" -> "sha256:4537c819e8f77d1a5f5e3f1b6e2fbbf0865508964c162fd0592c3bdba0032194" [label=""];
  "sha256:4537c819e8f77d1a5f5e3f1b6e2fbbf0865508964c162fd0592c3bdba0032194" -> "sha256:564cffe470d1f9d4bd72ac974d802002ced727a49d7f7d0fb952bab092c88755" [label=""];
  "sha256:564cffe470d1f9d4bd72ac974d802002ced727a49d7f7d0fb952bab092c88755" -> "sha256:c6ef8cab2d1b52f95e4b18f9686e94c9c41bc465d26e2616f97089d4dda12148" [label=""];
  "sha256:c6ef8cab2d1b52f95e4b18f9686e94c9c41bc465d26e2616f97089d4dda12148" -> "sha256:ab54e37d1c197aab32385907830f6062edad573c0929bd967f1895605b0cfb79" [label=""];
}

