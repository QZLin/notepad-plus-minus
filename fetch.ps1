git.exe clone https://github.com/notepad-plus-plus/notepad-plus-plus --depth=1
git.exe clone https://github.com/QZLin/cmd-pwsh-bridge --depth=1

Push-Location notepad-plus-plus

Copy-Item ../BUILD.md . -Force
Copy-Item ../README.md . -Force
Copy-Item ../.github . -Force

Remove-Item -r .git -Force -ErrorAction Ignore
Remove-Item nppGpgPub.asc -ErrorAction Ignore
Pop-Location