[app/sources/183614631.Dockerfile]
digraph {
  "sha256:914b81d4e28960784551741df21fdcbad160339e5cc88aedede39ffb4dc620c2" [label="docker-image://docker.io/library/ruby:2.4.2-onbuild" shape="ellipse"];
  "sha256:1f1b90631e44e64c9ae21b54f740b9c902ce2f43c72767b26475df041cefe8ab" [label="/bin/sh -c apt-get update && apt-get install -y     postgresql-client vim     --no-install-recommends     && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:5cf6ae8d7573cdf7d3ccfe0eca9f109f6f298a688929d8d307e5e852dc8adebf" [label="/bin/sh -c RAILS_ENV=production rake assets:precompile" shape="box"];
  "sha256:1b61da66cb1ae1d4c59f8648171a2918d7d9388cc30815bc48b7a7b3544374e8" [label="sha256:1b61da66cb1ae1d4c59f8648171a2918d7d9388cc30815bc48b7a7b3544374e8" shape="plaintext"];
  "sha256:914b81d4e28960784551741df21fdcbad160339e5cc88aedede39ffb4dc620c2" -> "sha256:1f1b90631e44e64c9ae21b54f740b9c902ce2f43c72767b26475df041cefe8ab" [label=""];
  "sha256:1f1b90631e44e64c9ae21b54f740b9c902ce2f43c72767b26475df041cefe8ab" -> "sha256:5cf6ae8d7573cdf7d3ccfe0eca9f109f6f298a688929d8d307e5e852dc8adebf" [label=""];
  "sha256:5cf6ae8d7573cdf7d3ccfe0eca9f109f6f298a688929d8d307e5e852dc8adebf" -> "sha256:1b61da66cb1ae1d4c59f8648171a2918d7d9388cc30815bc48b7a7b3544374e8" [label=""];
}

