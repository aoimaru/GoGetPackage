[app/sources/207538652.Dockerfile]
digraph {
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" [label="docker-image://docker.io/library/debian:jessie" shape="ellipse"];
  "sha256:580e294d9541041b6572ee7dbe01a941ba2062ebc16333d6fbd056d395a3abd7" [label="local://context" shape="ellipse"];
  "sha256:f72073fe1d702e50aaa453961a82db8995554500cc2b066f0e58f2412a1b6fcf" [label="copy{src=/bin/dockerpresso, dest=/}" shape="note"];
  "sha256:cc43ebbe3d049691f58a4057f1ee940adc96dc8175584fe70c96864aa7f4b984" [label="copy{src=/templates/dockerpresso, dest=/dockerpresso-templates/}" shape="note"];
  "sha256:a86a8bad7b53a7ef5e7e974224847d83a69d73cd3635125fa9362c2e154621a7" [label="copy{src=/docker-compose*, dest=/dockerpresso-templates/}" shape="note"];
  "sha256:93336ad0f5b487944f53d46482a078aceda699f84aa66c7d045f5d92dc3f6447" [label="sha256:93336ad0f5b487944f53d46482a078aceda699f84aa66c7d045f5d92dc3f6447" shape="plaintext"];
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" -> "sha256:f72073fe1d702e50aaa453961a82db8995554500cc2b066f0e58f2412a1b6fcf" [label=""];
  "sha256:580e294d9541041b6572ee7dbe01a941ba2062ebc16333d6fbd056d395a3abd7" -> "sha256:f72073fe1d702e50aaa453961a82db8995554500cc2b066f0e58f2412a1b6fcf" [label=""];
  "sha256:f72073fe1d702e50aaa453961a82db8995554500cc2b066f0e58f2412a1b6fcf" -> "sha256:cc43ebbe3d049691f58a4057f1ee940adc96dc8175584fe70c96864aa7f4b984" [label=""];
  "sha256:580e294d9541041b6572ee7dbe01a941ba2062ebc16333d6fbd056d395a3abd7" -> "sha256:cc43ebbe3d049691f58a4057f1ee940adc96dc8175584fe70c96864aa7f4b984" [label=""];
  "sha256:cc43ebbe3d049691f58a4057f1ee940adc96dc8175584fe70c96864aa7f4b984" -> "sha256:a86a8bad7b53a7ef5e7e974224847d83a69d73cd3635125fa9362c2e154621a7" [label=""];
  "sha256:580e294d9541041b6572ee7dbe01a941ba2062ebc16333d6fbd056d395a3abd7" -> "sha256:a86a8bad7b53a7ef5e7e974224847d83a69d73cd3635125fa9362c2e154621a7" [label=""];
  "sha256:a86a8bad7b53a7ef5e7e974224847d83a69d73cd3635125fa9362c2e154621a7" -> "sha256:93336ad0f5b487944f53d46482a078aceda699f84aa66c7d045f5d92dc3f6447" [label=""];
}

