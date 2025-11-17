$filePath = "c:\spd-website-1\incidents.html"
$content = [System.IO.File]::ReadAllText($filePath)

# Replace all the weapon icons
$content = $content.Replace("cdn.prod.website-files.com/5fb9bd82a8f88a4df91d92b5/60861c40ed6a3f57a1bdf947_Chemical.svg", "icons/gas-regular.svg")
$content = $content.Replace("cdn.prod.website-files.com/5fb9bd82a8f88a4df91d92b5/60861c349d95cb852510782e_Bullet.svg", "icons/bullet-regular.svg")  
$content = $content.Replace("cdn.prod.website-files.com/5fb9bd82a8f88a4df91d92b5/60861c60abf4b480b28acd88_Grenade.svg", "icons/fire-regular.svg")
$content = $content.Replace("cdn.prod.website-files.com/5ad7793856a6417adf701264/6010680311a9af4d68881883_Close%20button.png", "icons/close-regular.svg")

[System.IO.File]::WriteAllText($filePath, $content)

Write-Host "Icon replacement completed"