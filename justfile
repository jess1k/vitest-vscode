install:
  #! /bin/zsh
  local package_version=$(node -p "require('./package.json').version")

  nr compile
  npx -p @vscode/vsce vsce package --no-dependencies

  code --install-extension "./vitest-explorer-${package_version}.vsix"
  rm "./vitest-explorer-${package_version}.vsix"
