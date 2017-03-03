# docker-alfresco-dev

This repository contains scripts and configuration for spinning up
Docker containers that can be used for Alfresco development.

Say you want to work with Alfresco 5.2f, you would run the following:

```
> # State which version of Alfresco to use
> source ./5.2f.sh
> # Build an appropriate Docker image
> ./build.sh
> # Spin up a container from the image
> ./run.sh
```

If you'd prefer to work in the image interactively, use the following
instead of the raw `run.sh` command.

```
> ./run.sh bash
docker> # Inside the container we need to start Alfresco
docker> /host/scripts/start.sh
```

## TODO

- Use something like confd to provide a convenient way of updating 
  configuration files such as alfresco-global.properties and solrcore.properties.

- Figure out how to allow users to inject a license

- Create an init script that does not daemonize Tomcat

- Init script should be able to apply amps

- Ideally allow specification of options such as adding CORS JAR, and API Explorer.
  Currently user would have to comment these out in the Dockerfile.template if they
  needed to remove them.

- Work on a way to cache the Alfresco installs outside of docker for faster image
  building. The Docker team is discussing adding a `--mount` option to `docker build`
  that should make this work.

- Deploy the Activiti Connector and LDAP amps for improved integration with Activiti.
