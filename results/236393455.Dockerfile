[app/sources/236393455.Dockerfile]
digraph {
  "sha256:0d78b30aa9c2fd5eb1a4e5f5de31f50b1b32cc694fe6dd6f28ccd0b977095842" [label="local://context" shape="ellipse"];
  "sha256:998507ecfcdb61ffbd1e518a53ffa5056549d3b9c5571f48ea88a1c8b11b6487" [label="copy{src=/main, dest=/main}" shape="note"];
  "sha256:8a183c0c1203c04768bde21b75b9efda79a05df8e1aaebdd0456b234289476e9" [label="sha256:8a183c0c1203c04768bde21b75b9efda79a05df8e1aaebdd0456b234289476e9" shape="plaintext"];
  "sha256:0d78b30aa9c2fd5eb1a4e5f5de31f50b1b32cc694fe6dd6f28ccd0b977095842" -> "sha256:998507ecfcdb61ffbd1e518a53ffa5056549d3b9c5571f48ea88a1c8b11b6487" [label=""];
  "sha256:998507ecfcdb61ffbd1e518a53ffa5056549d3b9c5571f48ea88a1c8b11b6487" -> "sha256:8a183c0c1203c04768bde21b75b9efda79a05df8e1aaebdd0456b234289476e9" [label=""];
}

