[app/sources/276975414.Dockerfile]
digraph {
  "sha256:d3575ac41a0b0874a0b92f2376b4357024823d0228fc1c0f154ab0100b2b60d9" [label="docker-image://docker.io/library/golang:1.6" shape="ellipse"];
  "sha256:d2274c4a15e9b160dd3fd08ba25a95f78cde6b9dc36b14f5552efe8b2eb71bb2" [label="local://context" shape="ellipse"];
  "sha256:e32d07852a4e602df08552435aae1eb1e14d78dedcae9657e76f50e0b26096f8" [label="copy{src=/, dest=/go/src/github.com/aws/aws-sdk-go}" shape="note"];
  "sha256:7ce83f8b225875ecc458a91ec0524e7a6804cd8e79de9d5d49a0abced627f805" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\tvim \t&& rm -rf /var/list/apt/lists/*" shape="box"];
  "sha256:0e2143960fa39d451cebddc77118c6d8ac700da7a8834ec047797a08b0c8bca5" [label="mkdir{path=/go/src/github.com/aws/aws-sdk-go}" shape="note"];
  "sha256:70cc8e0f965246221fa8d7793fecddad5646d542eecf670824cb718152b72b95" [label="sha256:70cc8e0f965246221fa8d7793fecddad5646d542eecf670824cb718152b72b95" shape="plaintext"];
  "sha256:d3575ac41a0b0874a0b92f2376b4357024823d0228fc1c0f154ab0100b2b60d9" -> "sha256:e32d07852a4e602df08552435aae1eb1e14d78dedcae9657e76f50e0b26096f8" [label=""];
  "sha256:d2274c4a15e9b160dd3fd08ba25a95f78cde6b9dc36b14f5552efe8b2eb71bb2" -> "sha256:e32d07852a4e602df08552435aae1eb1e14d78dedcae9657e76f50e0b26096f8" [label=""];
  "sha256:e32d07852a4e602df08552435aae1eb1e14d78dedcae9657e76f50e0b26096f8" -> "sha256:7ce83f8b225875ecc458a91ec0524e7a6804cd8e79de9d5d49a0abced627f805" [label=""];
  "sha256:7ce83f8b225875ecc458a91ec0524e7a6804cd8e79de9d5d49a0abced627f805" -> "sha256:0e2143960fa39d451cebddc77118c6d8ac700da7a8834ec047797a08b0c8bca5" [label=""];
  "sha256:0e2143960fa39d451cebddc77118c6d8ac700da7a8834ec047797a08b0c8bca5" -> "sha256:70cc8e0f965246221fa8d7793fecddad5646d542eecf670824cb718152b72b95" [label=""];
}

