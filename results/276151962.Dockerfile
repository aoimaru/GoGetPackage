[app/sources/276151962.Dockerfile]
digraph {
  "sha256:d3217e0be61399fb28dc33e93da29102ab9dd722883309da9d7e1b6eae598050" [label="docker-image://docker.io/library/clojure:lein-2.7.1-alpine" shape="ellipse"];
  "sha256:9d2739f8382dafe3db90c545fb668608e302eb6f060c0c0c1816144e4a87f08d" [label="local://context" shape="ellipse"];
  "sha256:f48dffde64cb0a4df8315c82635f4e9108fc9fac5caed4144ed09b99a34e9e65" [label="copy{src=/, dest=/usr/src/hawkthorne/}" shape="note"];
  "sha256:f1c6e3c459481e358c560267dfcac821c77c4d32589f235101dac164b0a0a8f7" [label="mkdir{path=/usr/src/hawkthorne}" shape="note"];
  "sha256:3a1a43b8cbfadb56ab958d86eae13f6c8543981ec34a18072f0e962c2e1b4d09" [label="/bin/sh -c lein uberjar" shape="box"];
  "sha256:24ee0fc6ec7b20802cab4d80d4c50efb87e6f258ced4be9b1150e8c3eee5185e" [label="/bin/sh -c mv ./target/hawkthorne.jar ." shape="box"];
  "sha256:15b0376aa28a01648a86759f43a3623ca933224c13d966673e87007539839780" [label="/bin/sh -c lein clean" shape="box"];
  "sha256:e553c5431da0dda3a8c632e444f3e4923720ca954ff7e663bbf9c79643b19df8" [label="sha256:e553c5431da0dda3a8c632e444f3e4923720ca954ff7e663bbf9c79643b19df8" shape="plaintext"];
  "sha256:d3217e0be61399fb28dc33e93da29102ab9dd722883309da9d7e1b6eae598050" -> "sha256:f48dffde64cb0a4df8315c82635f4e9108fc9fac5caed4144ed09b99a34e9e65" [label=""];
  "sha256:9d2739f8382dafe3db90c545fb668608e302eb6f060c0c0c1816144e4a87f08d" -> "sha256:f48dffde64cb0a4df8315c82635f4e9108fc9fac5caed4144ed09b99a34e9e65" [label=""];
  "sha256:f48dffde64cb0a4df8315c82635f4e9108fc9fac5caed4144ed09b99a34e9e65" -> "sha256:f1c6e3c459481e358c560267dfcac821c77c4d32589f235101dac164b0a0a8f7" [label=""];
  "sha256:f1c6e3c459481e358c560267dfcac821c77c4d32589f235101dac164b0a0a8f7" -> "sha256:3a1a43b8cbfadb56ab958d86eae13f6c8543981ec34a18072f0e962c2e1b4d09" [label=""];
  "sha256:3a1a43b8cbfadb56ab958d86eae13f6c8543981ec34a18072f0e962c2e1b4d09" -> "sha256:24ee0fc6ec7b20802cab4d80d4c50efb87e6f258ced4be9b1150e8c3eee5185e" [label=""];
  "sha256:24ee0fc6ec7b20802cab4d80d4c50efb87e6f258ced4be9b1150e8c3eee5185e" -> "sha256:15b0376aa28a01648a86759f43a3623ca933224c13d966673e87007539839780" [label=""];
  "sha256:15b0376aa28a01648a86759f43a3623ca933224c13d966673e87007539839780" -> "sha256:e553c5431da0dda3a8c632e444f3e4923720ca954ff7e663bbf9c79643b19df8" [label=""];
}

