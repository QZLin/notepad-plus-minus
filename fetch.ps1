git.exe clone https://github.com/notepad-plus-plus/notepad-plus-plus --depth=1
git.exe clone https://github.com/QZLin/cmd-pwsh-bridge --depth=1

Push-Location notepad-plus-plus
&../plus2minus.ps1

Copy-Item ../BUILD.md .
Copy-Item ../README.md .
Copy-Item ../.github .

Remove-Item -r .git -Force
Remove-Item nppGpgPub.asc
Pop-Location