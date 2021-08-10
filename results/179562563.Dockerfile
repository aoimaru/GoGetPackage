[app/sources/179562563.Dockerfile]
digraph {
  "sha256:d6c407877b77e4f02619b30fefa102dca032dde2f5997da1ccde292d53130ab4" [label="docker-image://docker.io/google/python:latest" shape="ellipse"];
  "sha256:f57c4c2529520c3c4a7b600478ec7723c3f6affd7d5a134df00a1e8f4dc83ac8" [label="/bin/sh -c apt-get install -y libffi-dev" shape="box"];
  "sha256:59d503b73baf13204295337421f2a2741fb2b21b8fb173723bca5defc0dc3d1c" [label="/bin/sh -c pip install --upgrade pip" shape="box"];
  "sha256:856afc719704aef6bcbdd546696c7ca503433a692b6c6022fc09088eb567dcb9" [label="/bin/sh -c pip install config" shape="box"];
  "sha256:d1536f561ebf038034f63a093166ae27e355d48bb3d0436de5ad16763619261d" [label="/bin/sh -c pip install tweepy" shape="box"];
  "sha256:d3e4e393d7dfd8ba7771bbf31555270aa297a946d9a62c404f8ee568fc9c7bad" [label="/bin/sh -c pip install bigquery-python" shape="box"];
  "sha256:26297485215ab4b2072d19a8f2a714273ea7267507ae57cef6ad09ff8a2c510f" [label="/bin/sh -c pip install --upgrade google-api-python-client" shape="box"];
  "sha256:53af12d9ba2c15074606b3491f7b897dcedc188324d59ad2e4dd3c2960aeae0e" [label="local://context" shape="ellipse"];
  "sha256:3ae49bd95793b455f4b223cc9ab6f635cf94c50e701afb69cf6fabc807b3b818" [label="copy{src=/config, dest=/config}" shape="note"];
  "sha256:2c0fd39918d488f5249b00449e5be4cff766b70a208a6d87812494e496e21f9f" [label="copy{src=/schema, dest=/schema}" shape="note"];
  "sha256:db4a8be2a5325f396c10d2b3166f162de5eea1315405c4a9c23a14254c8fc2ad" [label="copy{src=/key.p12, dest=/key.p12}" shape="note"];
  "sha256:581d9282533f0b40544c0132e1797389806d97bcec0a5711c6e650bac621af66" [label="copy{src=/logging.conf, dest=/logging.conf}" shape="note"];
  "sha256:0ea83f7e6939146bd4942a48a445e608137c212d203682db1b639045acc47541" [label="copy{src=/libs, dest=/libs}" shape="note"];
  "sha256:d051bc5df4e9094ebbe3c86223c1ef3ea82495eccd5a3a19832299f3d7082051" [label="copy{src=/utils.py, dest=/utils.py}" shape="note"];
  "sha256:2d6a4c9d1ff1871d7ca3c0da3b5802d5293d8b2be5d9e6440bb74422d1399c59" [label="copy{src=/load.py, dest=/load.py}" shape="note"];
  "sha256:a3a5e4b20de3b112f757cbd88c4b847b137e0e720eacb2d0929068eb33aafcf7" [label="sha256:a3a5e4b20de3b112f757cbd88c4b847b137e0e720eacb2d0929068eb33aafcf7" shape="plaintext"];
  "sha256:d6c407877b77e4f02619b30fefa102dca032dde2f5997da1ccde292d53130ab4" -> "sha256:f57c4c2529520c3c4a7b600478ec7723c3f6affd7d5a134df00a1e8f4dc83ac8" [label=""];
  "sha256:f57c4c2529520c3c4a7b600478ec7723c3f6affd7d5a134df00a1e8f4dc83ac8" -> "sha256:59d503b73baf13204295337421f2a2741fb2b21b8fb173723bca5defc0dc3d1c" [label=""];
  "sha256:59d503b73baf13204295337421f2a2741fb2b21b8fb173723bca5defc0dc3d1c" -> "sha256:856afc719704aef6bcbdd546696c7ca503433a692b6c6022fc09088eb567dcb9" [label=""];
  "sha256:856afc719704aef6bcbdd546696c7ca503433a692b6c6022fc09088eb567dcb9" -> "sha256:d1536f561ebf038034f63a093166ae27e355d48bb3d0436de5ad16763619261d" [label=""];
  "sha256:d1536f561ebf038034f63a093166ae27e355d48bb3d0436de5ad16763619261d" -> "sha256:d3e4e393d7dfd8ba7771bbf31555270aa297a946d9a62c404f8ee568fc9c7bad" [label=""];
  "sha256:d3e4e393d7dfd8ba7771bbf31555270aa297a946d9a62c404f8ee568fc9c7bad" -> "sha256:26297485215ab4b2072d19a8f2a714273ea7267507ae57cef6ad09ff8a2c510f" [label=""];
  "sha256:26297485215ab4b2072d19a8f2a714273ea7267507ae57cef6ad09ff8a2c510f" -> "sha256:3ae49bd95793b455f4b223cc9ab6f635cf94c50e701afb69cf6fabc807b3b818" [label=""];
  "sha256:53af12d9ba2c15074606b3491f7b897dcedc188324d59ad2e4dd3c2960aeae0e" -> "sha256:3ae49bd95793b455f4b223cc9ab6f635cf94c50e701afb69cf6fabc807b3b818" [label=""];
  "sha256:3ae49bd95793b455f4b223cc9ab6f635cf94c50e701afb69cf6fabc807b3b818" -> "sha256:2c0fd39918d488f5249b00449e5be4cff766b70a208a6d87812494e496e21f9f" [label=""];
  "sha256:53af12d9ba2c15074606b3491f7b897dcedc188324d59ad2e4dd3c2960aeae0e" -> "sha256:2c0fd39918d488f5249b00449e5be4cff766b70a208a6d87812494e496e21f9f" [label=""];
  "sha256:2c0fd39918d488f5249b00449e5be4cff766b70a208a6d87812494e496e21f9f" -> "sha256:db4a8be2a5325f396c10d2b3166f162de5eea1315405c4a9c23a14254c8fc2ad" [label=""];
  "sha256:53af12d9ba2c15074606b3491f7b897dcedc188324d59ad2e4dd3c2960aeae0e" -> "sha256:db4a8be2a5325f396c10d2b3166f162de5eea1315405c4a9c23a14254c8fc2ad" [label=""];
  "sha256:db4a8be2a5325f396c10d2b3166f162de5eea1315405c4a9c23a14254c8fc2ad" -> "sha256:581d9282533f0b40544c0132e1797389806d97bcec0a5711c6e650bac621af66" [label=""];
  "sha256:53af12d9ba2c15074606b3491f7b897dcedc188324d59ad2e4dd3c2960aeae0e" -> "sha256:581d9282533f0b40544c0132e1797389806d97bcec0a5711c6e650bac621af66" [label=""];
  "sha256:581d9282533f0b40544c0132e1797389806d97bcec0a5711c6e650bac621af66" -> "sha256:0ea83f7e6939146bd4942a48a445e608137c212d203682db1b639045acc47541" [label=""];
  "sha256:53af12d9ba2c15074606b3491f7b897dcedc188324d59ad2e4dd3c2960aeae0e" -> "sha256:0ea83f7e6939146bd4942a48a445e608137c212d203682db1b639045acc47541" [label=""];
  "sha256:0ea83f7e6939146bd4942a48a445e608137c212d203682db1b639045acc47541" -> "sha256:d051bc5df4e9094ebbe3c86223c1ef3ea82495eccd5a3a19832299f3d7082051" [label=""];
  "sha256:53af12d9ba2c15074606b3491f7b897dcedc188324d59ad2e4dd3c2960aeae0e" -> "sha256:d051bc5df4e9094ebbe3c86223c1ef3ea82495eccd5a3a19832299f3d7082051" [label=""];
  "sha256:d051bc5df4e9094ebbe3c86223c1ef3ea82495eccd5a3a19832299f3d7082051" -> "sha256:2d6a4c9d1ff1871d7ca3c0da3b5802d5293d8b2be5d9e6440bb74422d1399c59" [label=""];
  "sha256:53af12d9ba2c15074606b3491f7b897dcedc188324d59ad2e4dd3c2960aeae0e" -> "sha256:2d6a4c9d1ff1871d7ca3c0da3b5802d5293d8b2be5d9e6440bb74422d1399c59" [label=""];
  "sha256:2d6a4c9d1ff1871d7ca3c0da3b5802d5293d8b2be5d9e6440bb74422d1399c59" -> "sha256:a3a5e4b20de3b112f757cbd88c4b847b137e0e720eacb2d0929068eb33aafcf7" [label=""];
}

