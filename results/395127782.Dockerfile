[app/sources/395127782.Dockerfile]
digraph {
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:5242dce516e4c7a8670b76dbdaf711c7f25dfeb6e14ccda5e359b9a92443ed6c" [label="/bin/sh -c apt update &&     apt install --yes git     python3     python3-pkg-resources     build-essential     zlib1g-dev" shape="box"];
  "sha256:2c772eedb4b9febde05269e051676a4e0c739f966362303ea8f3198333dff881" [label="mkdir{path=/usr/local}" shape="note"];
  "sha256:fdd51ab57b24ec4d38cab897f90e87b0538d219d8bcfd033f989acf680deca7d" [label="/bin/sh -c git clone https://github.com/lh3/minimap2" shape="box"];
  "sha256:5bf33c4a5436a5a472e79430f35b68c52fce5386e6a2133617bad1bc10ba7c4d" [label="mkdir{path=/usr/local/minimap2}" shape="note"];
  "sha256:dc1f4d39210d636808f53d1a29491fda69367cdf9185e9ec3f18e426472025c8" [label="/bin/sh -c pwd" shape="box"];
  "sha256:a81f695063d3ed5a1126a5483d8843d576c8cd2b426e330b7e962d4ea4f2d6bd" [label="/bin/sh -c git checkout v2.3" shape="box"];
  "sha256:2060c2c881c9196c476fdf55bba81f49f1ff3c3b94bfae08a706a58790e065d0" [label="/bin/sh -c make && chmod 755 minimap2" shape="box"];
  "sha256:974934bbd63d02db24a996e9481f79f40eaac72a8223c4183691efbb749d040d" [label="/bin/sh -c apt remove --purge --yes git build-essential &&     apt autoremove --purge --yes" shape="box"];
  "sha256:7604f8ee640250e39cf7eb92f4de2722bb8dac2dc13cd6138a5e9ff0202867bc" [label="sha256:7604f8ee640250e39cf7eb92f4de2722bb8dac2dc13cd6138a5e9ff0202867bc" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:5242dce516e4c7a8670b76dbdaf711c7f25dfeb6e14ccda5e359b9a92443ed6c" [label=""];
  "sha256:5242dce516e4c7a8670b76dbdaf711c7f25dfeb6e14ccda5e359b9a92443ed6c" -> "sha256:2c772eedb4b9febde05269e051676a4e0c739f966362303ea8f3198333dff881" [label=""];
  "sha256:2c772eedb4b9febde05269e051676a4e0c739f966362303ea8f3198333dff881" -> "sha256:fdd51ab57b24ec4d38cab897f90e87b0538d219d8bcfd033f989acf680deca7d" [label=""];
  "sha256:fdd51ab57b24ec4d38cab897f90e87b0538d219d8bcfd033f989acf680deca7d" -> "sha256:5bf33c4a5436a5a472e79430f35b68c52fce5386e6a2133617bad1bc10ba7c4d" [label=""];
  "sha256:5bf33c4a5436a5a472e79430f35b68c52fce5386e6a2133617bad1bc10ba7c4d" -> "sha256:dc1f4d39210d636808f53d1a29491fda69367cdf9185e9ec3f18e426472025c8" [label=""];
  "sha256:dc1f4d39210d636808f53d1a29491fda69367cdf9185e9ec3f18e426472025c8" -> "sha256:a81f695063d3ed5a1126a5483d8843d576c8cd2b426e330b7e962d4ea4f2d6bd" [label=""];
  "sha256:a81f695063d3ed5a1126a5483d8843d576c8cd2b426e330b7e962d4ea4f2d6bd" -> "sha256:2060c2c881c9196c476fdf55bba81f49f1ff3c3b94bfae08a706a58790e065d0" [label=""];
  "sha256:2060c2c881c9196c476fdf55bba81f49f1ff3c3b94bfae08a706a58790e065d0" -> "sha256:974934bbd63d02db24a996e9481f79f40eaac72a8223c4183691efbb749d040d" [label=""];
  "sha256:974934bbd63d02db24a996e9481f79f40eaac72a8223c4183691efbb749d040d" -> "sha256:7604f8ee640250e39cf7eb92f4de2722bb8dac2dc13cd6138a5e9ff0202867bc" [label=""];
}

