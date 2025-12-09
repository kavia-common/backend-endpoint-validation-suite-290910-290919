#!/bin/bash
cd /home/kavia/workspace/code-generation/backend-endpoint-validation-suite-290910-290919/backend_test_automation
source venv/bin/activate
flake8 .
LINT_EXIT_CODE=$?
if [ $LINT_EXIT_CODE -ne 0 ]; then
  exit 1
fi

