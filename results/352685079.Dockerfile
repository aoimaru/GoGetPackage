[app/sources/352685079.Dockerfile]
digraph {
  "sha256:0c736d3ba4c5b7f6a1157d1e42e06323663133228cc97a3ccc9b5dc4290a1537" [label="docker-image://docker.io/library/python:3-alpine" shape="ellipse"];
  "sha256:9775cbcf2ae8d1c27c0948261f030b9e3db285b65f60103a07bd98f109c017d7" [label="/bin/sh -c apk add --update bash curl ca-certificates geoip &&   pip install awscli==1.11.41 &&   rm -rf /tmp/* /var/cache/apk/*" shape="box"];
  "sha256:6b3ed049ab476a39f4ca61ae865621e9733892b17559c1cb2ec790a21bfef872" [label="/bin/sh -c wget http://geolite.maxmind.com/download/geoip/database/GeoLiteCity.dat.gz &&   gunzip GeoLiteCity.dat.gz &&   mv GeoLiteCity.dat /usr/share/GeoIP/" shape="box"];
  "sha256:657135dd9cb4335d4ac2eec6b9ef2eb99e759e9c9fd1bdb0a2940e550af2c427" [label="local://context" shape="ellipse"];
  "sha256:64f97c21a450a0535eebed03571be226db3cb6e55c568cc1e6f11eefa40dfff7" [label="copy{src=/, dest=/opt/app/}" shape="note"];
  "sha256:4d7850bea66e8262a8c5d891a2a23c48d73970162fd4adad00c117c172cedb98" [label="/bin/sh -c chmod +x /opt/app/start.sh" shape="box"];
  "sha256:f0c7bb8f3054d1512aeb585667736b9eb26cfa2338ba6725b91c4eefe27cbcde" [label="mkdir{path=/opt/app}" shape="note"];
  "sha256:7cfc9047af1dfbee1f3e56d20d3a6a090afddc128f8618d7d1615bb6e614feb2" [label="sha256:7cfc9047af1dfbee1f3e56d20d3a6a090afddc128f8618d7d1615bb6e614feb2" shape="plaintext"];
  "sha256:0c736d3ba4c5b7f6a1157d1e42e06323663133228cc97a3ccc9b5dc4290a1537" -> "sha256:9775cbcf2ae8d1c27c0948261f030b9e3db285b65f60103a07bd98f109c017d7" [label=""];
  "sha256:9775cbcf2ae8d1c27c0948261f030b9e3db285b65f60103a07bd98f109c017d7" -> "sha256:6b3ed049ab476a39f4ca61ae865621e9733892b17559c1cb2ec790a21bfef872" [label=""];
  "sha256:6b3ed049ab476a39f4ca61ae865621e9733892b17559c1cb2ec790a21bfef872" -> "sha256:64f97c21a450a0535eebed03571be226db3cb6e55c568cc1e6f11eefa40dfff7" [label=""];
  "sha256:657135dd9cb4335d4ac2eec6b9ef2eb99e759e9c9fd1bdb0a2940e550af2c427" -> "sha256:64f97c21a450a0535eebed03571be226db3cb6e55c568cc1e6f11eefa40dfff7" [label=""];
  "sha256:64f97c21a450a0535eebed03571be226db3cb6e55c568cc1e6f11eefa40dfff7" -> "sha256:4d7850bea66e8262a8c5d891a2a23c48d73970162fd4adad00c117c172cedb98" [label=""];
  "sha256:4d7850bea66e8262a8c5d891a2a23c48d73970162fd4adad00c117c172cedb98" -> "sha256:f0c7bb8f3054d1512aeb585667736b9eb26cfa2338ba6725b91c4eefe27cbcde" [label=""];
  "sha256:f0c7bb8f3054d1512aeb585667736b9eb26cfa2338ba6725b91c4eefe27cbcde" -> "sha256:7cfc9047af1dfbee1f3e56d20d3a6a090afddc128f8618d7d1615bb6e614feb2" [label=""];
}

