[app/sources/242901474.Dockerfile]
digraph {
  "sha256:1a5f0c73070d650a8eda7ab3eee52f5cbdcbde49ee5cb562ea94a3c171d9ad69" [label="docker-image://docker.io/library/node:7" shape="ellipse"];
  "sha256:7b6a09924d789556bf9a492d60c7da988bc4092c42ee9dd28deea9c195ac1878" [label="mkdir{path=/app}" shape="note"];
  "sha256:bf42634ec1fd999dfb22421503b863a85739c313111bea6c451de7dba09580e4" [label="local://context" shape="ellipse"];
  "sha256:6173139b6497110c38f187f4deaba0d0ece59ac6352719c0eda8a8b9d15b603d" [label="copy{src=/package.json, dest=/app}" shape="note"];
  "sha256:5674d74e71ed556cc4c5d2e47036b0e68d6efcb27aa0911547f445f306cfa69f" [label="/bin/sh -c npm install" shape="box"];
  "sha256:faeebebd3fc993fe475b36f3a7554897d0580e9d24f41dd387c583dc96813457" [label="copy{src=/, dest=/app}" shape="note"];
  "sha256:a8e5728d9632a83654fc5bdcfa2c4fb3639f1151429c9656b72ad5c0964a37be" [label="sha256:a8e5728d9632a83654fc5bdcfa2c4fb3639f1151429c9656b72ad5c0964a37be" shape="plaintext"];
  "sha256:1a5f0c73070d650a8eda7ab3eee52f5cbdcbde49ee5cb562ea94a3c171d9ad69" -> "sha256:7b6a09924d789556bf9a492d60c7da988bc4092c42ee9dd28deea9c195ac1878" [label=""];
  "sha256:7b6a09924d789556bf9a492d60c7da988bc4092c42ee9dd28deea9c195ac1878" -> "sha256:6173139b6497110c38f187f4deaba0d0ece59ac6352719c0eda8a8b9d15b603d" [label=""];
  "sha256:bf42634ec1fd999dfb22421503b863a85739c313111bea6c451de7dba09580e4" -> "sha256:6173139b6497110c38f187f4deaba0d0ece59ac6352719c0eda8a8b9d15b603d" [label=""];
  "sha256:6173139b6497110c38f187f4deaba0d0ece59ac6352719c0eda8a8b9d15b603d" -> "sha256:5674d74e71ed556cc4c5d2e47036b0e68d6efcb27aa0911547f445f306cfa69f" [label=""];
  "sha256:5674d74e71ed556cc4c5d2e47036b0e68d6efcb27aa0911547f445f306cfa69f" -> "sha256:faeebebd3fc993fe475b36f3a7554897d0580e9d24f41dd387c583dc96813457" [label=""];
  "sha256:bf42634ec1fd999dfb22421503b863a85739c313111bea6c451de7dba09580e4" -> "sha256:faeebebd3fc993fe475b36f3a7554897d0580e9d24f41dd387c583dc96813457" [label=""];
  "sha256:faeebebd3fc993fe475b36f3a7554897d0580e9d24f41dd387c583dc96813457" -> "sha256:a8e5728d9632a83654fc5bdcfa2c4fb3639f1151429c9656b72ad5c0964a37be" [label=""];
}

