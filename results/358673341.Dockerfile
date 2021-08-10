[app/sources/358673341.Dockerfile]
digraph {
  "sha256:b36c190f3c5880a8141ff8dd8bf23f225f4da1b0d14c32b23494ed3b532ef2b1" [label="docker-image://docker.io/biocontainers/biocontainers:v1.0.0_cv4@sha256:586c2bfecebee37ccef5db40d6c91483178ab04fea775bdbada179d9631e956f" shape="ellipse"];
  "sha256:c5d77df39f6dcb373ba199ddadb24b76c530445b446498d7fbcd77a2ffd3d295" [label="/bin/sh -c wget $URL/$ZIP -O $DST/$ZIP &&     tar xvf $DST/$ZIP -C $DST &&     rm $DST/$ZIP &&     cd $DST/$FOLDER &&     make &&     make install &&     cd / &&     rm -rf $DST/$FOLDER" shape="box"];
  "sha256:7b9d314df5c0ca1ab5c5cd37092ee51b9cc9daf8eae2971d16e95ede289528aa" [label="mkdir{path=/data}" shape="note"];
  "sha256:efd6b28cf3cf1efc7464e48e7dfce71295134a26bbeb7c41551c9c965e8b98c1" [label="sha256:efd6b28cf3cf1efc7464e48e7dfce71295134a26bbeb7c41551c9c965e8b98c1" shape="plaintext"];
  "sha256:b36c190f3c5880a8141ff8dd8bf23f225f4da1b0d14c32b23494ed3b532ef2b1" -> "sha256:c5d77df39f6dcb373ba199ddadb24b76c530445b446498d7fbcd77a2ffd3d295" [label=""];
  "sha256:c5d77df39f6dcb373ba199ddadb24b76c530445b446498d7fbcd77a2ffd3d295" -> "sha256:7b9d314df5c0ca1ab5c5cd37092ee51b9cc9daf8eae2971d16e95ede289528aa" [label=""];
  "sha256:7b9d314df5c0ca1ab5c5cd37092ee51b9cc9daf8eae2971d16e95ede289528aa" -> "sha256:efd6b28cf3cf1efc7464e48e7dfce71295134a26bbeb7c41551c9c965e8b98c1" [label=""];
}

