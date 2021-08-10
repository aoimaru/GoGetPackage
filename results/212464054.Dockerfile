[app/sources/212464054.Dockerfile]
digraph {
  "sha256:07c7ab6b0feaae8d7b19505eaa124f1cbc7cf52ddb48bfa1bae346d678575594" [label="docker-image://docker.io/library/node:slim" shape="ellipse"];
  "sha256:566392aad102ac3a0a940588e2a7a94845c77a417f53463a2a550031e7e97864" [label="/bin/sh -c apt-get update && apt-get install -y unzip --no-install-recommends" shape="box"];
  "sha256:850fbb3d3188749273c8a03449b2205e41af0f0e30f2e0733958d7528a03255b" [label="/bin/sh -c wget https://github.com/quantumfoam/DVNA/archive/master.zip; unzip master.zip; rm master.zip" shape="box"];
  "sha256:1be887002bdb04002282c31afc8d803c46023ef37b6df891614db8fb72f0b784" [label="mkdir{path=/DVNA-master}" shape="note"];
  "sha256:8f81327f8849298efcd6ed9f5c6be48406c9ba941a7ff5a1c67e2750d82840de" [label="/bin/sh -c npm install -g pm2" shape="box"];
  "sha256:744fcb5f504711a54bd50a3b7f693acb756695d6a5aa63d2b1d54938aa5cf9ee" [label="/bin/sh -c npm set progress=false" shape="box"];
  "sha256:096ee01229a05277c4b1d4ce307a026816f0b8ab004763a5820427a0039f4d93" [label="/bin/sh -c npm install" shape="box"];
  "sha256:5af83b87c823c1c309f900156a5b787b9d09d06506090ab0dff571c7e8c49305" [label="sha256:5af83b87c823c1c309f900156a5b787b9d09d06506090ab0dff571c7e8c49305" shape="plaintext"];
  "sha256:07c7ab6b0feaae8d7b19505eaa124f1cbc7cf52ddb48bfa1bae346d678575594" -> "sha256:566392aad102ac3a0a940588e2a7a94845c77a417f53463a2a550031e7e97864" [label=""];
  "sha256:566392aad102ac3a0a940588e2a7a94845c77a417f53463a2a550031e7e97864" -> "sha256:850fbb3d3188749273c8a03449b2205e41af0f0e30f2e0733958d7528a03255b" [label=""];
  "sha256:850fbb3d3188749273c8a03449b2205e41af0f0e30f2e0733958d7528a03255b" -> "sha256:1be887002bdb04002282c31afc8d803c46023ef37b6df891614db8fb72f0b784" [label=""];
  "sha256:1be887002bdb04002282c31afc8d803c46023ef37b6df891614db8fb72f0b784" -> "sha256:8f81327f8849298efcd6ed9f5c6be48406c9ba941a7ff5a1c67e2750d82840de" [label=""];
  "sha256:8f81327f8849298efcd6ed9f5c6be48406c9ba941a7ff5a1c67e2750d82840de" -> "sha256:744fcb5f504711a54bd50a3b7f693acb756695d6a5aa63d2b1d54938aa5cf9ee" [label=""];
  "sha256:744fcb5f504711a54bd50a3b7f693acb756695d6a5aa63d2b1d54938aa5cf9ee" -> "sha256:096ee01229a05277c4b1d4ce307a026816f0b8ab004763a5820427a0039f4d93" [label=""];
  "sha256:096ee01229a05277c4b1d4ce307a026816f0b8ab004763a5820427a0039f4d93" -> "sha256:5af83b87c823c1c309f900156a5b787b9d09d06506090ab0dff571c7e8c49305" [label=""];
}

