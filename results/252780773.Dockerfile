[app/sources/252780773.Dockerfile]
digraph {
  "sha256:351c6edafc5b7cf75c77d76201d2d1b340ee8c5fc56d6fc31a3c65f625a672d9" [label="local://context" shape="ellipse"];
  "sha256:d495c9c6f595afccc5490e9e997331b66a729fa9e30cea9a5a8b564ad7965389" [label="docker-image://docker.io/badele/debian-mosquitto:latest" shape="ellipse"];
  "sha256:fd2712f18107253a8c23b7265cb520f108d0d983789c88abc0c861c2de732b86" [label="/bin/sh -c apt-get install -y supervisor" shape="box"];
  "sha256:cbee25ecd1430c4dd30202ad8a80ebb4aca103c3c4979982704ea1fc6fe04c47" [label="/bin/sh -c pip3 install git+git://github.com/badele/serialkiller-plugins.git" shape="box"];
  "sha256:cf32aed8195d22ee9f3c7fef1756a892ade6436b7f6923774ba0f0dfa5ce806d" [label="copy{src=/files/serialkiller/mqtt/pub/weather_montpellier.py, dest=/usr/local/bin/}" shape="note"];
  "sha256:bba51ac9f49d4070921cee87160314e0586c6eb6633e556029255ba9603739db" [label="copy{src=/files/serialkiller/mqtt/pub/currenttime.py, dest=/usr/local/bin/}" shape="note"];
  "sha256:26392295070441d7f7c54b96a33fd2e8e3e467b5f0b1c4c017fe3a7d1bcd456a" [label="copy{src=/files/supervisord, dest=/etc/supervisor/conf.d/}" shape="note"];
  "sha256:69a6d2f56ee60003189b02300df8c1b652f78b36e16b203797163029cea21c83" [label="sha256:69a6d2f56ee60003189b02300df8c1b652f78b36e16b203797163029cea21c83" shape="plaintext"];
  "sha256:d495c9c6f595afccc5490e9e997331b66a729fa9e30cea9a5a8b564ad7965389" -> "sha256:fd2712f18107253a8c23b7265cb520f108d0d983789c88abc0c861c2de732b86" [label=""];
  "sha256:fd2712f18107253a8c23b7265cb520f108d0d983789c88abc0c861c2de732b86" -> "sha256:cbee25ecd1430c4dd30202ad8a80ebb4aca103c3c4979982704ea1fc6fe04c47" [label=""];
  "sha256:cbee25ecd1430c4dd30202ad8a80ebb4aca103c3c4979982704ea1fc6fe04c47" -> "sha256:cf32aed8195d22ee9f3c7fef1756a892ade6436b7f6923774ba0f0dfa5ce806d" [label=""];
  "sha256:351c6edafc5b7cf75c77d76201d2d1b340ee8c5fc56d6fc31a3c65f625a672d9" -> "sha256:cf32aed8195d22ee9f3c7fef1756a892ade6436b7f6923774ba0f0dfa5ce806d" [label=""];
  "sha256:cf32aed8195d22ee9f3c7fef1756a892ade6436b7f6923774ba0f0dfa5ce806d" -> "sha256:bba51ac9f49d4070921cee87160314e0586c6eb6633e556029255ba9603739db" [label=""];
  "sha256:351c6edafc5b7cf75c77d76201d2d1b340ee8c5fc56d6fc31a3c65f625a672d9" -> "sha256:bba51ac9f49d4070921cee87160314e0586c6eb6633e556029255ba9603739db" [label=""];
  "sha256:bba51ac9f49d4070921cee87160314e0586c6eb6633e556029255ba9603739db" -> "sha256:26392295070441d7f7c54b96a33fd2e8e3e467b5f0b1c4c017fe3a7d1bcd456a" [label=""];
  "sha256:351c6edafc5b7cf75c77d76201d2d1b340ee8c5fc56d6fc31a3c65f625a672d9" -> "sha256:26392295070441d7f7c54b96a33fd2e8e3e467b5f0b1c4c017fe3a7d1bcd456a" [label=""];
  "sha256:26392295070441d7f7c54b96a33fd2e8e3e467b5f0b1c4c017fe3a7d1bcd456a" -> "sha256:69a6d2f56ee60003189b02300df8c1b652f78b36e16b203797163029cea21c83" [label=""];
}

