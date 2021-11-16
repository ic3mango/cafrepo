#!/bin/bash

export tf_approve=--auto-approve

function main {

# Deploy level3 101-aml-workspace
bash /tf/rover/rover.sh \
-lz /tf/caf/walkthrough/landingzones/caf_solution \
-var-folder /tf/caf/walkthrough/configuration/demo/level3/data_analytics/101-aml-workspace \
-tfstate 101-aml-workspace.tfstate \
-level level3 \
-env demo \
-a destroy &
wait

# Deploy level3 app_service
bash /tf/rover/rover.sh \
-lz /tf/caf/walkthrough/landingzones/caf_solution \
-var-folder /tf/caf/walkthrough/configuration/demo/level3/app_service \
-tfstate app_service.tfstate \
-level level3 \
-env demo \
-a destroy &
wait

# Deploy level3 aks
bash /tf/rover/rover.sh \
-lz /tf/caf/walkthrough/landingzones/caf_solution \
-var-folder /tf/caf/walkthrough/configuration/demo/level3/aks \
-tfstate aks.tfstate \
-level level3 \
-env demo \
-a destroy &
wait

# Deploy level2 shared_services
bash /tf/rover/rover.sh \
-lz /tf/caf/walkthrough/landingzones/caf_solution \
-var-folder /tf/caf/walkthrough/configuration/demo/level2/shared_services \
-tfstate shared_services.tfstate \
-level level2 \
-env demo \
-a destroy &
wait

# Deploy level2 hub
bash /tf/rover/rover.sh \
-lz /tf/caf/walkthrough/landingzones/caf_solution \
-var-folder /tf/caf/walkthrough/configuration/demo/level2/networking/hub \
-tfstate hub.tfstate \
-level level2 \
-env demo \
-a destroy &
wait

# Deploy level1 level1
bash /tf/rover/rover.sh \
-lz /tf/caf/walkthrough/landingzones/caf_solution \
-var-folder /tf/caf/walkthrough/configuration/demo/level1 \
-tfstate level1.tfstate \
-level level1 \
-env demo \
-a destroy &
wait

# Deploy level0 launchpad
bash /tf/rover/rover.sh \
-lz /tf/caf/walkthrough/landingzones/caf_launchpad \
-launchpad \
-var-folder /tf/caf/walkthrough/configuration/demo/level0/launchpad \
-tfstate launchpad.tfstate \
-level level0 \
-env demo \
-a destroy &
wait

}

main
