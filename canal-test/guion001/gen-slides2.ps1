Add-Type -AssemblyName System.Drawing
function Hex($h) { [System.Drawing.Color]::FromArgb(255,[Convert]::ToInt32($h.Substring(1,2),16),[Convert]::ToInt32($h.Substring(3,2),16),[Convert]::ToInt32($h.Substring(5,2),16)) }

# 10 slides data
$slides = @(
  @{N=1; T="EL LENGUAJE DE LOS DIEZ DÍAS"; S="1995 · Netscape Navigator · Brendan Eich"; BG="#1A1C23"; TC="#FFFFFF"; AC="#E8C15A"; YR="1995"; YC="#E8C15A"},
  @{N=2; T="NETSCAPE QUERÍA JAVA"; S="La guerra de navegadores estaba por comenzar"; BG="#12141A"; TC="#FFFFFF"; AC="#4A9EFF"; YR="1995"; YC="#4A9EFF"},
  @{N=3; T="UNA DEMO PARA VENDER"; S="Por fuera: Java. Por dentro: Scheme."; BG="#14161D"; TC="#FFFFFF"; AC="#E8C15A"; YR="MAYO"; YC="#FFD166"},
  @{N=4; T="EL DOBLE IGUAL ROTO"; S="'' == 0 → true. La paradoja nunca arreglada."; BG="#1A0F0F"; TC="#FF6B6B"; AC="#FF6B6B"; YR="BUG"; YC="#FF6B6B"},
  @{N=5; T="MICROSOFT COPIÓ TODO"; S="Ingeniería inversa... incluso los bugs."; BG="#0F1419"; TC="#FFFFFF"; AC="#00D4AA"; YR="1996"; YC="#00D4AA"},
  @{N=6; T="ECMASCRIPT"; S="El nombre erróneo que salvó al estándar."; BG="#141A14"; TC="#FFFFFF"; AC="#7BD97B"; YR="1997"; YC="#7BD97B"},
  @{N=7; T="LA EDAD OSCURA"; S="Los 2000: lenguaje congelado sin evolución."; BG="#0D0D12"; TC="#6B6B7B"; AC="#9A9ABA"; YR="2000"; YC="#9A9ABA"},
  @{N=8; T="JSON: EL RESCATE IRÓNICO"; S="Crockford despreciaba JS. De ahí nació JSON."; BG="#141419"; TC="#FFFFFF"; AC="#FF9F43"; YR="2001"; YC="#FF9F43"},
  @{N=9; T="NODE: REVOLUCIÓN SERVER"; S="JavaScript sale del navegador. Pánico total."; BG="#0F1914"; TC="#FFFFFF"; AC="#4ADE80"; YR="2009"; YC="#4ADE80"},
  @{N=10; T="LA JAULA DEL ESTÁNDAR"; S="Diez días deciden lo que pagan décadas."; BG="#141210"; TC="#FFFFFF"; AC="#E8C15A"; YR="FIN"; YC="#E8C15A"}
)

foreach ($s in $slides) {
  $n = $s.N.ToString("D2")
  $w=1920; $h=1080
  $bmp = New-Object System.Drawing.Bitmap($w,$h)
  $g = [System.Drawing.Graphics]::FromImage($bmp)
  $g.InterpolationMode='HighQualityBicubic'
  
  # BG
  $bg = New-Object System.Drawing.SolidBrush((Hex $s.BG))
  $g.FillRectangle($bg, 0, 0, $w, $h)
  
  # Grid
  $pen = New-Object System.Drawing.Pen((Hex '#FFFFFF'), 1)
  for ($x=0; $x -lt $w; $x+=100) { $g.DrawLine($pen, $x, 0, $x, $h) }
  for ($y=0; $y -lt $h; $y+=100) { $g.DrawLine($pen, 0, $y, $w, $y) }
  
  # Year
  $yfont = New-Object System.Drawing.Font('Arial', 28, [System.Drawing.FontStyle]::Bold)
  $ybrush = New-Object System.Drawing.SolidBrush((Hex $s.YC))
  $g.DrawString($s.YR, $yfont, $ybrush, 80, 60)
  
  # Title
  $tfont = New-Object System.Drawing.Font('Arial Black', 64, [System.Drawing.FontStyle]::Bold)
  $tbrush = New-Object System.Drawing.SolidBrush((Hex $s.TC))
  $g.DrawString($s.T, $tfont, $tbrush, 80, 380)
  
  # Line
  $lpen = New-Object System.Drawing.Pen((Hex $s.AC), 3)
  $g.DrawLine($lpen, 80, 520, 300, 520)
  
  # Sub
  $sfnt = New-Object System.Drawing.Font('Arial', 32, [System.Drawing.FontStyle]::Regular)
  $sbrush = New-Object System.Drawing.SolidBrush((Hex '#9AA3AD'))
  $g.DrawString($s.S, $sfnt, $sbrush, 80, 560)
  
  # Big watermark number
  $nfnt = New-Object System.Drawing.Font('Arial Black', 240, [System.Drawing.FontStyle]::Bold)
  $nbrush = New-Object System.Drawing.SolidBrush([System.Drawing.Color]::FromArgb(20, 255, 255, 255))
  $g.DrawString($n, $nfnt, $nbrush, $w - 380, $h - 320)
  
  # Brand
  $bfnt = New-Object System.Drawing.Font('Arial', 16, [System.Drawing.FontStyle]::Italic)
  $bbrush = New-Object System.Drawing.SolidBrush((Hex '#4A4F59'))
  $g.DrawString("EL TALLER CURIOSO", $bfnt, $bbrush, 80, $h - 40)
  
  $out = "slide-$n.jpg"
  $bmp.Save($out, [System.Drawing.Imaging.ImageFormat]::Jpeg)
  $g.Dispose(); $bmp.Dispose()
  Write-Host "Created $out"
}
Write-Host "ALL DONE"
