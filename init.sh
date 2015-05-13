#!/bin/bash 

CI_DIR='/ci'
PROJECT_DIR='/project'

"$CI_DIR/cppcheck-run.sh $PROJECT_DIR" || exit 1
"$CI_DIR/vera-run.sh $PROJECT_DIR" || exit 2
"$CI_DIR/rats-run.sh $PROJECT_DIR" || exit 3

exit 0

