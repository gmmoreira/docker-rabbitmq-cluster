Run `docker-compose up` to create all services.

It will create 3 RabbitMQ servers and a HAProxy to load-balance them.

Still requires to run `./join_cluster.sh` on the first time so the servers join the same cluster.
