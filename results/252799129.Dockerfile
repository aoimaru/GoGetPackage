[app/sources/252799129.Dockerfile]
digraph {
  "sha256:e73054f64b4b587de2d01fdf063a66d1d3f57fc3d4a064c4c99e38f248890282" [label="docker-image://docker.io/library/debian:8.0" shape="ellipse"];
  "sha256:ce68ca07df4aa6122b86f6e2036751353a3cb5fd0a14cbf7f2024463c7916cbf" [label="/bin/sh -c apt-get update && apt-get install -y patch mono-devel mono-runtime fsharp && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*" shape="box"];
  "sha256:df2f17153f41fc0739f51a84e82d3d2b78f927c9616c95ce842a3873e2ca5d24" [label="sha256:df2f17153f41fc0739f51a84e82d3d2b78f927c9616c95ce842a3873e2ca5d24" shape="plaintext"];
  "sha256:e73054f64b4b587de2d01fdf063a66d1d3f57fc3d4a064c4c99e38f248890282" -> "sha256:ce68ca07df4aa6122b86f6e2036751353a3cb5fd0a14cbf7f2024463c7916cbf" [label=""];
  "sha256:ce68ca07df4aa6122b86f6e2036751353a3cb5fd0a14cbf7f2024463c7916cbf" -> "sha256:df2f17153f41fc0739f51a84e82d3d2b78f927c9616c95ce842a3873e2ca5d24" [label=""];
}

