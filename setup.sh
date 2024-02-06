#!/bin/sh

if [ ! -d "../.github/workflows" ]; then
echo "Starting setup github actions workflow"
mkdir -p ../.github/workflows/
cp -f *.yml ../.github/workflows/
cp -f *.toml ../
echo "Setup completed"

echo "Start pushing workflow to repository"
cd ../
git add .github/workflows/*.yml
git add *.toml
git commit -m "Seting up GitHub workflows"
git push
echo "Configuration successfully pushed to remote"
else
echo "Github actions workflows already setup in the project"
fi