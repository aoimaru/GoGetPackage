[app/sources/252773564.Dockerfile]
digraph {
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:32e08e522b5db5685aa675fa79a9a2a2e388a931c207f792f58bd567fd4304b9" [label="/bin/sh -c apt-get update && apt-get install -y wget && apt-get install -y unzip" shape="box"];
  "sha256:eff5b303441f8dd3b26ea0ed4b2801920138f9491a2b84928fe13bbf60157432" [label="/bin/sh -c wget https://github.com/obfuscurity/synthesize/archive/master.zip && unzip master.zip && cd synthesize-master && ./install" shape="box"];
  "sha256:3dde3cf40b48d5a179171e61f3ba1eb319749a177fa57915e085b7f6e0e09591" [label="sha256:3dde3cf40b48d5a179171e61f3ba1eb319749a177fa57915e085b7f6e0e09591" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:32e08e522b5db5685aa675fa79a9a2a2e388a931c207f792f58bd567fd4304b9" [label=""];
  "sha256:32e08e522b5db5685aa675fa79a9a2a2e388a931c207f792f58bd567fd4304b9" -> "sha256:eff5b303441f8dd3b26ea0ed4b2801920138f9491a2b84928fe13bbf60157432" [label=""];
  "sha256:eff5b303441f8dd3b26ea0ed4b2801920138f9491a2b84928fe13bbf60157432" -> "sha256:3dde3cf40b48d5a179171e61f3ba1eb319749a177fa57915e085b7f6e0e09591" [label=""];
}

