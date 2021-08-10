[app/sources/345499408.Dockerfile]
digraph {
  "sha256:2373ad8d24f0b330ceaae6b44205c4eb9ead90dedd4cf00a6345f2421baf9cc1" [label="docker-image://docker.io/library/tomcat:8-jre8" shape="ellipse"];
  "sha256:49a6fd403d67562fa7e5eefa1dda68d5b22c2e0b801639ad20240e3482ba34e7" [label="/bin/sh -c rm -rf /usr/local/tomcat/webapps/*" shape="box"];
  "sha256:5f764c642275a5a3bf2cdaa47c6deff46bb6cd32a1687d666f13cfca308b28ce" [label="local://context" shape="ellipse"];
  "sha256:b27b5da1b872f5cc3706b8691e19da8346d16a765dba2be540650bab302f980b" [label="copy{src=/target/gameoflife.war, dest=/usr/local/tomcat/webapps/ROOT.war}" shape="note"];
  "sha256:2e69354a2a22c2b874b04c75429791c6b20db649234deaeb07f438e707cd7ef6" [label="sha256:2e69354a2a22c2b874b04c75429791c6b20db649234deaeb07f438e707cd7ef6" shape="plaintext"];
  "sha256:2373ad8d24f0b330ceaae6b44205c4eb9ead90dedd4cf00a6345f2421baf9cc1" -> "sha256:49a6fd403d67562fa7e5eefa1dda68d5b22c2e0b801639ad20240e3482ba34e7" [label=""];
  "sha256:49a6fd403d67562fa7e5eefa1dda68d5b22c2e0b801639ad20240e3482ba34e7" -> "sha256:b27b5da1b872f5cc3706b8691e19da8346d16a765dba2be540650bab302f980b" [label=""];
  "sha256:5f764c642275a5a3bf2cdaa47c6deff46bb6cd32a1687d666f13cfca308b28ce" -> "sha256:b27b5da1b872f5cc3706b8691e19da8346d16a765dba2be540650bab302f980b" [label=""];
  "sha256:b27b5da1b872f5cc3706b8691e19da8346d16a765dba2be540650bab302f980b" -> "sha256:2e69354a2a22c2b874b04c75429791c6b20db649234deaeb07f438e707cd7ef6" [label=""];
}

