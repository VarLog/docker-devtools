#!/bin/bash 

CI_DIR='/ci'
PROJECT_DIR='/project'

"$CI_DIR/cppcheck-run.sh" "$PROJECT_DIR" "$PROJECT_DIR/reports" || exit 1
"$CI_DIR/vera-run.sh" "$PROJECT_DIR" "$PROJECT_DIR/reports"     || exit 2
"$CI_DIR/rats-run.sh" "$PROJECT_DIR" "$PROJECT_DIR/reports"     || exit 3

exit 0

