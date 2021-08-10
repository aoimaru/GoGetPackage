[app/sources/252791838.Dockerfile]
digraph {
  "sha256:fa1aeb367b5e0a3a4c9f5df5b75112783cf7521ca1209380c0aafc15ba7dff8c" [label="docker-image://docker.io/library/postgres@sha256:6647385dd9ae11aa2216bf55c54d126b0a85637b3cf4039ef24e3234113588e3" shape="ellipse"];
  "sha256:0d4da9685045f05c5cf928b4dd171a463e1b579695b511040821c3e65ac9cf9d" [label="local://context" shape="ellipse"];
  "sha256:c9798480f118abf8613fb75ac12b05d721c7b844f298351d956acd7cd1aea176" [label="copy{src=/init.sql, dest=/docker-entrypoint-initdb.d/}" shape="note"];
  "sha256:f7b3ce6f7922250b33233d47ea7986dd9c4b8e19d790adb8f3d17a44b8b3001c" [label="sha256:f7b3ce6f7922250b33233d47ea7986dd9c4b8e19d790adb8f3d17a44b8b3001c" shape="plaintext"];
  "sha256:fa1aeb367b5e0a3a4c9f5df5b75112783cf7521ca1209380c0aafc15ba7dff8c" -> "sha256:c9798480f118abf8613fb75ac12b05d721c7b844f298351d956acd7cd1aea176" [label=""];
  "sha256:0d4da9685045f05c5cf928b4dd171a463e1b579695b511040821c3e65ac9cf9d" -> "sha256:c9798480f118abf8613fb75ac12b05d721c7b844f298351d956acd7cd1aea176" [label=""];
  "sha256:c9798480f118abf8613fb75ac12b05d721c7b844f298351d956acd7cd1aea176" -> "sha256:f7b3ce6f7922250b33233d47ea7986dd9c4b8e19d790adb8f3d17a44b8b3001c" [label=""];
}

