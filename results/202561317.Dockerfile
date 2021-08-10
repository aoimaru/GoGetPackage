[app/sources/202561317.Dockerfile]
digraph {
  "sha256:68a710cfb994159b0d301d48f5a567beea6c41468c2f438ac8b4e8cfb5d40cf9" [label="docker-image://docker.io/mitchtech/rpi-python:latest" shape="ellipse"];
  "sha256:dbc9d4cc9e4fd2744a904393439d9448489a5667889187d768eb79edd914dced" [label="/bin/sh -c apt-get update && apt-get install -y -q     build-essential     --no-install-recommends &&     rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:2edce89926808917576a6b2d2ec307c93cb5d9f32d441eaeb2817a1146831677" [label="/bin/sh -c pip install rpio" shape="box"];
  "sha256:913b8087311f7897d47091e3b22a7e872d4dcde721098d893b7a7ba955dbb2fe" [label="sha256:913b8087311f7897d47091e3b22a7e872d4dcde721098d893b7a7ba955dbb2fe" shape="plaintext"];
  "sha256:68a710cfb994159b0d301d48f5a567beea6c41468c2f438ac8b4e8cfb5d40cf9" -> "sha256:dbc9d4cc9e4fd2744a904393439d9448489a5667889187d768eb79edd914dced" [label=""];
  "sha256:dbc9d4cc9e4fd2744a904393439d9448489a5667889187d768eb79edd914dced" -> "sha256:2edce89926808917576a6b2d2ec307c93cb5d9f32d441eaeb2817a1146831677" [label=""];
  "sha256:2edce89926808917576a6b2d2ec307c93cb5d9f32d441eaeb2817a1146831677" -> "sha256:913b8087311f7897d47091e3b22a7e872d4dcde721098d893b7a7ba955dbb2fe" [label=""];
}

