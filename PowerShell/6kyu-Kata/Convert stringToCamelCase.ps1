function ConvertToCamelcase($String) {
  $words = $String -split '[-_]'
  $finalWord = ""

  foreach ($word in $words) {
    if ($finalWord -eq "") {
      $finalWord += $word
    }
    else {
            $finalWord += $word.Substring(0,1).ToUpper() + $word.Substring(1)
    }
  }
return $finalWord
}


$testString1 = "the-stealth-warrior"
$testString2 = "The_Stealth_Warrior"
$testString3 = "The_Stealth-Warrior"

$camelCase1 = ConvertToCamelCase $testString1
$camelCase2 = ConvertToCamelCase $testString2
$camelCase3 = ConvertToCamelCase $testString3

Write-Host $camelCase1
Write-Host $camelCase2
Write-Host $camelCase3