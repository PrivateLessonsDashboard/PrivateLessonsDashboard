#!/bin/bash

REPO_LINKS=("https://github.com/PrivateLessonsDashboard/Backend.git" "https://github.com/PrivateLessonsDashboard/Frontend.git")

for REPO_LINK in "${REPO_LINKS[@]}"; do
  git clone "$REPO_LINK"
done
