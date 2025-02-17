
$name = Read-Host -Prompt "Entrez le nom d'un  fichier"

$files = Get-ChildItem c:\$name -recurse -ErrorAction SilentlyContinue -de 2

if(Test-Path $files){
    Write-Host "le fichier '$name' existse"
}