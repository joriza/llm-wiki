Add-Type -AssemblyName System.Drawing
function HexColor($hex) {
  [System.Drawing.Color]::FromArgb(255,[Convert]::ToInt32($hex.Substring(1,2),16),[Convert]::ToInt32($hex.Substring(3,2),16),[Convert]::ToInt32($hex.Substring(5,2),16))
}
$deck = @(
  @('El lenguaje de los 10 dias','#E8C15A','g1.png'),
  @('1995: Netscape queria Java','#E8E8E8','g2.png'),
  @('La demo de 10 dias:','cara de Java, motor de Scheme','#E8E8E8','g3.png'),
  @('El doble igual roto','nacio de un favor. Quedo para siempre.','#E8E8E8','g4.png'),
  @('Peor es better:','llego primero y ya nadie pudo cambiarlo','#E8E8E8','g5.png'),
  @('La retrocompatibilidad','es una jaula','#E8E8E8','g6.png'),
  @('La otra cara de Eich: Rust','#E8C15A','g7.png'),
  @('EL TALLER CURIOSO','#E8C15A','g8.png')
)
foreach ($d in $deck) {
  $lines = @(); for ($i=0; $i -lt $d.Count-1; $i++) { $lines += $d[$i] }
  $bmp = New-Object System.Drawing.Bitmap 1920,1080
  $g = [System.Drawing.Graphics]::FromImage($bmp)
  $g.Clear((HexColor '#14181D'))
  $n = $lines.Count
  $fontBig = New-Object System.Drawing.Font('Arial', 60, [System.Drawing.FontStyle]::Bold)
  $fontSub = New-Object System.Drawing.Font('Arial', 36, [System.Drawing.FontStyle]::Regular)
  $bMain = New-Object System.Drawing.SolidBrush((HexColor $d[$d.Count-2]))
  $bSub  = New-Object System.Drawing.SolidBrush((HexColor '#9AA3AD'))
  $fmt = New-Object System.Drawing.StringFormat; $fmt.Alignment = 'Center'
  $y = 460
  $li = 0
  foreach ($l in $lines) {
    if ($li -eq 0) { $g.DrawString($l, $fontBig, $bMain, 960, $y, $fmt); $y += 100 }
    else { $g.DrawString($l, $fontSub, $bSub, 960, $y, $fmt); $y += 60 }
    $li++
  }
  $bmp.Save($d[$d.Count-1], [System.Drawing.Imaging.ImageFormat]::Png)
  $g.Dispose(); $bmp.Dispose()
}
Write-Host OK
