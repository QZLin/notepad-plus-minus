# PowerEditor/src/ScintillaComponent/ScintillaEditView.h
Get-ChildItem -Recurse | ForEach-Object {
    try {
        [System.IO.File]::OpenRead($_).Close()
        $Readable = $true
    }
    catch {
        $Readable = $false
    }
    if ($Readable) {
        Write-Output $_
        $content = Get-Content $_
        Set-Content -Path $_.FullName -Value $content -Encoding utf8BOM
    }
}
