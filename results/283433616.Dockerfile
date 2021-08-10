[app/sources/283433616.Dockerfile]
digraph {
  "sha256:f846dff773f0e7eeceb723b1c23d20e46ccd235bf9839f6af84ff0b91896c064" [label="local://context" shape="ellipse"];
  "sha256:299d34d2b3126ad928b79e943b82636836bc9a495c694f0fe851c96bbf1db1f4" [label="docker-image://docker.io/library/node:8" shape="ellipse"];
  "sha256:25e6b407415b498e7fc97bb6c6d53cdf633791b118e314c69cc052124332cf20" [label="/bin/sh -c mkdir /app" shape="box"];
  "sha256:707f90fb534eaf5e7b86d760e54fbab860e59fa845f290536605350f3f3b469d" [label="copy{src=/app/package.json, dest=/app/package.json}" shape="note"];
  "sha256:9cab0da2f9ef3b9d4ca3042f0bc9ceb856cb94094a2966e348ed36cba084c686" [label="/bin/sh -c cd /app && npm install" shape="box"];
  "sha256:21a1853b85a9afe808cf77aee0a2b63ffcf72e24490c9a1263daeb8ecbdfa18b" [label="/bin/sh -c npm -g install serve" shape="box"];
  "sha256:88f78b71940ee6744285a963ea7c8220bf46f19c68f9f3a3c2bf1498f33a977f" [label="copy{src=/app, dest=/app/}" shape="note"];
  "sha256:2afe22fb9353cd078ab578de5398d08b4b732b43a6f51e2b3e1aee6a445339f2" [label="/bin/sh -c cd /app && npm run build" shape="box"];
  "sha256:abf5feead63556a8dcbf8cdbdce49590eb92b9a0b99cac269343d60f8db629d4" [label="mkdir{path=/app}" shape="note"];
  "sha256:c490c9108bc3266ef0841e8e402c55baf6a307d0f0547dca28298018be50ba85" [label="sha256:c490c9108bc3266ef0841e8e402c55baf6a307d0f0547dca28298018be50ba85" shape="plaintext"];
  "sha256:299d34d2b3126ad928b79e943b82636836bc9a495c694f0fe851c96bbf1db1f4" -> "sha256:25e6b407415b498e7fc97bb6c6d53cdf633791b118e314c69cc052124332cf20" [label=""];
  "sha256:25e6b407415b498e7fc97bb6c6d53cdf633791b118e314c69cc052124332cf20" -> "sha256:707f90fb534eaf5e7b86d760e54fbab860e59fa845f290536605350f3f3b469d" [label=""];
  "sha256:f846dff773f0e7eeceb723b1c23d20e46ccd235bf9839f6af84ff0b91896c064" -> "sha256:707f90fb534eaf5e7b86d760e54fbab860e59fa845f290536605350f3f3b469d" [label=""];
  "sha256:707f90fb534eaf5e7b86d760e54fbab860e59fa845f290536605350f3f3b469d" -> "sha256:9cab0da2f9ef3b9d4ca3042f0bc9ceb856cb94094a2966e348ed36cba084c686" [label=""];
  "sha256:9cab0da2f9ef3b9d4ca3042f0bc9ceb856cb94094a2966e348ed36cba084c686" -> "sha256:21a1853b85a9afe808cf77aee0a2b63ffcf72e24490c9a1263daeb8ecbdfa18b" [label=""];
  "sha256:21a1853b85a9afe808cf77aee0a2b63ffcf72e24490c9a1263daeb8ecbdfa18b" -> "sha256:88f78b71940ee6744285a963ea7c8220bf46f19c68f9f3a3c2bf1498f33a977f" [label=""];
  "sha256:f846dff773f0e7eeceb723b1c23d20e46ccd235bf9839f6af84ff0b91896c064" -> "sha256:88f78b71940ee6744285a963ea7c8220bf46f19c68f9f3a3c2bf1498f33a977f" [label=""];
  "sha256:88f78b71940ee6744285a963ea7c8220bf46f19c68f9f3a3c2bf1498f33a977f" -> "sha256:2afe22fb9353cd078ab578de5398d08b4b732b43a6f51e2b3e1aee6a445339f2" [label=""];
  "sha256:2afe22fb9353cd078ab578de5398d08b4b732b43a6f51e2b3e1aee6a445339f2" -> "sha256:abf5feead63556a8dcbf8cdbdce49590eb92b9a0b99cac269343d60f8db629d4" [label=""];
  "sha256:abf5feead63556a8dcbf8cdbdce49590eb92b9a0b99cac269343d60f8db629d4" -> "sha256:c490c9108bc3266ef0841e8e402c55baf6a307d0f0547dca28298018be50ba85" [label=""];
}

