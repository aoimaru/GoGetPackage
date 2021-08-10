[app/sources/257434101.Dockerfile]
digraph {
  "sha256:a0083f7aa68131784481341978010e2bea73ff47f8ba9e2e8a099c120b80dc00" [label="local://context" shape="ellipse"];
  "sha256:39a94b2fe9be92ac88ff779b5ee82a0c970758078656a5ab9fa3c02c2106e383" [label="docker-image://docker.io/exasol/docker-db:6.0.2-d1" shape="ellipse"];
  "sha256:81ce4a298af1f0e16bbd3ca5a4e9b5927f9dcc41ee567c163ee7491e286d8b31" [label="copy{src=/virtualschema-jdbc-adapter-dist-0.0.1-SNAPSHOT.jar, dest=/}" shape="note"];
  "sha256:4b71e4f444b6a2471434fe98238faf8835b79d6895fc076c247803c3236dfaad" [label="copy{src=/entrypoint.sh, dest=/}" shape="note"];
  "sha256:f2a272771b4ac872e05b1ede3136befc5176ba374268fba945fb0314162e6616" [label="copy{src=/init.sh, dest=/}" shape="note"];
  "sha256:ad5e420fafe89a972dbbf554db37bb15366cbff9184b9bc385033abd6c533d1e" [label="/bin/bash -c chmod +x /virtualschema-jdbc-adapter-dist-0.0.1-SNAPSHOT.jar &&chmod +x entrypoint.sh &&chmod +x init.sh" shape="box"];
  "sha256:f5274b80cbe72ec87bd703e742043f7038fa9b7cf5ea22f28da629c307f4ee00" [label="sha256:f5274b80cbe72ec87bd703e742043f7038fa9b7cf5ea22f28da629c307f4ee00" shape="plaintext"];
  "sha256:39a94b2fe9be92ac88ff779b5ee82a0c970758078656a5ab9fa3c02c2106e383" -> "sha256:81ce4a298af1f0e16bbd3ca5a4e9b5927f9dcc41ee567c163ee7491e286d8b31" [label=""];
  "sha256:a0083f7aa68131784481341978010e2bea73ff47f8ba9e2e8a099c120b80dc00" -> "sha256:81ce4a298af1f0e16bbd3ca5a4e9b5927f9dcc41ee567c163ee7491e286d8b31" [label=""];
  "sha256:81ce4a298af1f0e16bbd3ca5a4e9b5927f9dcc41ee567c163ee7491e286d8b31" -> "sha256:4b71e4f444b6a2471434fe98238faf8835b79d6895fc076c247803c3236dfaad" [label=""];
  "sha256:a0083f7aa68131784481341978010e2bea73ff47f8ba9e2e8a099c120b80dc00" -> "sha256:4b71e4f444b6a2471434fe98238faf8835b79d6895fc076c247803c3236dfaad" [label=""];
  "sha256:4b71e4f444b6a2471434fe98238faf8835b79d6895fc076c247803c3236dfaad" -> "sha256:f2a272771b4ac872e05b1ede3136befc5176ba374268fba945fb0314162e6616" [label=""];
  "sha256:a0083f7aa68131784481341978010e2bea73ff47f8ba9e2e8a099c120b80dc00" -> "sha256:f2a272771b4ac872e05b1ede3136befc5176ba374268fba945fb0314162e6616" [label=""];
  "sha256:f2a272771b4ac872e05b1ede3136befc5176ba374268fba945fb0314162e6616" -> "sha256:ad5e420fafe89a972dbbf554db37bb15366cbff9184b9bc385033abd6c533d1e" [label=""];
  "sha256:ad5e420fafe89a972dbbf554db37bb15366cbff9184b9bc385033abd6c533d1e" -> "sha256:f5274b80cbe72ec87bd703e742043f7038fa9b7cf5ea22f28da629c307f4ee00" [label=""];
}

