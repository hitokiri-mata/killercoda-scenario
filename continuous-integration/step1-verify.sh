#!/bin/bash

# Verify that Jenkins has finished starting up by checking for the
# presence of a marker file created by the setup process. When the file
# exists the script prints "done" so the scenario framework knows it can
# proceed to the next step.
if [ -f /tmp/jenkins_ready ]; then
  echo "done"
fi

