[app/sources/222586366.Dockerfile]
digraph {
  "sha256:356f35d04ecb39afbcba8dbde040e7f57547e79302c912b310d299c60e79f685" [label="local://context" shape="ellipse"];
  "sha256:59913e9146b59fe7f92ef29d3fb996d49dbfed4143771c5522b11a12e90cf77c" [label="docker-image://quay.io/enmasse/java-base:11-1@sha256:50fa3478d11d0ab5aef0f44ab00813d738dff445f402c76be9ca0ebb174ecc89" shape="ellipse"];
  "sha256:ba6eaec0930b84155ebb88edf3ea9c3d11822178a8ba0e4faabc0886a2824f4a" [label="copy{src=/target/iot-mqtt-adapter-.jar, dest=/iot-mqtt-adapter.jar}" shape="note"];
  "sha256:133d370f54efe760519c08dbafa0bf3dc676ae8454e4b56a9c9170c1d0753cbf" [label="sha256:133d370f54efe760519c08dbafa0bf3dc676ae8454e4b56a9c9170c1d0753cbf" shape="plaintext"];
  "sha256:59913e9146b59fe7f92ef29d3fb996d49dbfed4143771c5522b11a12e90cf77c" -> "sha256:ba6eaec0930b84155ebb88edf3ea9c3d11822178a8ba0e4faabc0886a2824f4a" [label=""];
  "sha256:356f35d04ecb39afbcba8dbde040e7f57547e79302c912b310d299c60e79f685" -> "sha256:ba6eaec0930b84155ebb88edf3ea9c3d11822178a8ba0e4faabc0886a2824f4a" [label=""];
  "sha256:ba6eaec0930b84155ebb88edf3ea9c3d11822178a8ba0e4faabc0886a2824f4a" -> "sha256:133d370f54efe760519c08dbafa0bf3dc676ae8454e4b56a9c9170c1d0753cbf" [label=""];
}

