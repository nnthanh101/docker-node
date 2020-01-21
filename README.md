# docker-node

Docker for Node.js

```
  docker build -t docker-node .
  docker run -p 3333:3000 docker-node
  
  # docker build -t nnthanh101/docker-node .
  # docker build --rm -f Dockerfile -t docker-node:latest .
  # docker run -d -p 3333:3000 nnthanh101/docker-node
  # docker run --rm -d -p 3000:3000 docker-node:latest
  # docker exec -it <container-id> /bin/bash
```