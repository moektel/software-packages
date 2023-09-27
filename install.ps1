##### Run as Administrator #####

# Powershell modules to install
Install-Module Microsoft.PowerShell.SecretManagement -Repository PSGallery
Install-Module Microsoft.PowerShell.SecretStore -Repository PSGallery

# Install Chocolatey
Set-ExecutionPolicy AllSigned
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

# Install Software packages
choco install choco_software_packages.config --acceptlicense --confirm
pip install -r python_requirements.txt

# Install vscode extensions
code --install-extension bierner.markdown-preview-github-styles
code --install-extension cweijan.vscode-postgresql-client2
code --install-extension DavidAnson.vscode-markdownlint
code --install-extension donjayamanne.githistory
code --install-extension dracula-theme.theme-dracula
code --install-extension eamodio.gitlens
code --install-extension enkia.tokyo-night
code --install-extension fabianlauer.vs-code-xml-format
code --install-extension foxundermoon.shell-format
code --install-extension GitHub.codespaces
code --install-extension GitHub.copilot
code --install-extension GitHub.github-vscode-theme
code --install-extension GitHub.vscode-pull-request-github
code --install-extension golang.go
code --install-extension GrapeCity.gc-excelviewer
code --install-extension matheusq94.TFS
code --install-extension mhutchie.git-graph
code --install-extension mohsen1.prettify-json
code --install-extension ms-azuretools.vscode-docker
code --install-extension ms-dotnettools.csharp
code --install-extension ms-dotnettools.vscode-dotnet-runtime
code --install-extension ms-python.isort
code --install-extension ms-python.python
code --install-extension ms-python.vscode-pylance
code --install-extension ms-toolsai.jupyter
code --install-extension ms-toolsai.jupyter-keymap
code --install-extension ms-toolsai.jupyter-renderers
code --install-extension ms-toolsai.vscode-jupyter-cell-tags
code --install-extension ms-toolsai.vscode-jupyter-slideshow
code --install-extension ms-vscode.cpptools
code --install-extension oderwat.indent-rainbow
code --install-extension pjmiravalle.terraform-advanced-syntax-highlighting
code --install-extension redhat.vscode-yaml
code --install-extension ryu1kn.partial-diff
code --install-extension sandipchitale.vscode-decode-x509certificates
code --install-extension TabNine.tabnine-vscode
code --install-extension tomoki1207.pdf
code --install-extension Tyriar.sort-lines