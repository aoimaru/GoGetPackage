[app/sources/237830783.Dockerfile]
digraph {
  "sha256:a1b2e1362452cae94cdb2318a00c5115c3b79a5bc509ffb4d2ee29735088fd1a" [label="docker-image://docker.io/library/tuscan_base_image:latest" shape="ellipse"];
  "sha256:1b8607a23ab689d86718997f411c3556a2c3e2ed4a981e220e2e185cb80df130" [label="local://context" shape="ellipse"];
  "sha256:c744d5ae6060273c42b135f2c1e744d26f169169e86b07b1fcdeddddc12a24d1" [label="copy{src=/main.py, dest=/build/main.py}" shape="note"];
  "sha256:ce1f27fb12b7575be3ac86b1eaaa01921e1216ac6d728ec9270ceb2dbfd58be7" [label="copy{src=/utilities.py, dest=/build/utilities.py}" shape="note"];
  "sha256:e94d8aaaa2ab06bbe171cda19778bd2b4194d1018e5d30ccbe79ce6c02771d39" [label="copy{src=/tool_wrapper.c, dest=/build/tool_wrapper.c}" shape="note"];
  "sha256:8f6afa9bd24066354e2681dab885a00da644a1b38ad6824498b849391665d1fa" [label="copy{src=/red-PKGBUILD, dest=/build/red-PKGBUILD}" shape="note"];
  "sha256:e0166be49d847d51a6a037c878da6eab4f2367f696f9746c00744289d867e6fd" [label="copy{src=/tool_redirect_rules.yaml, dest=/build/tool_redirect_rules.yaml}" shape="note"];
  "sha256:10caeec341cf954ce441bee05f74b7ee6464b2beafcec2907c5bbbabac551b2c" [label="copy{src=/setup.py, dest=/build/setup.py}" shape="note"];
  "sha256:6e0c27227e6735bc205867dd1b04ee606f2911c86887da1846b34b321c355012" [label="copy{src=/setup.sh, dest=/build/setup.sh}" shape="note"];
  "sha256:374e4a518e9e7fdd54d797f504212417adc7ca324cd785c4ecf517f7c3b98cce" [label="sha256:374e4a518e9e7fdd54d797f504212417adc7ca324cd785c4ecf517f7c3b98cce" shape="plaintext"];
  "sha256:a1b2e1362452cae94cdb2318a00c5115c3b79a5bc509ffb4d2ee29735088fd1a" -> "sha256:c744d5ae6060273c42b135f2c1e744d26f169169e86b07b1fcdeddddc12a24d1" [label=""];
  "sha256:1b8607a23ab689d86718997f411c3556a2c3e2ed4a981e220e2e185cb80df130" -> "sha256:c744d5ae6060273c42b135f2c1e744d26f169169e86b07b1fcdeddddc12a24d1" [label=""];
  "sha256:c744d5ae6060273c42b135f2c1e744d26f169169e86b07b1fcdeddddc12a24d1" -> "sha256:ce1f27fb12b7575be3ac86b1eaaa01921e1216ac6d728ec9270ceb2dbfd58be7" [label=""];
  "sha256:1b8607a23ab689d86718997f411c3556a2c3e2ed4a981e220e2e185cb80df130" -> "sha256:ce1f27fb12b7575be3ac86b1eaaa01921e1216ac6d728ec9270ceb2dbfd58be7" [label=""];
  "sha256:ce1f27fb12b7575be3ac86b1eaaa01921e1216ac6d728ec9270ceb2dbfd58be7" -> "sha256:e94d8aaaa2ab06bbe171cda19778bd2b4194d1018e5d30ccbe79ce6c02771d39" [label=""];
  "sha256:1b8607a23ab689d86718997f411c3556a2c3e2ed4a981e220e2e185cb80df130" -> "sha256:e94d8aaaa2ab06bbe171cda19778bd2b4194d1018e5d30ccbe79ce6c02771d39" [label=""];
  "sha256:e94d8aaaa2ab06bbe171cda19778bd2b4194d1018e5d30ccbe79ce6c02771d39" -> "sha256:8f6afa9bd24066354e2681dab885a00da644a1b38ad6824498b849391665d1fa" [label=""];
  "sha256:1b8607a23ab689d86718997f411c3556a2c3e2ed4a981e220e2e185cb80df130" -> "sha256:8f6afa9bd24066354e2681dab885a00da644a1b38ad6824498b849391665d1fa" [label=""];
  "sha256:8f6afa9bd24066354e2681dab885a00da644a1b38ad6824498b849391665d1fa" -> "sha256:e0166be49d847d51a6a037c878da6eab4f2367f696f9746c00744289d867e6fd" [label=""];
  "sha256:1b8607a23ab689d86718997f411c3556a2c3e2ed4a981e220e2e185cb80df130" -> "sha256:e0166be49d847d51a6a037c878da6eab4f2367f696f9746c00744289d867e6fd" [label=""];
  "sha256:e0166be49d847d51a6a037c878da6eab4f2367f696f9746c00744289d867e6fd" -> "sha256:10caeec341cf954ce441bee05f74b7ee6464b2beafcec2907c5bbbabac551b2c" [label=""];
  "sha256:1b8607a23ab689d86718997f411c3556a2c3e2ed4a981e220e2e185cb80df130" -> "sha256:10caeec341cf954ce441bee05f74b7ee6464b2beafcec2907c5bbbabac551b2c" [label=""];
  "sha256:10caeec341cf954ce441bee05f74b7ee6464b2beafcec2907c5bbbabac551b2c" -> "sha256:6e0c27227e6735bc205867dd1b04ee606f2911c86887da1846b34b321c355012" [label=""];
  "sha256:1b8607a23ab689d86718997f411c3556a2c3e2ed4a981e220e2e185cb80df130" -> "sha256:6e0c27227e6735bc205867dd1b04ee606f2911c86887da1846b34b321c355012" [label=""];
  "sha256:6e0c27227e6735bc205867dd1b04ee606f2911c86887da1846b34b321c355012" -> "sha256:374e4a518e9e7fdd54d797f504212417adc7ca324cd785c4ecf517f7c3b98cce" [label=""];
}

