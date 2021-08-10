[app/sources/345355951.Dockerfile]
digraph {
  "sha256:e08a39283b8845f20a2b56a1fafada7bd6342338d404c22fd94c507903e94d0e" [label="docker-image://docker.io/balenalib/aarch64-debian:jessie-build" shape="ellipse"];
  "sha256:5ff04b76757a2c242f47613a57b2c0ffcb6a11547a0a2d365a13a309efa6a797" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\tless \t\tkmod \t\tnano \t\tnet-tools \t\tifupdown \t\tiputils-ping \t\ti2c-tools \t\tusbutils \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:e6309b63a5c3a0f8ba3bf21a3bd61789ad41fb375787fbe1b7fa98a5f0598e74" [label="sha256:e6309b63a5c3a0f8ba3bf21a3bd61789ad41fb375787fbe1b7fa98a5f0598e74" shape="plaintext"];
  "sha256:e08a39283b8845f20a2b56a1fafada7bd6342338d404c22fd94c507903e94d0e" -> "sha256:5ff04b76757a2c242f47613a57b2c0ffcb6a11547a0a2d365a13a309efa6a797" [label=""];
  "sha256:5ff04b76757a2c242f47613a57b2c0ffcb6a11547a0a2d365a13a309efa6a797" -> "sha256:e6309b63a5c3a0f8ba3bf21a3bd61789ad41fb375787fbe1b7fa98a5f0598e74" [label=""];
}

