# Adapt
This stack is for doing analysis, transformation and migration work using AI.
To run the main stack, clone this repo and then inside the new cloned repo directory run the following command(s) to bring up the stack in detached mode:

`docker compose up -d`

## Containers
### open-webui
[https://ghcr.io/open-webui/open-webui](https://ghcr.io/open-webui/open-webui)

Open Web UI provides a visual interface GPT Chat like interface for chatting to Ollama local AI models run by the ollama container. It also provides the ability to download models from ollama and install them in the ollama AI container

[http://localhost:3000/](http://localhost:3000/)



### ollama
[https://hub.docker.com/r/ollama/ollama](https://hub.docker.com/r/ollama/ollama)

Ollama provides a platform to run AI models from the Ollama platform. Additionally *.GGUF format models can also be used, although the Ollama models are better tuned for running in Ollama

### Langflow
[https://hub.docker.com/r/langflowai/langflow](https://hub.docker.com/r/langflowai/langflow)

Langflow provides a visual interface for orchestrating AI work. It works with both the Ollama local AI container but can also connect to most of the online AI services including Azure OpenAI

[http://localhost:7860/](http://localhost:7860/)



### Lnagflow-DB
[https://hub.docker.com/_/postgres](https://hub.docker.com/_/postgres)

For data persistance LangFlow requires a database, this container provides a postgres database specifically for use with langflow




## Disabled containers
The following containers have been commented out of the docker-compose.yml file but can be uncommented and added in as required.

### drools-wb
[https://hub.docker.com/r/jboss/drools-workbench](https://hub.docker.com/r/jboss/drools-workbench)
Drools Workbench provides a UI to do rules authorising using the jboss Drools platform
username: admin
password: admin

[http://localhost:8087](http://localhost:8087/)



### kei-wb
[https://quay.io/repository/kiegroup/kie-server-showcase?tab=tags&tag=latest](https://quay.io/repository/kiegroup/kie-server-showcase?tab=tags&tag=latest)
REDHAT Kei server provides a server to build and deploy Drools rulesets on that can then be directly addressed to run a rule set

[http://localhost:8180/kie-server/services/rest/server/](http://localhost:8180/kie-server/services/rest/server/)


## Optional container(s)
These containers may be activated to use with the solution as needed.

### MySQL 8.0
[https://hub.docker.com/_/mysql](https://hub.docker.com/_/mysql)
MySQL 8.0 is compatible with node apps and is a database store



## [installGovCMS.sh] GovCMS containerised installer
[https://github.com/govCMS/GovCMS.git](https://github.com/govCMS/GovCMS.git)

GovCMS is a Australian Government designed content management system (CMS) which is starting to support openFisca [https://openfisca.org](https://openfisca.org) standards 
that can be used to document and exchange rules as code. New Zealand government is currently adopting this approach and looking to use GovCMS.

This installer checks out the latest copy of GovCMS into a directory ./volumes/GovCMS then runs the installer

`cd ./volumes/GovCMS && docker compose up -d && cd ../../`

[http://localhost:8888/](http://localhost:8888/) 

### Installer settings for GovCMS

Database name: drupal

Database username: drupal

Database password: drupal

** Warning this container does NOT support persistance for the GovCMS config.



## Shutting down the stack(s)
Data for most containers is written back to the /volumes/ directory so data persistance remains between stack restarts

To shutdown the main stack go into the root of the cloned repo and run

`docker compose down`


To shutdown GovCMS container stack, run

`cd ./volumnes/GovCMS && docker compose down && cd ../../`



