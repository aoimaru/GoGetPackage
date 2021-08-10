[app/sources/263759888.Dockerfile]
digraph {
  "sha256:7e6171c3855e1200b6d62f04e2397571e644e5c7a3eb044910b8b8f3013dd31c" [label="local://context" shape="ellipse"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:6eaa3870a231879cd7fcbec1e50e74e7b49b02475455df8f07b55618f49b04ca" [label="copy{src=/, dest=/go/src/github.com/docker/docker}" shape="note"];
  "sha256:edb06eddc203690bd7be371ca8aaa33068398ba11ff95f016bd68f5bc837dc71" [label="copy{src=/, dest=/}" shape="note"];
  "sha256:6e98df30ce59a528dbf06d1ee48e55e579013cb2b2c2451ba38c8a8adebea106" [label="copy{src=/null, dest=/}" shape="note"];
  "sha256:e29e3bc3f1f590f2f8c4b7312eca7aeced9b3b8ef3ee35df73176bcabef9e5c4" [label="copy{src=/nullfile, dest=/tmp}" shape="note"];
  "sha256:f55199a81366d68caba3c6c482320553bf0347cb73158c9b4a57a4887eaafec4" [label="copy{src=/vimrc, dest=/tmp}" shape="note"];
  "sha256:30370a806ea8a4d27b64bb91d7e52a29966be2f530eedb3d7950ebf2f3204af4" [label="copy{src=/bashrc, dest=/tmp}" shape="note"];
  "sha256:4b9f0a4cb29147fcc297868f835e3e4665d5c9e70ce00406575bf2a571713417" [label="copy{src=/test file, dest=/tmp}" shape="note"];
  "sha256:c1c61497fbd6a868ef0c5904efd69d9aa1e6122dec79788729dfd35f2407724d" [label="copy{src=/test file, dest=/tmp/test file}" shape="note"];
  "sha256:8872c7ad5ad80fa90ed1e99ebcd9ccaca194594476528d1cc4a41adcaea30161" [label="sha256:8872c7ad5ad80fa90ed1e99ebcd9ccaca194594476528d1cc4a41adcaea30161" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:6eaa3870a231879cd7fcbec1e50e74e7b49b02475455df8f07b55618f49b04ca" [label=""];
  "sha256:7e6171c3855e1200b6d62f04e2397571e644e5c7a3eb044910b8b8f3013dd31c" -> "sha256:6eaa3870a231879cd7fcbec1e50e74e7b49b02475455df8f07b55618f49b04ca" [label=""];
  "sha256:6eaa3870a231879cd7fcbec1e50e74e7b49b02475455df8f07b55618f49b04ca" -> "sha256:edb06eddc203690bd7be371ca8aaa33068398ba11ff95f016bd68f5bc837dc71" [label=""];
  "sha256:7e6171c3855e1200b6d62f04e2397571e644e5c7a3eb044910b8b8f3013dd31c" -> "sha256:edb06eddc203690bd7be371ca8aaa33068398ba11ff95f016bd68f5bc837dc71" [label=""];
  "sha256:edb06eddc203690bd7be371ca8aaa33068398ba11ff95f016bd68f5bc837dc71" -> "sha256:6e98df30ce59a528dbf06d1ee48e55e579013cb2b2c2451ba38c8a8adebea106" [label=""];
  "sha256:7e6171c3855e1200b6d62f04e2397571e644e5c7a3eb044910b8b8f3013dd31c" -> "sha256:6e98df30ce59a528dbf06d1ee48e55e579013cb2b2c2451ba38c8a8adebea106" [label=""];
  "sha256:6e98df30ce59a528dbf06d1ee48e55e579013cb2b2c2451ba38c8a8adebea106" -> "sha256:e29e3bc3f1f590f2f8c4b7312eca7aeced9b3b8ef3ee35df73176bcabef9e5c4" [label=""];
  "sha256:7e6171c3855e1200b6d62f04e2397571e644e5c7a3eb044910b8b8f3013dd31c" -> "sha256:e29e3bc3f1f590f2f8c4b7312eca7aeced9b3b8ef3ee35df73176bcabef9e5c4" [label=""];
  "sha256:e29e3bc3f1f590f2f8c4b7312eca7aeced9b3b8ef3ee35df73176bcabef9e5c4" -> "sha256:f55199a81366d68caba3c6c482320553bf0347cb73158c9b4a57a4887eaafec4" [label=""];
  "sha256:7e6171c3855e1200b6d62f04e2397571e644e5c7a3eb044910b8b8f3013dd31c" -> "sha256:f55199a81366d68caba3c6c482320553bf0347cb73158c9b4a57a4887eaafec4" [label=""];
  "sha256:f55199a81366d68caba3c6c482320553bf0347cb73158c9b4a57a4887eaafec4" -> "sha256:30370a806ea8a4d27b64bb91d7e52a29966be2f530eedb3d7950ebf2f3204af4" [label=""];
  "sha256:7e6171c3855e1200b6d62f04e2397571e644e5c7a3eb044910b8b8f3013dd31c" -> "sha256:30370a806ea8a4d27b64bb91d7e52a29966be2f530eedb3d7950ebf2f3204af4" [label=""];
  "sha256:30370a806ea8a4d27b64bb91d7e52a29966be2f530eedb3d7950ebf2f3204af4" -> "sha256:4b9f0a4cb29147fcc297868f835e3e4665d5c9e70ce00406575bf2a571713417" [label=""];
  "sha256:7e6171c3855e1200b6d62f04e2397571e644e5c7a3eb044910b8b8f3013dd31c" -> "sha256:4b9f0a4cb29147fcc297868f835e3e4665d5c9e70ce00406575bf2a571713417" [label=""];
  "sha256:4b9f0a4cb29147fcc297868f835e3e4665d5c9e70ce00406575bf2a571713417" -> "sha256:c1c61497fbd6a868ef0c5904efd69d9aa1e6122dec79788729dfd35f2407724d" [label=""];
  "sha256:7e6171c3855e1200b6d62f04e2397571e644e5c7a3eb044910b8b8f3013dd31c" -> "sha256:c1c61497fbd6a868ef0c5904efd69d9aa1e6122dec79788729dfd35f2407724d" [label=""];
  "sha256:c1c61497fbd6a868ef0c5904efd69d9aa1e6122dec79788729dfd35f2407724d" -> "sha256:8872c7ad5ad80fa90ed1e99ebcd9ccaca194594476528d1cc4a41adcaea30161" [label=""];
}

