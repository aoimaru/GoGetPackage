[app/sources/298189045.Dockerfile]
digraph {
  "sha256:0bbe7a7f775257c810ebcd36361326abae8c24523729fefbcbc748474cfc163b" [label="docker-image://docker.io/library/python:3.6" shape="ellipse"];
  "sha256:bf6390b31bdb5979606367d432c5926c10fa481d2098d203f11f506094702799" [label="/bin/sh -c wget -O /usr/local/bin/dumb-init https://github.com/Yelp/dumb-init/releases/download/v1.2.0/dumb-init_1.2.0_amd64 && chmod +x /usr/local/bin/dumb-init" shape="box"];
  "sha256:6180665f43a4228fa4583c3157faf9e471c80c95bb9b3d6845989aee9bb54188" [label="/bin/sh -c mkdir /code" shape="box"];
  "sha256:bc777d9a7aeaf0e003f7b1394d5beae88a3bf274a79f3ccc1d1c4c6233a75362" [label="mkdir{path=/code}" shape="note"];
  "sha256:cbc7818048a99b38a5b4fba6263800016d7a9e1cf566c76e731cc6dc66de7ff8" [label="local://context" shape="ellipse"];
  "sha256:07bc2f06bb51c2dff3624ccdcb01edfe226addc3353ba73125de1dcd368c182d" [label="copy{src=/requirements.txt, dest=/code/}" shape="note"];
  "sha256:8d407513fc99ed95671c220fbebd4fde49d576925bb5bda994d9c6f63ffffd5d" [label="/bin/sh -c pip install --no-cache-dir -r requirements.txt" shape="box"];
  "sha256:17fd20384ca62cb8637ee0f671d0dcfb36a32b5b05831cfce4cec99eef199d59" [label="copy{src=/, dest=/code/}" shape="note"];
  "sha256:a6be944ad942b26a5207f79f5f0fcbed0425c5f70d1df5212e3fa83261eabe74" [label="sha256:a6be944ad942b26a5207f79f5f0fcbed0425c5f70d1df5212e3fa83261eabe74" shape="plaintext"];
  "sha256:0bbe7a7f775257c810ebcd36361326abae8c24523729fefbcbc748474cfc163b" -> "sha256:bf6390b31bdb5979606367d432c5926c10fa481d2098d203f11f506094702799" [label=""];
  "sha256:bf6390b31bdb5979606367d432c5926c10fa481d2098d203f11f506094702799" -> "sha256:6180665f43a4228fa4583c3157faf9e471c80c95bb9b3d6845989aee9bb54188" [label=""];
  "sha256:6180665f43a4228fa4583c3157faf9e471c80c95bb9b3d6845989aee9bb54188" -> "sha256:bc777d9a7aeaf0e003f7b1394d5beae88a3bf274a79f3ccc1d1c4c6233a75362" [label=""];
  "sha256:bc777d9a7aeaf0e003f7b1394d5beae88a3bf274a79f3ccc1d1c4c6233a75362" -> "sha256:07bc2f06bb51c2dff3624ccdcb01edfe226addc3353ba73125de1dcd368c182d" [label=""];
  "sha256:cbc7818048a99b38a5b4fba6263800016d7a9e1cf566c76e731cc6dc66de7ff8" -> "sha256:07bc2f06bb51c2dff3624ccdcb01edfe226addc3353ba73125de1dcd368c182d" [label=""];
  "sha256:07bc2f06bb51c2dff3624ccdcb01edfe226addc3353ba73125de1dcd368c182d" -> "sha256:8d407513fc99ed95671c220fbebd4fde49d576925bb5bda994d9c6f63ffffd5d" [label=""];
  "sha256:8d407513fc99ed95671c220fbebd4fde49d576925bb5bda994d9c6f63ffffd5d" -> "sha256:17fd20384ca62cb8637ee0f671d0dcfb36a32b5b05831cfce4cec99eef199d59" [label=""];
  "sha256:cbc7818048a99b38a5b4fba6263800016d7a9e1cf566c76e731cc6dc66de7ff8" -> "sha256:17fd20384ca62cb8637ee0f671d0dcfb36a32b5b05831cfce4cec99eef199d59" [label=""];
  "sha256:17fd20384ca62cb8637ee0f671d0dcfb36a32b5b05831cfce4cec99eef199d59" -> "sha256:a6be944ad942b26a5207f79f5f0fcbed0425c5f70d1df5212e3fa83261eabe74" [label=""];
}

