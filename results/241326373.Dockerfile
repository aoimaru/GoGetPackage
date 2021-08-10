[app/sources/241326373.Dockerfile]
digraph {
  "sha256:6f8532b90ab344aecf1346fb7621e511dd07e7c511787250786d7814016a5241" [label="docker-image://docker.io/library/centos:7.4.1708" shape="ellipse"];
  "sha256:0df6d0493cfafe94bb81bfa16e514d3f18060baccb1f9dfd76fd6a88dab9156d" [label="/bin/sh -c yum install -y sysstat" shape="box"];
  "sha256:ca387ad3eb5d8f7314e1e4b7a730aa20e9b5ca866781d54783cb9f0e242ae821" [label="mkdir{path=/work}" shape="note"];
  "sha256:a776dd322aa117fc267c9165605771ec88b0a28840d5ebc128bae7291cc348f5" [label="sha256:a776dd322aa117fc267c9165605771ec88b0a28840d5ebc128bae7291cc348f5" shape="plaintext"];
  "sha256:6f8532b90ab344aecf1346fb7621e511dd07e7c511787250786d7814016a5241" -> "sha256:0df6d0493cfafe94bb81bfa16e514d3f18060baccb1f9dfd76fd6a88dab9156d" [label=""];
  "sha256:0df6d0493cfafe94bb81bfa16e514d3f18060baccb1f9dfd76fd6a88dab9156d" -> "sha256:ca387ad3eb5d8f7314e1e4b7a730aa20e9b5ca866781d54783cb9f0e242ae821" [label=""];
  "sha256:ca387ad3eb5d8f7314e1e4b7a730aa20e9b5ca866781d54783cb9f0e242ae821" -> "sha256:a776dd322aa117fc267c9165605771ec88b0a28840d5ebc128bae7291cc348f5" [label=""];
}

