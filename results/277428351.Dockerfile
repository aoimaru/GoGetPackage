[app/sources/277428351.Dockerfile]
digraph {
  "sha256:f85bd2d040d462fff5277f1c991de0ccb9234970dff6151d027b65bffa030045" [label="docker-image://docker.io/ibmcom/icp-inception:2.1.0@sha256:eceb8e587b9f4fd75680672a26daa96fd5283df36ec08da197d1e393fa26cbcc" shape="ellipse"];
  "sha256:9edb0038c82972740d52baf4265e28b600e4eeeafc03eab9bf5648b73465b575" [label="/bin/sh -c apk add --update python python-dev py-pip &&     pip install softlayer" shape="box"];
  "sha256:22c9d2994532b9a33e7309cb7b4594c9bf7f8de9d69789601fdfe3bdbea7e799" [label="sha256:22c9d2994532b9a33e7309cb7b4594c9bf7f8de9d69789601fdfe3bdbea7e799" shape="plaintext"];
  "sha256:f85bd2d040d462fff5277f1c991de0ccb9234970dff6151d027b65bffa030045" -> "sha256:9edb0038c82972740d52baf4265e28b600e4eeeafc03eab9bf5648b73465b575" [label=""];
  "sha256:9edb0038c82972740d52baf4265e28b600e4eeeafc03eab9bf5648b73465b575" -> "sha256:22c9d2994532b9a33e7309cb7b4594c9bf7f8de9d69789601fdfe3bdbea7e799" [label=""];
}

