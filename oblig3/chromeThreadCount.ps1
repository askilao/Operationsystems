foreach($handle in (Get-Process chrome).Handles  ){ Write-Output "chrome $handle $((Get-Process chrome | Where-Object {$_.Handles -eq $handle } | Select-Object -ExpandProperty Threads).count) "}
