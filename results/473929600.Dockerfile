[app/sources/473929600.Dockerfile]
digraph {
  "sha256:7e8c688afd08094f8f9517a9e016e0d3c11526cb454cbbe2febc298acf1bbad3" [label="docker-image://docker.io/library/golang:1.7" shape="ellipse"];
  "sha256:e1e4cf3f3abc471cb1c6135e5d67e2ad32df4d8eca1f845dd674227f45526581" [label="local://context" shape="ellipse"];
  "sha256:1e2bb5c982dcbdd841c0dafaf564fbc525728e94ce6a183ab81538628cdb5f98" [label="copy{src=/, dest=/go/src/github.com/aws/aws-sdk-go}" shape="note"];
  "sha256:a8a6605d46aada95ba66872011e3fa7936ab24cfd778888af68c85124d7fa05a" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\tvim \t&& rm -rf /var/list/apt/lists/*" shape="box"];
  "sha256:487994e81593fa08a5985f9d6cfe20554dd50d10d2b639f21b418c8a5b36daf2" [label="mkdir{path=/go/src/github.com/aws/aws-sdk-go}" shape="note"];
  "sha256:962492117e2b686d80a8a830cf049a362c3801b58edf579d3a93d10521be020d" [label="sha256:962492117e2b686d80a8a830cf049a362c3801b58edf579d3a93d10521be020d" shape="plaintext"];
  "sha256:7e8c688afd08094f8f9517a9e016e0d3c11526cb454cbbe2febc298acf1bbad3" -> "sha256:1e2bb5c982dcbdd841c0dafaf564fbc525728e94ce6a183ab81538628cdb5f98" [label=""];
  "sha256:e1e4cf3f3abc471cb1c6135e5d67e2ad32df4d8eca1f845dd674227f45526581" -> "sha256:1e2bb5c982dcbdd841c0dafaf564fbc525728e94ce6a183ab81538628cdb5f98" [label=""];
  "sha256:1e2bb5c982dcbdd841c0dafaf564fbc525728e94ce6a183ab81538628cdb5f98" -> "sha256:a8a6605d46aada95ba66872011e3fa7936ab24cfd778888af68c85124d7fa05a" [label=""];
  "sha256:a8a6605d46aada95ba66872011e3fa7936ab24cfd778888af68c85124d7fa05a" -> "sha256:487994e81593fa08a5985f9d6cfe20554dd50d10d2b639f21b418c8a5b36daf2" [label=""];
  "sha256:487994e81593fa08a5985f9d6cfe20554dd50d10d2b639f21b418c8a5b36daf2" -> "sha256:962492117e2b686d80a8a830cf049a362c3801b58edf579d3a93d10521be020d" [label=""];
}

