[app/sources/309389517.Dockerfile]
digraph {
  "sha256:87fecff564ab2472b9d9d9b7bed7c6909040be32a030d7428a91072a15192aa5" [label="docker-image://docker.io/netdata/netdata:latest" shape="ellipse"];
  "sha256:1512350e04b67cca338d657a0d67043304e3de2ebef7c98ec4fe6cf2dddc367d" [label="local://context" shape="ellipse"];
  "sha256:11be812dbadd500858e283840667130ab03a98cad03ad4380abbf099c4df9341" [label="copy{src=/mocks/conf.d, dest=/usr/lib/netdata/conf.d}" shape="note"];
  "sha256:84e0d76a916a2a3cdcd616c815ba83581e08f4f5ed6068d3816af23f45c008d8" [label="docker-image://docker.io/library/golang:1.12" shape="ellipse"];
  "sha256:173263034803f7f9869105be690a16be230f0165f50bc5a6be70c928e32f0f1d" [label="/bin/sh -c mkdir -p /workspace" shape="box"];
  "sha256:3d8930d19a6ee203c3bed4c93fb9abc7e04107fd2eea10b2e88b9227578d5f69" [label="mkdir{path=/workspace}" shape="note"];
  "sha256:ea68f5d073bc51f174f975c79ded237f947b9e06aa6ccdb133563fa0e4b27986" [label="copy{src=/go.mod, dest=/workspace/},copy{src=/go.sum, dest=/workspace/}" shape="note"];
  "sha256:320384eee2b8c78f260813c3d0eddf20a20fce0a7f5990c68dd1d2bd0ded5c89" [label="/bin/sh -c go mod download" shape="box"];
  "sha256:8f17d8da204fed7bddb61f9e344cde9b43729308ed338b01b3f3feb64716ceb7" [label="copy{src=/, dest=/workspace/}" shape="note"];
  "sha256:633fa729df9e1a5821d2fa8b74fa67f9dc2e269e812f0412987aec8ea15d08d2" [label="/bin/sh -c go build -o go.d.plugin github.com/netdata/go.d.plugin/cmd/godplugin" shape="box"];
  "sha256:f8a08c3e1751d7391f137a9cc85505720071f245e070e8cae87240c98fa506a2" [label="copy{src=/workspace/go.d.plugin, dest=/usr/libexec/netdata/plugins.d/go.d.plugin}" shape="note"];
  "sha256:269731d1c588a7cf15aa828a6a68df536d82caf54959afd8cb830105228196b4" [label="sha256:269731d1c588a7cf15aa828a6a68df536d82caf54959afd8cb830105228196b4" shape="plaintext"];
  "sha256:87fecff564ab2472b9d9d9b7bed7c6909040be32a030d7428a91072a15192aa5" -> "sha256:11be812dbadd500858e283840667130ab03a98cad03ad4380abbf099c4df9341" [label=""];
  "sha256:1512350e04b67cca338d657a0d67043304e3de2ebef7c98ec4fe6cf2dddc367d" -> "sha256:11be812dbadd500858e283840667130ab03a98cad03ad4380abbf099c4df9341" [label=""];
  "sha256:84e0d76a916a2a3cdcd616c815ba83581e08f4f5ed6068d3816af23f45c008d8" -> "sha256:173263034803f7f9869105be690a16be230f0165f50bc5a6be70c928e32f0f1d" [label=""];
  "sha256:173263034803f7f9869105be690a16be230f0165f50bc5a6be70c928e32f0f1d" -> "sha256:3d8930d19a6ee203c3bed4c93fb9abc7e04107fd2eea10b2e88b9227578d5f69" [label=""];
  "sha256:3d8930d19a6ee203c3bed4c93fb9abc7e04107fd2eea10b2e88b9227578d5f69" -> "sha256:ea68f5d073bc51f174f975c79ded237f947b9e06aa6ccdb133563fa0e4b27986" [label=""];
  "sha256:1512350e04b67cca338d657a0d67043304e3de2ebef7c98ec4fe6cf2dddc367d" -> "sha256:ea68f5d073bc51f174f975c79ded237f947b9e06aa6ccdb133563fa0e4b27986" [label=""];
  "sha256:ea68f5d073bc51f174f975c79ded237f947b9e06aa6ccdb133563fa0e4b27986" -> "sha256:320384eee2b8c78f260813c3d0eddf20a20fce0a7f5990c68dd1d2bd0ded5c89" [label=""];
  "sha256:320384eee2b8c78f260813c3d0eddf20a20fce0a7f5990c68dd1d2bd0ded5c89" -> "sha256:8f17d8da204fed7bddb61f9e344cde9b43729308ed338b01b3f3feb64716ceb7" [label=""];
  "sha256:1512350e04b67cca338d657a0d67043304e3de2ebef7c98ec4fe6cf2dddc367d" -> "sha256:8f17d8da204fed7bddb61f9e344cde9b43729308ed338b01b3f3feb64716ceb7" [label=""];
  "sha256:8f17d8da204fed7bddb61f9e344cde9b43729308ed338b01b3f3feb64716ceb7" -> "sha256:633fa729df9e1a5821d2fa8b74fa67f9dc2e269e812f0412987aec8ea15d08d2" [label=""];
  "sha256:11be812dbadd500858e283840667130ab03a98cad03ad4380abbf099c4df9341" -> "sha256:f8a08c3e1751d7391f137a9cc85505720071f245e070e8cae87240c98fa506a2" [label=""];
  "sha256:633fa729df9e1a5821d2fa8b74fa67f9dc2e269e812f0412987aec8ea15d08d2" -> "sha256:f8a08c3e1751d7391f137a9cc85505720071f245e070e8cae87240c98fa506a2" [label=""];
  "sha256:f8a08c3e1751d7391f137a9cc85505720071f245e070e8cae87240c98fa506a2" -> "sha256:269731d1c588a7cf15aa828a6a68df536d82caf54959afd8cb830105228196b4" [label=""];
}

