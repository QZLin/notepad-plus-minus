# $VSVCVAR_BAT = "A:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Auxiliary\Build\vcvars64.bat"

Push-Location $PSScriptRoot
# . cmd-pwsh-bridge\bridge.ps1
# Set-Location PowerEditor\visual.net
# SourceCmd($VSVCVAR_BAT)

# msbuild .\notepadPlus.sln -t:Clean
msbuild PowerEditor\visual.net\notepadPlus.sln -p:Configuration=Release
Pop-Location