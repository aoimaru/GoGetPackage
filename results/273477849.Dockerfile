[app/sources/273477849.Dockerfile]
digraph {
  "sha256:78b112054fe539d20d0f79b7ab22f3bd073ba20c3e62098ca1307aac1bc36756" [label="docker-image://docker.io/library/httpd:2.4" shape="ellipse"];
  "sha256:d49c670522d8d9cfd53ee03cc93c69c1076e8a1d30a5dc9592d3f6c6d9eccdb6" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:2c1b9e1ec808fd6898623b1060dddaa921c913ccda8b3f3e208fd4e059dc7f8b" [label="https://www.adobeaemcloud.com/content/companies/public/adobe/dispatcher/dispatcher/_jcr_content/top/download_8/file.res/dispatcher-apache2.4-linux-x86-64-4.2.3.tar.gz" shape="ellipse"];
  "sha256:c14bcd93dbadef23b4c101074ed717e14e72c1aab61a0ba53a5c0ba1069a2813" [label="copy{src=/dispatcher-apache2.4-linux-x86-64-4.2.3.tar.gz, dest=/usr/src/app/dispatcher/}" shape="note"];
  "sha256:1d94fa484bb9f934e02f4fcdb5e40afc957dddb11cd836bb65bdbde7aa2bad52" [label="/bin/sh -c tar -xzvf ./dispatcher/dispatcher-apache2.4-linux-x86-64-4.2.3.tar.gz -C ./dispatcher &&     cp ./dispatcher/dispatcher-apache2.4-4.2.3.so /usr/local/apache2/modules/mod_dispatcher.so" shape="box"];
  "sha256:66c336ee1d38d642fdf36ca0e215bd8e5d53da9002c05acfad7c00d81adc4784" [label="local://context" shape="ellipse"];
  "sha256:807b83a0a4a7adf8771b99b34ce045dfd1ddb5994f9a199422fc15b4a0eb2bfb" [label="copy{src=/dispatcher.any, dest=/usr/local/apache2/conf/dispatcher.any}" shape="note"];
  "sha256:54b9ab571048fbc9484d06f9474517cc67444dd74b936b613004f2954acad405" [label="copy{src=/httpd.conf, dest=/usr/local/apache2/conf/httpd.conf}" shape="note"];
  "sha256:c36d5d30c39ae2b865085ec51936aca5b733981d5e8b6bd75b1ee937c55bc94b" [label="sha256:c36d5d30c39ae2b865085ec51936aca5b733981d5e8b6bd75b1ee937c55bc94b" shape="plaintext"];
  "sha256:78b112054fe539d20d0f79b7ab22f3bd073ba20c3e62098ca1307aac1bc36756" -> "sha256:d49c670522d8d9cfd53ee03cc93c69c1076e8a1d30a5dc9592d3f6c6d9eccdb6" [label=""];
  "sha256:d49c670522d8d9cfd53ee03cc93c69c1076e8a1d30a5dc9592d3f6c6d9eccdb6" -> "sha256:c14bcd93dbadef23b4c101074ed717e14e72c1aab61a0ba53a5c0ba1069a2813" [label=""];
  "sha256:2c1b9e1ec808fd6898623b1060dddaa921c913ccda8b3f3e208fd4e059dc7f8b" -> "sha256:c14bcd93dbadef23b4c101074ed717e14e72c1aab61a0ba53a5c0ba1069a2813" [label=""];
  "sha256:c14bcd93dbadef23b4c101074ed717e14e72c1aab61a0ba53a5c0ba1069a2813" -> "sha256:1d94fa484bb9f934e02f4fcdb5e40afc957dddb11cd836bb65bdbde7aa2bad52" [label=""];
  "sha256:1d94fa484bb9f934e02f4fcdb5e40afc957dddb11cd836bb65bdbde7aa2bad52" -> "sha256:807b83a0a4a7adf8771b99b34ce045dfd1ddb5994f9a199422fc15b4a0eb2bfb" [label=""];
  "sha256:66c336ee1d38d642fdf36ca0e215bd8e5d53da9002c05acfad7c00d81adc4784" -> "sha256:807b83a0a4a7adf8771b99b34ce045dfd1ddb5994f9a199422fc15b4a0eb2bfb" [label=""];
  "sha256:807b83a0a4a7adf8771b99b34ce045dfd1ddb5994f9a199422fc15b4a0eb2bfb" -> "sha256:54b9ab571048fbc9484d06f9474517cc67444dd74b936b613004f2954acad405" [label=""];
  "sha256:66c336ee1d38d642fdf36ca0e215bd8e5d53da9002c05acfad7c00d81adc4784" -> "sha256:54b9ab571048fbc9484d06f9474517cc67444dd74b936b613004f2954acad405" [label=""];
  "sha256:54b9ab571048fbc9484d06f9474517cc67444dd74b936b613004f2954acad405" -> "sha256:c36d5d30c39ae2b865085ec51936aca5b733981d5e8b6bd75b1ee937c55bc94b" [label=""];
}

