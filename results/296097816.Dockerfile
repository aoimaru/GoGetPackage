[app/sources/296097816.Dockerfile]
digraph {
  "sha256:5f3abb6268f545ce0b4452333e73fbc5e7c66ee53f111a71d1832f05dbef80cf" [label="docker-image://docker.io/library/docker:stable" shape="ellipse"];
  "sha256:85c675322d84aa3b05f6eb48cd2f87a7bfd854613f6483eb3f2d6b82de4cf8ee" [label="local://context" shape="ellipse"];
  "sha256:f7d6a72fa193bd570fbbd8e19e91cbd656c7ab8c9e18498c89389fa2dc395f7d" [label="copy{src=/run.sh, dest=/run.sh}" shape="note"];
  "sha256:f1c004b48e115d885f2798fecd41bf2c0f1fd524e74892ed684e099fe475a78c" [label="sha256:f1c004b48e115d885f2798fecd41bf2c0f1fd524e74892ed684e099fe475a78c" shape="plaintext"];
  "sha256:5f3abb6268f545ce0b4452333e73fbc5e7c66ee53f111a71d1832f05dbef80cf" -> "sha256:f7d6a72fa193bd570fbbd8e19e91cbd656c7ab8c9e18498c89389fa2dc395f7d" [label=""];
  "sha256:85c675322d84aa3b05f6eb48cd2f87a7bfd854613f6483eb3f2d6b82de4cf8ee" -> "sha256:f7d6a72fa193bd570fbbd8e19e91cbd656c7ab8c9e18498c89389fa2dc395f7d" [label=""];
  "sha256:f7d6a72fa193bd570fbbd8e19e91cbd656c7ab8c9e18498c89389fa2dc395f7d" -> "sha256:f1c004b48e115d885f2798fecd41bf2c0f1fd524e74892ed684e099fe475a78c" [label=""];
}

