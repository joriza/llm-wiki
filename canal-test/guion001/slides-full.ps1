Add-Type -AssemblyName System.Drawing
function HexColor($h) { [System.Drawing.Color]::FromArgb(255,[Convert]::ToInt32($h.Substring(1,2),16),[Convert]::ToInt32($h.Substring(3,2),16),[Convert]::ToInt32($h.Substring(5,2),16)) }
function MakeSlide($title,$lines,$color,$out,$subtitle) {
  $bmp = New-Object System.Drawing.Bitmap 1920,1080
  $g = [System.Drawing.Graphics]::FromImage($bmp)
  $g.Clear((HexColor '#14181D'))
  $fontH = New-Object System.Drawing.Font('Arial',72,[System.Drawing.FontStyle]::Bold)
  $fontB = New-Object System.Drawing.Font('Arial',42,[System.Drawing.FontStyle]::Regular)
  $bC = New-Object System.Drawing.SolidBrush((HexColor $color))
  $bS = New-Object System.Drawing.SolidBrush((HexColor '#9AA3AD'))
  $f = New-Object System.Drawing.StringFormat; $f.Alignment='Center'
  # title centered top
  $tr = $g.MeasureString($title,$fontH,1920,$f)
  $ty = 360 - $tr.Height/2
  $g.DrawString($title,$fontH,$bC,960,$ty,$f)
  # body lines below
  $ly = 500
  foreach ($l in $lines) { $r=$g.MeasureString($l,$fontB,1700); $g.DrawString($l,$fontB,$bS,960-$r.Width/2,$ly,$f); $ly+=$r.Height+12 }
  # subtitle at bottom
  if ($subtitle) {
    $sf=$fontB.Size*.7; $ss=new-object System.Drawing.Font('Arial',$sf,[System.Drawing.FontStyle]::Italic,[System.Drawing.GraphicsUnit]::Point)
    $sr=$g.MeasureString($subtitle,$ss,1920,$f)
    $g.DrawString($subtitle,$ss,$bS,960,$960-$sr.Height/2,$f)
  }
  $bmp.Save($out,[System.Drawing.Imaging.ImageFormat]::Png)
  $g.Dispose(); $bmp.Dispose()
}
MakeSlide 'El lenguaje de los 10 días' @() '#E8C15A' 'g1.png' ''
MakeSlide 'Netscape quería Java' @('Microsoft hace ruido','La dirección no espera lo académico') '#F5F5F5' 'g2.png' ''
MakeSlide 'La demo de 10 días' @('Cara de Java por fuera','Motor de Scheme por dentro') '#F5F5F5' 'g3.png' ''
MakeSlide 'El doble igual roto' @(""" == 0"" → true","Nació de un favor.","Quedó para siempre.") '#FF6B6B' 'g4.png' ''
MakeSlide 'La guerra de navegadores' @('Microsoft copiaba los bugs','a propósito') '#F5F5F5' 'g5.png' ''
MakeSlide 'JSON · Node · ES6' @('El mayor crítico lo salvó.','En trozos, sin romper nada.') '#F5F5F5' 'g6.png' ''
MakeSlide 'La jaula del estándar' @('Retrocompatibilidad es una jaula.','Se decide en un mes; se paga décadas.') '#E8C15A' 'g7.png' ''
MakeSlide 'EL TALLER CURIOSO' @('Suscribite si querés acompañarla.') '#E8C15A' 'g8.png' ''
Write-Host OK
