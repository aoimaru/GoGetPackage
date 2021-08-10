[app/sources/360809630.Dockerfile]
digraph {
  "sha256:537e6971c833b82c115289cfc2598c509d8bc9b57833f87a848ed241c96697c9" [label="docker-image://gcr.io/google_containers/ubuntu-slim:0.2@sha256:f5bc17465946ceb3e0630e72f35fdf007ba84d4409e08838373bf7b102d6ef6b" shape="ellipse"];
  "sha256:35c0a680e159322e70d7d7cf9dc6fbea7430be03799ba2ef612ed916dd4ac85e" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends iperf bash   && apt-get clean -y   && rm -rf /var/lib/apt/lists/*   && ln -s /usr/bin/iperf /usr/local/bin/iperf" shape="box"];
  "sha256:08c5bb3584c3776e6cb5e0cb48402a5c89478adc882cbae0f1fe99d89432a37c" [label="/bin/sh -c ls -altrh /usr/local/bin/iperf" shape="box"];
  "sha256:1036b813a368e2264456ca577d94eb72daef694e741c1dd1bf6218129deaa5d6" [label="sha256:1036b813a368e2264456ca577d94eb72daef694e741c1dd1bf6218129deaa5d6" shape="plaintext"];
  "sha256:537e6971c833b82c115289cfc2598c509d8bc9b57833f87a848ed241c96697c9" -> "sha256:35c0a680e159322e70d7d7cf9dc6fbea7430be03799ba2ef612ed916dd4ac85e" [label=""];
  "sha256:35c0a680e159322e70d7d7cf9dc6fbea7430be03799ba2ef612ed916dd4ac85e" -> "sha256:08c5bb3584c3776e6cb5e0cb48402a5c89478adc882cbae0f1fe99d89432a37c" [label=""];
  "sha256:08c5bb3584c3776e6cb5e0cb48402a5c89478adc882cbae0f1fe99d89432a37c" -> "sha256:1036b813a368e2264456ca577d94eb72daef694e741c1dd1bf6218129deaa5d6" [label=""];
}

