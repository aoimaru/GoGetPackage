[app/sources/335197425.Dockerfile]
digraph {
  "sha256:d76fe6483e42d080b91e50b729a783cb288d0b7480e449181aea8939c2261fd1" [label="docker-image://docker.io/jupyter/scipy-notebook:latest" shape="ellipse"];
  "sha256:c7f39d6ae213201136ead8ef81f71dcf9d805e1f6f7f46b104f330d2a87c9207" [label="/bin/sh -c conda install --quiet --yes 'tensorflow=1.0*'" shape="box"];
  "sha256:74c4c3e647babe66e24e23e3872bff84e945cfd63fdd11f827b9fa6006c655be" [label="/bin/sh -c pip install tflearn==0.3.2" shape="box"];
  "sha256:ec6f2046100a67e7fcbf7212ac0551bb1f77610ea5cb006d620b243d93585437" [label="/bin/sh -c pip install keras==2.0.8" shape="box"];
  "sha256:897742a92ad01a173cefb669ebb6e55405a89e93ec64efa6767e511c694730a9" [label="/bin/sh -c pip install nltk==3.2.4" shape="box"];
  "sha256:28d5a2f5d8eaf5f7e8762c8f5900819985aaf7408724b0fb082c684dc9f090c0" [label="/bin/sh -c pip install gensim==2.3.0" shape="box"];
  "sha256:503fd30a6d2897272bedcd7cf1888c56acf776c2222e6acc580b64c5a80ca6fd" [label="/bin/sh -c pip install gym==0.9.4" shape="box"];
  "sha256:359e9b801a3e589c8909f4d4d1966c4f666edd88245a937aac56d5b6232fa98d" [label="sha256:359e9b801a3e589c8909f4d4d1966c4f666edd88245a937aac56d5b6232fa98d" shape="plaintext"];
  "sha256:d76fe6483e42d080b91e50b729a783cb288d0b7480e449181aea8939c2261fd1" -> "sha256:c7f39d6ae213201136ead8ef81f71dcf9d805e1f6f7f46b104f330d2a87c9207" [label=""];
  "sha256:c7f39d6ae213201136ead8ef81f71dcf9d805e1f6f7f46b104f330d2a87c9207" -> "sha256:74c4c3e647babe66e24e23e3872bff84e945cfd63fdd11f827b9fa6006c655be" [label=""];
  "sha256:74c4c3e647babe66e24e23e3872bff84e945cfd63fdd11f827b9fa6006c655be" -> "sha256:ec6f2046100a67e7fcbf7212ac0551bb1f77610ea5cb006d620b243d93585437" [label=""];
  "sha256:ec6f2046100a67e7fcbf7212ac0551bb1f77610ea5cb006d620b243d93585437" -> "sha256:897742a92ad01a173cefb669ebb6e55405a89e93ec64efa6767e511c694730a9" [label=""];
  "sha256:897742a92ad01a173cefb669ebb6e55405a89e93ec64efa6767e511c694730a9" -> "sha256:28d5a2f5d8eaf5f7e8762c8f5900819985aaf7408724b0fb082c684dc9f090c0" [label=""];
  "sha256:28d5a2f5d8eaf5f7e8762c8f5900819985aaf7408724b0fb082c684dc9f090c0" -> "sha256:503fd30a6d2897272bedcd7cf1888c56acf776c2222e6acc580b64c5a80ca6fd" [label=""];
  "sha256:503fd30a6d2897272bedcd7cf1888c56acf776c2222e6acc580b64c5a80ca6fd" -> "sha256:359e9b801a3e589c8909f4d4d1966c4f666edd88245a937aac56d5b6232fa98d" [label=""];
}

