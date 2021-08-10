[app/sources/323810907.Dockerfile]
digraph {
  "sha256:a7ca8f8e11e055b733d555848a1993dab075834b0e2364eb93ed278a2ff6d73a" [label="docker-image://docker.io/jfloff/alscipy:3@sha256:c0bd386dcbadea98b8343175709890380e101c1d12e33ddecde40e596509831a" shape="ellipse"];
  "sha256:b8850f9d20a1dc7901bab7546901665089bc40098e9f82352a2af8ffe0c7eee9" [label="/bin/sh -c apk add jpeg-dev zlib-dev freetype-dev lcms2-dev openjpeg-dev tiff-dev tk-dev tcl-dev" shape="box"];
  "sha256:936fff5528e1661c858da0529315119e611eadbf4e4e54fc836ea729c94f1454" [label="local://context" shape="ellipse"];
  "sha256:9620cf92b746459a3cef2ec89070ad5b5eba72d268e0c6f58f31e6a2aceb122a" [label="copy{src=/requirements.txt, dest=/requirements.txt}" shape="note"];
  "sha256:98a098b1c93ce0605681f341cded1ddbf1d10d4747dd513998a0199a75572a66" [label="/bin/sh -c pip install --upgrade pip && pip install -r /requirements.txt" shape="box"];
  "sha256:c6b1560683e82b89b65f95cc1b7f866c49863353c39369f5328ee4bbc495569d" [label="/bin/sh -c python -m nltk.downloader wordnet punkt averaged_perceptron_tagger" shape="box"];
  "sha256:1e2e2b54d0d9f9b9fec554d01dd3d308b33b7512e0844539972548ab03411cd4" [label="copy{src=/, dest=/app}" shape="note"];
  "sha256:2be2e70db966d499afe33b99e88fddeb8b9202971ebf5eb10c25d90ccfcda401" [label="mkdir{path=/app}" shape="note"];
  "sha256:fb204269e428f66752ca670aac77286fc1c6cdb0bb329b78074f81e1f7004741" [label="sha256:fb204269e428f66752ca670aac77286fc1c6cdb0bb329b78074f81e1f7004741" shape="plaintext"];
  "sha256:a7ca8f8e11e055b733d555848a1993dab075834b0e2364eb93ed278a2ff6d73a" -> "sha256:b8850f9d20a1dc7901bab7546901665089bc40098e9f82352a2af8ffe0c7eee9" [label=""];
  "sha256:b8850f9d20a1dc7901bab7546901665089bc40098e9f82352a2af8ffe0c7eee9" -> "sha256:9620cf92b746459a3cef2ec89070ad5b5eba72d268e0c6f58f31e6a2aceb122a" [label=""];
  "sha256:936fff5528e1661c858da0529315119e611eadbf4e4e54fc836ea729c94f1454" -> "sha256:9620cf92b746459a3cef2ec89070ad5b5eba72d268e0c6f58f31e6a2aceb122a" [label=""];
  "sha256:9620cf92b746459a3cef2ec89070ad5b5eba72d268e0c6f58f31e6a2aceb122a" -> "sha256:98a098b1c93ce0605681f341cded1ddbf1d10d4747dd513998a0199a75572a66" [label=""];
  "sha256:98a098b1c93ce0605681f341cded1ddbf1d10d4747dd513998a0199a75572a66" -> "sha256:c6b1560683e82b89b65f95cc1b7f866c49863353c39369f5328ee4bbc495569d" [label=""];
  "sha256:c6b1560683e82b89b65f95cc1b7f866c49863353c39369f5328ee4bbc495569d" -> "sha256:1e2e2b54d0d9f9b9fec554d01dd3d308b33b7512e0844539972548ab03411cd4" [label=""];
  "sha256:936fff5528e1661c858da0529315119e611eadbf4e4e54fc836ea729c94f1454" -> "sha256:1e2e2b54d0d9f9b9fec554d01dd3d308b33b7512e0844539972548ab03411cd4" [label=""];
  "sha256:1e2e2b54d0d9f9b9fec554d01dd3d308b33b7512e0844539972548ab03411cd4" -> "sha256:2be2e70db966d499afe33b99e88fddeb8b9202971ebf5eb10c25d90ccfcda401" [label=""];
  "sha256:2be2e70db966d499afe33b99e88fddeb8b9202971ebf5eb10c25d90ccfcda401" -> "sha256:fb204269e428f66752ca670aac77286fc1c6cdb0bb329b78074f81e1f7004741" [label=""];
}

