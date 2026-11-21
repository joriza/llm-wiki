Add-Type -AssemblyName System.Drawing

function Hex($h) { 
  [System.Drawing.Color]::FromArgb(255,[Convert]::ToInt32($h.Substring(1,2),16),[Convert]::ToInt32($h.Substring(3,2),16),[Convert]::ToInt32($h.Substring(5,2),16)) 
}

$slides = @(
  @{Num=1; Title="EL LENGUAJE DE LOS DIEZ DÍAS"; Sub="1995 · Netscape Navigator · Brendan Eich"; BG="#1A1C23"; TC="FFFFFF"; AC="#E8C15A"; Yr="1995"; YC="#E8C15A"},
  @{Num=2; Title="NETSCAPE QUERÍA JAVA"; Sub="La guerra de navegadores estaba por comenzar"; BG="#12141A"; TC="FFFFFF"; AC="#4A9EFF"; Yr="1995"; YC="#4A9EFF"},
  @{Num=3; Title="UNA DEMO PARA VENDER"; Sub="Por fuera: Java. Por dentro: Scheme."; BG="#14161D"; TC="FFFFFF"; AC="#E8C15A"; Yr="MAYO"; YC="#FFD166"},
  @{Num=4; Title="EL DOBLE IGUAL ROTO"; Sub="'' == 0 → true. La paradoja nunca arreglada."; BG="#1A0F0F"; TC="FF6B6B"; AC="#FF6B6B"; Yr="BUG"; YC="#FF6B6B"},
  @{Num=5; Title="MICROSOFT COPIÓ TODO"; Sub="Ingeniería inversa... incluso los bugs."; BG="#0F1419"; TC="FFFFFF"; AC="#00D4AA"; Yr="1996"; YC="#00D4AA"},
  @{Num=6; Title="ECMASCRIPT"; Sub="El nombre erróneo que salvó al estándar."; BG="#141A14"; TC="FFFFFF"; AC="#7BD97B"; Yr="1997"; YC="#7BD97B"},
  @{Num=7; Title="LA EDAD OSCURA"; Sub="Los 2000: lenguaje congelado sin evolución."; BG="#0D0D12"; TC="6B6B7B"; AC="#9A9ABA"; Yr="2000"; YC="#9A9ABA"},
  @{Num=8; Title="JSON: EL RESCATE IRÓNICO"; Sub="Crockford despreciaba JS. De ahí nació JSON."; BG="#141419"; TC="FFFFFF"; AC="#FF9F43"; Yr="2001"; YC="#FF9F43"},
  @{Num=9; Title="NODE: REVOLUCIÓN SERVER"; Sub="JavaScript sale del navegador. Pánico total."; BG="#0F1914"; TC="FFFFFF"; AC="#4ADE80"; Yr="2009"; YC="#4ADE80"},
  @{Num=10; Title="LA JAULA DEL ESTÁNDAR"; Sub="Diez días deciden lo que pagan décadas."; BG="#141210"; TC="FFFFFF"; AC="#E8C15A"; Yr="FIN"; YC="#E8C15A"}
)

foreach ($s in $slides) {
  $w=1920; $h=1080
  $bmp = New-Object System.Drawing.Bitmap($w,$h)
  $g = [System.Drawing.Graphics]::FromImage($bmp)
  $g.InterpolationMode='HighQualityBicubic'
  $g.SmoothingMode='AntiAlias'
  
  # Background
  $bgBrush = New-Object System.Drawing.SolidBrush((Hex $s.BG))
  $g.FillRectangle($bgBrush, 0, 0, $w, $h)
  
  # Grid subtle
  $gridPen = New-Object System.Drawing.Pen((Hex '#FFFFFF'), 1)
  $gridPen.Alignment = 'Center'
  for ($x=0; $x -lt $w; $x+=100) { $g.DrawLine($gridPen, $x, 0, $x, $h) }
  for ($y=0; $y -lt $h; $y+=100) { $g.DrawLine($gridPen, 0, $y, $w, $y) }
  
  # Year badge
  $yearFont = New-Object System.Drawing.Font('Arial', 28, [System.Drawing.FontStyle]::Bold)
  $yearBrush = New-Object System.Drawing.SolidBrush((Hex $s.YC))
  $g.DrawString($s.Yr, $yearFont, $yearBrush, 80, 60)
  
  # Main title
  $titleFont = New-Object System.Drawing.Font('Arial Black', 72, [System.Drawing.FontStyle]::Bold)
  $titleBrush = New-Object System.Drawing.SolidBrush((Hex $s.TC))
  $g.DrawString($s.Title, $titleFont, $titleBrush, 80, 350)
  
  # Accent line
  $linePen = New-Object System.Drawing.Pen((Hex $s.AC), 4)
  $g.DrawLine($linePen, 80, 500, 350, 500)
  
  # Subtitle
  $subFont = New-Object System.Drawing.Font('Arial', 36, [System.Drawing.FontStyle]::Regular)
  $subBrush = New-Object System.Drawing.SolidBrush((Hex '#9AA3AD'))
  $g.DrawString($s.Sub, $subFont, $subBrush, 80, 540)
  
  # Big number watermark
  $numFont = New-Object System.Drawing.Font('Arial Black', 200, [System.Drawing.FontStyle]::Bold)
  $numBrush = New-Object System.Drawing.SolidBrush([System.Drawing.Color]::FromArgb(25, 255, 255, 255))
  $numStr = $s.Num.ToString("00")
  $g.DrawString($numStr, $numFont, $numBrush, $w - 350, $h - 280)
  
  # Brand
  $brandFont = New-Object System.Drawing.Font('Arial', 16, [System.Drawing.FontStyle]::Italic)
  $brandBrush = New-Object System.Drawing.SolidBrush((Hex '#4A4F59'))
  $g.DrawString("EL TALLER CURIOSO", $brandFont, $brandBrush, 80, $h - 40)
  
  $bmp.Save(("slide-$($s.Num:00).jpg"), [System.Drawing.Imaging.ImageFormat]::Jpeg)
  $g.Dispose(); $bmp.Dispose()
  Write-Host "Slide $($s.Num:00) done"
}
Write-Host "ALL DONE"
