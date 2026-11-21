Add-Type -AssemblyName System.Drawing
function H($h) { [System.Drawing.Color]::FromArgb(255,[Convert]::ToInt32($h.Substring(1,2),16),[Convert]::ToInt32($h.Substring(3,2),16),[Convert]::ToInt32($h.Substring(5,2),16)) }

$data = @(
  [PSCustomObject]@{N=1; T="EL LENGUAJE DE LOS DIEZ DIAS"; S="1995 · Netscape Navigator · Brendan Eich"; BG="#1A1C23"; TC="#FFFFFF"; AC="#E8C15A"; YR="1995"},
  [PSCustomObject]@{N=2; T="NETSCAPE QUERIA JAVA"; S="La guerra de navegadores estaba por comenzar"; BG="#12141A"; TC="#FFFFFF"; AC="#4A9EFF"; YR="1995"},
  [PSCustomObject]@{N=3; T="UNA DEMO PARA VENDER"; S="Por fuera: Java. Por dentro: Scheme."; BG="#14161D"; TC="#FFFFFF"; AC="#E8C15A"; YR="MAYO"},
  [PSCustomObject]@{N=4; T="EL DOBLE IGUAL ROTO"; S="'' == 0 -> true. La paradoja nunca arreglada."; BG="#1A0F0F"; TC="#FF6B6B"; AC="#FF6B6B"; YR="BUG"},
  [PSCustomObject]@{N=5; T="MICROSOFT COPIO TODO"; S="Ingenieria inversa... incluso los bugs."; BG="#0F1419"; TC="#FFFFFF"; AC="#00D4AA"; YR="1996"},
  [PSCustomObject]@{N=6; T="ECMASCRIPT"; S="El nombre erroneo que salvo al estandar."; BG="#141A14"; TC="#FFFFFF"; AC="#7BD97B"; YR="1997"},
  [PSCustomObject]@{N=7; T="LA EDAD OSCURA"; S="Los 2000: lenguaje congelado sin evolucion."; BG="#0D0D12"; TC="#6B6B7B"; AC="#9A9ABA"; YR="2000"},
  [PSCustomObject]@{N=8; T="JSON: EL RESCATE IRONICO"; S="Crockford despreciaba JS. De ahi nacio JSON."; BG="#141419"; TC="#FFFFFF"; AC="#FF9F43"; YR="2001"},
  [PSCustomObject]@{N=9; T="NODE: REVOLUCION SERVER"; S="JavaScript sale del navegador. Panico total."; BG="#0F1914"; TC="#FFFFFF"; AC="#4ADE80"; YR="2009"},
  [PSCustomObject]@{N=10; T="LA JAULA DEL ESTANDAR"; S="Diez dias deciden lo que pagan decadas."; BG="#141210"; TC="#FFFFFF"; AC="#E8C15A"; YR="FIN"}
)

foreach ($d in $data) {
  $n = $d.N.ToString("00")
  $w=1920; $h=1080
  $bmp = New-Object System.Drawing.Bitmap($w,$h)
  $g = [System.Drawing.Graphics]::FromImage($bmp)
  $g.InterpolationMode='HighQualityBicubic'
  
  # Background
  $bgB = New-Object System.Drawing.SolidBrush((H $d.BG))
  $g.FillRectangle($bgB, 0, 0, $w, $h)
  
  # Grid
  $pen = New-Object System.Drawing.Pen((H '#FFFFFF'), 1)
  for ($x=0; $x -lt $w; $x+=100) { $g.DrawLine($pen, $x, 0, $x, $h) }
  for ($y=0; $y -lt $h; $y+=100) { $g.DrawLine($pen, 0, $y, $w, $y) }
  
  # Year
  $yf = New-Object System.Drawing.Font('Arial', 28, [System.Drawing.FontStyle]::Bold)
  $yb = New-Object System.Drawing.SolidBrush((H '#E8C15A'))
  $g.DrawString($d.YR, $yf, $yb, 80, 60)
  
  # Title
  $tf = New-Object System.Drawing.Font('Arial Black', 64, [System.Drawing.FontStyle]::Bold)
  $tb = New-Object System.Drawing.SolidBrush((H $d.TC))
  $g.DrawString($d.T, $tf, $tb, 80, 360)
  
  # Line
  $lp = New-Object System.Drawing.Pen((H $d.AC), 3)
  $g.DrawLine($lp, 80, 510, 320, 510)
  
  # Subtitle
  $sf = New-Object System.Drawing.Font('Arial', 30, [System.Drawing.FontStyle]::Regular)
  $sb = New-Object System.Drawing.SolidBrush((H '#9AA3AD'))
  $g.DrawString($d.S, $sf, $sb, 80, 550)
  
  # Watermark number
  $nf = New-Object System.Drawing.Font('Arial Black', 220, [System.Drawing.FontStyle]::Bold)
  $nb = New-Object System.Drawing.SolidBrush([System.Drawing.Color]::FromArgb(18,255,255,255))
  $g.DrawString($n, $nf, $nb, 1540, 780)
  
  # Brand
  $bf = New-Object System.Drawing.Font('Arial', 14, [System.Drawing.FontStyle]::Italic)
  $bb = New-Object System.Drawing.SolidBrush((H '#4A4F59'))
  $g.DrawString("EL TALLER CURIOSO", $bf, $bb, 80, $h-35)
  
  $out = "slide-$n.jpg"
  $bmp.Save($out, [System.Drawing.Imaging.ImageFormat]::Jpeg)
  $g.Dispose(); $bmp.Dispose()
  Write-Host "Created $out"
}
Write-Host "=== ALL DONE ==="
