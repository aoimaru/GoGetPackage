[app/sources/189111472.Dockerfile]
digraph {
  "sha256:aa32123eeb97d9efcf2458af3caece595d1786d21e6e9497029bb63acb702423" [label="docker-image://docker.io/rounds/10m-elastic-search:latest" shape="ellipse"];
  "sha256:9b9a6f6b7fd83760ecd40241dd7e0d74d1af3b310adfc91460b2a0080156ebc4" [label="/bin/sh -c /usr/share/elasticsearch/bin/plugin --install royrusso/elasticsearch-HQ &&   /usr/share/elasticsearch/bin/plugin --install mobz/elasticsearch-head &&   /usr/share/elasticsearch/bin/plugin --install lmenezes/elasticsearch-kopf &&   /usr/share/elasticsearch/bin/plugin --url https://github.com/NLPchina/elasticsearch-sql/releases/download/1.3.5/elasticsearch-sql-1.3.5.zip --install sql &&   /usr/share/elasticsearch/bin/plugin --install elasticsearch/elasticsearch-cloud-gce/2.5.0" shape="box"];
  "sha256:f73b44f3880762bd4cbf91e8dc73b2f59afdb2ca27d187ab68dfd95260857616" [label="sha256:f73b44f3880762bd4cbf91e8dc73b2f59afdb2ca27d187ab68dfd95260857616" shape="plaintext"];
  "sha256:aa32123eeb97d9efcf2458af3caece595d1786d21e6e9497029bb63acb702423" -> "sha256:9b9a6f6b7fd83760ecd40241dd7e0d74d1af3b310adfc91460b2a0080156ebc4" [label=""];
  "sha256:9b9a6f6b7fd83760ecd40241dd7e0d74d1af3b310adfc91460b2a0080156ebc4" -> "sha256:f73b44f3880762bd4cbf91e8dc73b2f59afdb2ca27d187ab68dfd95260857616" [label=""];
}

