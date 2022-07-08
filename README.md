

Repository to test sending dd metrics

1. Build containers, `docker-compose build`
2. Set correct env variables, I'm using `direnv` for that
3. Start the dd-agent, `docker-compose up -d dd-agent`
4. submit metrics `docker-compose run --rm app yarn start`, you should see `sending metrics`
  
