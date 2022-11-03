# cribl-assignment
This repo helps to setup technical assignment application on local. All components of application (target, splitter and agent) are containerized. 
Container details are in Dockerfile. crbil-compose.yaml is the docker compose file that creates all containers in order target, splitter and agent.

Pre-requisites: Install Docker on local based on host os

Execution on local:
1. Clone this repo to local
2. Update local directory in file .env for T1_VOLUME & T1_VOLUME to mount target container volumes. After containers are started, we can see events.log files in these volumes with data forwarded from splitter
3. From CLI - project directory execute docker compose command to start containers -> docker-compose -f cribl-compose.yaml up -d
4. Verify events.log files from local directories mapped to T1_VOLUME & T1_VOLUME for data from splitter (check file size)
5. To re-run agent, use command docker start agent. Verify events.log files appended with data (compare file size from previous step)
6. To stop/remove containers -> docker-compose -f cribl-compose.yaml down
