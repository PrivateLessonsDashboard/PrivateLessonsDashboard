#!/bin/bash

repo_links=("https://github.com/PrivateLessonsDashboard/Backend.git" "https://github.com/PrivateLessonsDashboard/Frontend.git")

for repo_link in "${repo_links[@]}"; do
    git clone "$repo_link"
done