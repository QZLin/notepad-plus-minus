# Push-Location $PSScriptRoot

$p = '\S+?\s+"(.*?)"\s*,\s*{0}'

$main_rc = ".\PowerEditor\src\Notepad_plus.rc"
$content = Get-Content $main_rc
Select-String -Path $main_rc -Pattern ($p -f "IDC_AUTHOR_NAME"), ($p -f "IDC_HOME_ADDR") | ForEach-Object {
    $value = $_.Matches[0].Groups[1].Value
    if ($value.Length -eq 0) {
        Write-Output $_.Matches[0].Value
    }
    else {
        $content = $content.Replace($value, "")
        Write-Output "Replace:"$_.Matches[0].Value.Replace($value, "")
    }
}
Set-Content -Value $content $main_rc
# Pop-Location