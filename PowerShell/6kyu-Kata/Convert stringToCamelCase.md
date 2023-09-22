# CodeWars PowerShell Solutions

---

## Human readable duration format

Complete the method/function so that it converts dash/underscore delimited words into camel casing. The first word within the output should be capitalized `only` if the original word was capitalized (known as Upper Camel Case, also often referred to as Pascal case). The next words should be always capitalized
Examples:

```code
"the-stealth-warrior" gets converted to "theStealthWarrior"

"The_Stealth_Warrior" gets converted to "TheStealthWarrior"

"The_Stealth-Warrior" gets converted to "TheStealthWarrior"
```

---

### Solution

```Powershell
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
```

### Output

```Powershell
PS C:\codewars-kata> . 'C:\codewars-kata\PowerShell\6kyu-Kata\Convert stringToCamelCase.ps1'
theStealthWarrior
TheStealthWarrior
TheStealthWarrior
```

---

[See on CodeWars.com](https://www.codewars.com/kata/517abf86da9663f1d2000003/train/powershell)

## [Back](../README.md)
