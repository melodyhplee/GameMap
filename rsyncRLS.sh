#!/bin/bash
#rsync only syncs testServer because stableServer shouldn't be edited frequently
rsync -avz --progress -e 'ssh -p 22' testServer/ local\
@73.189.41.182:/home/local/testServer/