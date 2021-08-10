[app/sources/295734792.Dockerfile]
digraph {
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" [label="docker-image://docker.io/library/ubuntu:latest" shape="ellipse"];
  "sha256:6233c0d818d4ab8c5d03791d733f4cf0057b89e02d2c417cc19997000da8a8ed" [label="/bin/sh -c apt-get update &&     useradd ultimateb64 &&     mkdir /app &&     chown ultimateb64:ultimateb64 /app -R" shape="box"];
  "sha256:ed1f7d25a1bf3cab5f754732452ab3e79e4653a55de6dab023f7e992271c17bd" [label="mkdir{path=/app}" shape="note"];
  "sha256:e2b877c31b3a24cb415583ead7246c19bde4c7a0cd22e3603b53facc2c10e9f7" [label="local://context" shape="ellipse"];
  "sha256:066baaa11aa98f9f9111fa0bd819a385aa07e8ee4871faa1fa99e8afa07f48ac" [label="copy{src=/flag.txt, dest=/app/}" shape="note"];
  "sha256:c666f1873f441212e54f10b79f7037d1ac9428a198de5e9b3dc2f780ec20141f" [label="copy{src=/ultimateb64, dest=/app/}" shape="note"];
  "sha256:4313d2c86327cc331919b500358caabae727bfc37a62ab2a1a6a659f48aa5edd" [label="sha256:4313d2c86327cc331919b500358caabae727bfc37a62ab2a1a6a659f48aa5edd" shape="plaintext"];
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" -> "sha256:6233c0d818d4ab8c5d03791d733f4cf0057b89e02d2c417cc19997000da8a8ed" [label=""];
  "sha256:6233c0d818d4ab8c5d03791d733f4cf0057b89e02d2c417cc19997000da8a8ed" -> "sha256:ed1f7d25a1bf3cab5f754732452ab3e79e4653a55de6dab023f7e992271c17bd" [label=""];
  "sha256:ed1f7d25a1bf3cab5f754732452ab3e79e4653a55de6dab023f7e992271c17bd" -> "sha256:066baaa11aa98f9f9111fa0bd819a385aa07e8ee4871faa1fa99e8afa07f48ac" [label=""];
  "sha256:e2b877c31b3a24cb415583ead7246c19bde4c7a0cd22e3603b53facc2c10e9f7" -> "sha256:066baaa11aa98f9f9111fa0bd819a385aa07e8ee4871faa1fa99e8afa07f48ac" [label=""];
  "sha256:066baaa11aa98f9f9111fa0bd819a385aa07e8ee4871faa1fa99e8afa07f48ac" -> "sha256:c666f1873f441212e54f10b79f7037d1ac9428a198de5e9b3dc2f780ec20141f" [label=""];
  "sha256:e2b877c31b3a24cb415583ead7246c19bde4c7a0cd22e3603b53facc2c10e9f7" -> "sha256:c666f1873f441212e54f10b79f7037d1ac9428a198de5e9b3dc2f780ec20141f" [label=""];
  "sha256:c666f1873f441212e54f10b79f7037d1ac9428a198de5e9b3dc2f780ec20141f" -> "sha256:4313d2c86327cc331919b500358caabae727bfc37a62ab2a1a6a659f48aa5edd" [label=""];
}

