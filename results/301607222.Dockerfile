[app/sources/301607222.Dockerfile]
digraph {
  "sha256:299d34d2b3126ad928b79e943b82636836bc9a495c694f0fe851c96bbf1db1f4" [label="docker-image://docker.io/library/node:8" shape="ellipse"];
  "sha256:0665a294fff7fd70ba0f1b7a4f8b8525cd60c136bd5bc7b9bcd789ee4af71043" [label="/bin/sh -c npm install -g gulp gulp-cli yarn" shape="box"];
  "sha256:122114470d2777003ea311834e618c202ad2cab7047edf59e186be0c22e7aa5d" [label="mkdir{path=/var/www/html/sugar}" shape="note"];
  "sha256:8916558e180f06b78457428e99b0b74d2e74a0ce71746ccb36ff1656f1d9f052" [label="local://context" shape="ellipse"];
  "sha256:cbf6cac416e033d59f499d72e65f3016c887450195112fe51ff98a0a2e8d77da" [label="copy{src=/install.sh, dest=/install.sh}" shape="note"];
  "sha256:0d62b7038cf91988a4b3f66c2c9c95c674782a11aa76dbd79453e0ded77d21b2" [label="sha256:0d62b7038cf91988a4b3f66c2c9c95c674782a11aa76dbd79453e0ded77d21b2" shape="plaintext"];
  "sha256:299d34d2b3126ad928b79e943b82636836bc9a495c694f0fe851c96bbf1db1f4" -> "sha256:0665a294fff7fd70ba0f1b7a4f8b8525cd60c136bd5bc7b9bcd789ee4af71043" [label=""];
  "sha256:0665a294fff7fd70ba0f1b7a4f8b8525cd60c136bd5bc7b9bcd789ee4af71043" -> "sha256:122114470d2777003ea311834e618c202ad2cab7047edf59e186be0c22e7aa5d" [label=""];
  "sha256:122114470d2777003ea311834e618c202ad2cab7047edf59e186be0c22e7aa5d" -> "sha256:cbf6cac416e033d59f499d72e65f3016c887450195112fe51ff98a0a2e8d77da" [label=""];
  "sha256:8916558e180f06b78457428e99b0b74d2e74a0ce71746ccb36ff1656f1d9f052" -> "sha256:cbf6cac416e033d59f499d72e65f3016c887450195112fe51ff98a0a2e8d77da" [label=""];
  "sha256:cbf6cac416e033d59f499d72e65f3016c887450195112fe51ff98a0a2e8d77da" -> "sha256:0d62b7038cf91988a4b3f66c2c9c95c674782a11aa76dbd79453e0ded77d21b2" [label=""];
}

