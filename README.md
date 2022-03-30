# acme-strapi

A Proof of Concept for dockerize. acme-strapi have student entity and ck-editor extension.

## Script

```shell
# Build to docker image
docker build -t acme-strapi:0.1 .

# Run
docker run --name acme-strapi-0.1 -e PG_CONNECTION_STRING={postgres-connection-string} -p 1337:1337 -d acme-strapi:0.1
```

**Remark** example for {postgres-connection-string}: `postgres://postgres:password:5432`