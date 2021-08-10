[app/sources/252765358.Dockerfile]
digraph {
  "sha256:fa5f700ef4a52daab01b657f047fc1d281d45a3292daa3ae64a0e0724ac1f874" [label="local://context" shape="ellipse"];
  "sha256:ce87f205b1aee9127794755c8af10e9ba63c160329fc1a0d303ff35cf77cc5c3" [label="copy{src=/root.tar.gz, dest=/}" shape="note"];
  "sha256:d5ce3061e190814bb7c11259779a5a520e8243ae812d6c804332bc399b282afe" [label="sha256:d5ce3061e190814bb7c11259779a5a520e8243ae812d6c804332bc399b282afe" shape="plaintext"];
  "sha256:fa5f700ef4a52daab01b657f047fc1d281d45a3292daa3ae64a0e0724ac1f874" -> "sha256:ce87f205b1aee9127794755c8af10e9ba63c160329fc1a0d303ff35cf77cc5c3" [label=""];
  "sha256:ce87f205b1aee9127794755c8af10e9ba63c160329fc1a0d303ff35cf77cc5c3" -> "sha256:d5ce3061e190814bb7c11259779a5a520e8243ae812d6c804332bc399b282afe" [label=""];
}

