[app/sources/275346754.Dockerfile]
digraph {
  "sha256:c207425dffa8973af8c7e1fa8b685183834d7072b1c535a4ed3f09251496e228" [label="local://context" shape="ellipse"];
  "sha256:55e5a852dd00b3f8dee0934177813cb66215eb86832721bcf3a854fa8b0172e4" [label="docker-image://docker.io/library/python:3.6.8-alpine3.9" shape="ellipse"];
  "sha256:e7c7b4d8d12e7d13641190055924b132bc50cb5c4ab3f867e2978290fd13a6a4" [label="mkdir{path=/app}" shape="note"];
  "sha256:a578edd98983f29cadbf94a849d4458d795f26ea0000c57c7df2e4a6f7ef7957" [label="copy{src=/, dest=/app}" shape="note"];
  "sha256:f5d438a817440847197bfa26c21f19693649cfbb9338860fd8c67ac09f091fdb" [label="/bin/sh -c apk add --update --no-cache mariadb-connector-c-dev \t&& apk add --no-cache --virtual .build-deps \t\tmariadb-dev \t\tgcc \t\tmusl-dev \t\tlibffi-dev \t\topenssl-dev \t\tpython3-dev \t&& pip install -r requirements.txt \t&& apk del .build-deps" shape="box"];
  "sha256:4d48386046cc3740ec36c66058f4d091166370371ad391190089cd0bbad125ba" [label="sha256:4d48386046cc3740ec36c66058f4d091166370371ad391190089cd0bbad125ba" shape="plaintext"];
  "sha256:55e5a852dd00b3f8dee0934177813cb66215eb86832721bcf3a854fa8b0172e4" -> "sha256:e7c7b4d8d12e7d13641190055924b132bc50cb5c4ab3f867e2978290fd13a6a4" [label=""];
  "sha256:e7c7b4d8d12e7d13641190055924b132bc50cb5c4ab3f867e2978290fd13a6a4" -> "sha256:a578edd98983f29cadbf94a849d4458d795f26ea0000c57c7df2e4a6f7ef7957" [label=""];
  "sha256:c207425dffa8973af8c7e1fa8b685183834d7072b1c535a4ed3f09251496e228" -> "sha256:a578edd98983f29cadbf94a849d4458d795f26ea0000c57c7df2e4a6f7ef7957" [label=""];
  "sha256:a578edd98983f29cadbf94a849d4458d795f26ea0000c57c7df2e4a6f7ef7957" -> "sha256:f5d438a817440847197bfa26c21f19693649cfbb9338860fd8c67ac09f091fdb" [label=""];
  "sha256:f5d438a817440847197bfa26c21f19693649cfbb9338860fd8c67ac09f091fdb" -> "sha256:4d48386046cc3740ec36c66058f4d091166370371ad391190089cd0bbad125ba" [label=""];
}

