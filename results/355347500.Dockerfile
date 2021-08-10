[app/sources/355347500.Dockerfile]
digraph {
  "sha256:7fb84430c88f86682e9709c988d4d099d331e47804a7ce6e3392e577ce4a0965" [label="docker-image://docker.io/neuralensemble/base:latest" shape="ellipse"];
  "sha256:b5055f55d6c21df683ce31014da6f31d46b660deefab1887ac614324731e8484" [label="/bin/sh -c $VENV/bin/pip install elephant" shape="box"];
  "sha256:0cdf8e038624c203cdf0cca67edd753385a1c36d9207b30b42e7fef1c56ea822" [label="mkdir{path=/home/docker}" shape="note"];
  "sha256:9d80b1067fecef372862c4ca0e4d444ee38688054cd49583078d66a3b4eed8ef" [label="sha256:9d80b1067fecef372862c4ca0e4d444ee38688054cd49583078d66a3b4eed8ef" shape="plaintext"];
  "sha256:7fb84430c88f86682e9709c988d4d099d331e47804a7ce6e3392e577ce4a0965" -> "sha256:b5055f55d6c21df683ce31014da6f31d46b660deefab1887ac614324731e8484" [label=""];
  "sha256:b5055f55d6c21df683ce31014da6f31d46b660deefab1887ac614324731e8484" -> "sha256:0cdf8e038624c203cdf0cca67edd753385a1c36d9207b30b42e7fef1c56ea822" [label=""];
  "sha256:0cdf8e038624c203cdf0cca67edd753385a1c36d9207b30b42e7fef1c56ea822" -> "sha256:9d80b1067fecef372862c4ca0e4d444ee38688054cd49583078d66a3b4eed8ef" [label=""];
}

