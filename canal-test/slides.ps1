Add-Type -AssemblyName System.Drawing
function HexColor($hex) {
  return [System.Drawing.Color]::FromArgb(255,
    [Convert]::ToInt32($hex.Substring(1,2),16),
    [Convert]::ToInt32($hex.Substring(3,2),16),
    [Convert]::ToInt32($hex.Substring(5,2),16))
}
function Slide($lines, $color, $out) {
  $bmp = New-Object System.Drawing.Bitmap 1920,1080
  $g = [System.Drawing.Graphics]::FromImage($bmp)
  $g.Clear((HexColor '#14181D'))
  $font = New-Object System.Drawing.Font('Arial', 56, [System.Drawing.FontStyle]::Bold)
  $brush = New-Object System.Drawing.SolidBrush((HexColor $color))
  $fmt = New-Object System.Drawing.StringFormat
  $fmt.Alignment = 'Center'
  $n = $lines.Count
  $y = 480 - ($n*80)/2
  foreach ($l in $lines) { $g.DrawString($l, $font, $brush, 960, $y, $fmt); $y += 90 }
  $bmp.Save($out, [System.Drawing.Imaging.ImageFormat]::Png)
  $g.Dispose(); $bmp.Dispose()
}
Slide @('El lenguaje de los 10 dias') '#E8C15A' 'slide1.png'
Slide @('Escrito por una sola persona','para una demo') '#E8E8E8' 'slide2.png'
Slide @('Nunca lo terminaron.','Y por eso gana.') '#E8E8E8' 'slide3.png'
Slide @('EL TALLER CURIOSO') '#E8C15A' 'slide4.png'
Write-Host OK
