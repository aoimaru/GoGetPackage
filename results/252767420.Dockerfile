[app/sources/252767420.Dockerfile]
digraph {
  "sha256:5045d46e15358f34ea7fff145af304a1fa3a317561e9c609f4ae17c0bd3359df" [label="docker-image://docker.io/library/node:latest" shape="ellipse"];
  "sha256:082825495142a129feedcb742d92839042455892f685a22ed16cfb33c545b68f" [label="local://context" shape="ellipse"];
  "sha256:f539463948215af75a24579028d0bf267fafab7858a07e82394244e2b7f4aa73" [label="copy{src=/, dest=/app}" shape="note"];
  "sha256:51c298d3bd4aebd1e847610359c39fafebacaaa49090db0addd089c3d18efd6d" [label="mkdir{path=/app}" shape="note"];
  "sha256:76ac016cee3d1e0fb34f5e38cd0e571ad477c25e3d459e42bdb788d29db8e09f" [label="/bin/sh -c chmod u+x run.sh" shape="box"];
  "sha256:c348bbc4fa90019caca40d70571882b91f692da0a4ff33a4055f1d5555316977" [label="/bin/sh -c npm install" shape="box"];
  "sha256:1c48c56efd6013223abaf46cb918cf3cc3db7c84efc4473b089a0e123e9530ad" [label="sha256:1c48c56efd6013223abaf46cb918cf3cc3db7c84efc4473b089a0e123e9530ad" shape="plaintext"];
  "sha256:5045d46e15358f34ea7fff145af304a1fa3a317561e9c609f4ae17c0bd3359df" -> "sha256:f539463948215af75a24579028d0bf267fafab7858a07e82394244e2b7f4aa73" [label=""];
  "sha256:082825495142a129feedcb742d92839042455892f685a22ed16cfb33c545b68f" -> "sha256:f539463948215af75a24579028d0bf267fafab7858a07e82394244e2b7f4aa73" [label=""];
  "sha256:f539463948215af75a24579028d0bf267fafab7858a07e82394244e2b7f4aa73" -> "sha256:51c298d3bd4aebd1e847610359c39fafebacaaa49090db0addd089c3d18efd6d" [label=""];
  "sha256:51c298d3bd4aebd1e847610359c39fafebacaaa49090db0addd089c3d18efd6d" -> "sha256:76ac016cee3d1e0fb34f5e38cd0e571ad477c25e3d459e42bdb788d29db8e09f" [label=""];
  "sha256:76ac016cee3d1e0fb34f5e38cd0e571ad477c25e3d459e42bdb788d29db8e09f" -> "sha256:c348bbc4fa90019caca40d70571882b91f692da0a4ff33a4055f1d5555316977" [label=""];
  "sha256:c348bbc4fa90019caca40d70571882b91f692da0a4ff33a4055f1d5555316977" -> "sha256:1c48c56efd6013223abaf46cb918cf3cc3db7c84efc4473b089a0e123e9530ad" [label=""];
}

