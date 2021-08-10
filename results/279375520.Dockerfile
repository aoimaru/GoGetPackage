[app/sources/279375520.Dockerfile]
digraph {
  "sha256:897575d9803598d0bde857cddacfba114690e4e93894c9c5740b901e9d0499d9" [label="local://context" shape="ellipse"];
  "sha256:0c9a51599062e5153a0967e70fe6faa40dfe1d6100e2bb198db5f4474bee4355" [label="docker-image://docker.io/library/python:3.6-alpine" shape="ellipse"];
  "sha256:cd89f2d990169d157c657bbb7aa8de67bb85688a773a6fd962626ce7a403e324" [label="copy{src=/requirements.txt, dest=/}" shape="note"];
  "sha256:1ba07324cea3fb07a7581d9c3720015ad23e5ac6f87cdc00bf3be4dfc3e8c494" [label="/bin/sh -c apk add --no-cache --virtual=build-dependencies         bash python3-dev build-base linux-headers &&     pip install --no-cache-dir -r requirements.txt 2>&1 &&     apk del --purge build-dependencies &&     rm -rf /root/.cache /tmp/*" shape="box"];
  "sha256:714df824c75d9e8925a0bf550c97cd7900be1d54795acf1374b353adbd1ef221" [label="copy{src=/app.py, dest=/app.py}" shape="note"];
  "sha256:730600843edbb2a0b2b0df199afe1ebddb081e9fb59a623b763e083d7f5910be" [label="sha256:730600843edbb2a0b2b0df199afe1ebddb081e9fb59a623b763e083d7f5910be" shape="plaintext"];
  "sha256:0c9a51599062e5153a0967e70fe6faa40dfe1d6100e2bb198db5f4474bee4355" -> "sha256:cd89f2d990169d157c657bbb7aa8de67bb85688a773a6fd962626ce7a403e324" [label=""];
  "sha256:897575d9803598d0bde857cddacfba114690e4e93894c9c5740b901e9d0499d9" -> "sha256:cd89f2d990169d157c657bbb7aa8de67bb85688a773a6fd962626ce7a403e324" [label=""];
  "sha256:cd89f2d990169d157c657bbb7aa8de67bb85688a773a6fd962626ce7a403e324" -> "sha256:1ba07324cea3fb07a7581d9c3720015ad23e5ac6f87cdc00bf3be4dfc3e8c494" [label=""];
  "sha256:1ba07324cea3fb07a7581d9c3720015ad23e5ac6f87cdc00bf3be4dfc3e8c494" -> "sha256:714df824c75d9e8925a0bf550c97cd7900be1d54795acf1374b353adbd1ef221" [label=""];
  "sha256:897575d9803598d0bde857cddacfba114690e4e93894c9c5740b901e9d0499d9" -> "sha256:714df824c75d9e8925a0bf550c97cd7900be1d54795acf1374b353adbd1ef221" [label=""];
  "sha256:714df824c75d9e8925a0bf550c97cd7900be1d54795acf1374b353adbd1ef221" -> "sha256:730600843edbb2a0b2b0df199afe1ebddb081e9fb59a623b763e083d7f5910be" [label=""];
}

