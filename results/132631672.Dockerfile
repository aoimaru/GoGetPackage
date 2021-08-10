[app/sources/132631672.Dockerfile]
digraph {
  "sha256:3769059b85eaaadfe3468d7cd0e9ca9dfa12dff5cb8dd18c8dfecb8aa6424e80" [label="docker-image://docker.io/library/java:8@sha256:c1ff613e8ba25833d2e1940da0940c3824f03f802c449f3d1815a66b7f8c0e9d" shape="ellipse"];
  "sha256:b6a62bfcf19eaed520670b87dd74181dc66b5719354293af1c12bdd5895f1bc3" [label="/bin/sh -c mkdir /bootstack" shape="box"];
  "sha256:e05dc721b823ffeda7d2cacd63a39222d668f6e8933bb21f4e7e6a9a1dd395ef" [label="local://context" shape="ellipse"];
  "sha256:c8d1b380eb01c35a51cd7ebb89784e448a966e0d26ec758a62b4424c6620e481" [label="copy{src=/bootstack-core.jar, dest=/bootstack/bootstack-web.jar}" shape="note"];
  "sha256:ac57fd790926fa09ff97cca1e2630c2e8de1f9ec238a233ff4a931d8b483e41e" [label="/bin/sh -c sh -c 'touch /bootstack-web.jar'" shape="box"];
  "sha256:13d80738ed1eb6d4f31e7512094fd7276cfbf05e551efcce32af82fc6533fc89" [label="sha256:13d80738ed1eb6d4f31e7512094fd7276cfbf05e551efcce32af82fc6533fc89" shape="plaintext"];
  "sha256:3769059b85eaaadfe3468d7cd0e9ca9dfa12dff5cb8dd18c8dfecb8aa6424e80" -> "sha256:b6a62bfcf19eaed520670b87dd74181dc66b5719354293af1c12bdd5895f1bc3" [label=""];
  "sha256:b6a62bfcf19eaed520670b87dd74181dc66b5719354293af1c12bdd5895f1bc3" -> "sha256:c8d1b380eb01c35a51cd7ebb89784e448a966e0d26ec758a62b4424c6620e481" [label=""];
  "sha256:e05dc721b823ffeda7d2cacd63a39222d668f6e8933bb21f4e7e6a9a1dd395ef" -> "sha256:c8d1b380eb01c35a51cd7ebb89784e448a966e0d26ec758a62b4424c6620e481" [label=""];
  "sha256:c8d1b380eb01c35a51cd7ebb89784e448a966e0d26ec758a62b4424c6620e481" -> "sha256:ac57fd790926fa09ff97cca1e2630c2e8de1f9ec238a233ff4a931d8b483e41e" [label=""];
  "sha256:ac57fd790926fa09ff97cca1e2630c2e8de1f9ec238a233ff4a931d8b483e41e" -> "sha256:13d80738ed1eb6d4f31e7512094fd7276cfbf05e551efcce32af82fc6533fc89" [label=""];
}

