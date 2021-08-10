[app/sources/291058112.Dockerfile]
digraph {
  "sha256:298374316ea50bc7bdad80cc56871e20b9498fcd1e147b8c00308fca0b35ab8a" [label="local://context" shape="ellipse"];
  "sha256:64c562962352c8b2fae7c29368ee94f2babe864f1bfe6126156f880a4a2e06b1" [label="docker-image://docker.io/library/tomcat:8.0.45-jre8-alpine" shape="ellipse"];
  "sha256:feabfd862fa031631bd2811f77df17532eb0c0a9694a185d5106d0f87b3faea4" [label="copy{src=/catalina.sh, dest=/usr/local/tomcat/bin/}" shape="note"];
  "sha256:3d2cfaf3266f71411962bfb9011e4c143a27b1545a7f7f60745330d623687b62" [label="copy{src=/jedis-standalone-case, dest=/usr/local/tomcat/webapps/jedis-standalone-case}" shape="note"];
  "sha256:e32704c6f2a18c6be860e7cee180495948b05cc295274fc6467fabf40b50439a" [label="copy{src=/jedis.properties, dest=/usr/local/tomcat/webapps/jedis-standalone-case/WEB-INF/classes/}" shape="note"];
  "sha256:e423aa7386884efcbd0f5c776c8b2d2c3837d456d90bd227a342838d3896f2cb" [label="copy{src=/docker-entrypoint.sh, dest=/}" shape="note"];
  "sha256:9db986c1ff12bc3cc897e92e778b7bf7ad9ea5261c2d667f4930796cb06d65b3" [label="/bin/sh -c chmod +x /usr/local/tomcat/bin/catalina.sh && chmod +x /docker-entrypoint.sh" shape="box"];
  "sha256:5b5437d99d5af573ae15b59b509518f0de7f8d863abe94fe7e5a3ec722aced9e" [label="sha256:5b5437d99d5af573ae15b59b509518f0de7f8d863abe94fe7e5a3ec722aced9e" shape="plaintext"];
  "sha256:64c562962352c8b2fae7c29368ee94f2babe864f1bfe6126156f880a4a2e06b1" -> "sha256:feabfd862fa031631bd2811f77df17532eb0c0a9694a185d5106d0f87b3faea4" [label=""];
  "sha256:298374316ea50bc7bdad80cc56871e20b9498fcd1e147b8c00308fca0b35ab8a" -> "sha256:feabfd862fa031631bd2811f77df17532eb0c0a9694a185d5106d0f87b3faea4" [label=""];
  "sha256:feabfd862fa031631bd2811f77df17532eb0c0a9694a185d5106d0f87b3faea4" -> "sha256:3d2cfaf3266f71411962bfb9011e4c143a27b1545a7f7f60745330d623687b62" [label=""];
  "sha256:298374316ea50bc7bdad80cc56871e20b9498fcd1e147b8c00308fca0b35ab8a" -> "sha256:3d2cfaf3266f71411962bfb9011e4c143a27b1545a7f7f60745330d623687b62" [label=""];
  "sha256:3d2cfaf3266f71411962bfb9011e4c143a27b1545a7f7f60745330d623687b62" -> "sha256:e32704c6f2a18c6be860e7cee180495948b05cc295274fc6467fabf40b50439a" [label=""];
  "sha256:298374316ea50bc7bdad80cc56871e20b9498fcd1e147b8c00308fca0b35ab8a" -> "sha256:e32704c6f2a18c6be860e7cee180495948b05cc295274fc6467fabf40b50439a" [label=""];
  "sha256:e32704c6f2a18c6be860e7cee180495948b05cc295274fc6467fabf40b50439a" -> "sha256:e423aa7386884efcbd0f5c776c8b2d2c3837d456d90bd227a342838d3896f2cb" [label=""];
  "sha256:298374316ea50bc7bdad80cc56871e20b9498fcd1e147b8c00308fca0b35ab8a" -> "sha256:e423aa7386884efcbd0f5c776c8b2d2c3837d456d90bd227a342838d3896f2cb" [label=""];
  "sha256:e423aa7386884efcbd0f5c776c8b2d2c3837d456d90bd227a342838d3896f2cb" -> "sha256:9db986c1ff12bc3cc897e92e778b7bf7ad9ea5261c2d667f4930796cb06d65b3" [label=""];
  "sha256:9db986c1ff12bc3cc897e92e778b7bf7ad9ea5261c2d667f4930796cb06d65b3" -> "sha256:5b5437d99d5af573ae15b59b509518f0de7f8d863abe94fe7e5a3ec722aced9e" [label=""];
}

