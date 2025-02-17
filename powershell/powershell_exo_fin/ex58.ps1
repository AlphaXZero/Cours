$nbr =  Get-Random -Maximum 101 -Minimum 0
$guess = -1
$counter= 0
while ($guess -ne $nbr) {
    $guess = Read-Host -Prompt "Entrez un nombre"
    $counter++
    if($guess -gt $nbr){
        Write-Host "Plus petit" -ForegroundColor red
    }
    elseif($guess -lt $nbr){
        Write-Host "Plus grand" -ForegroundColor green
    }
}
Write-Host "Bravo vous avez trouve $nbr en $counter coups"