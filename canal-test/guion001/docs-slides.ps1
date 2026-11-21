Add-Type -AssemblyName System.Drawing

function Hex($h) { 
  [System.Drawing.Color]::FromArgb(255,[Convert]::ToInt32($h.Substring(1,2),16),[Convert]::ToInt32($h.Substring(3,2),16),[Convert]::ToInt32($h.Substring(5,2),16)) 
}

# Palette cinematic
$darkBg = Hex('#0D0F14')
$midBg = Hex('#1A1C23')
$accent = Hex('#E8C15A')
$textMain = Hex('#FFFFFF')
$textDim = Hex('#9AA3AD')
$textAccent = Hex('#FFD166')
$redAlert = Hex('#FF6B6B')

function DrawDocSlide($num,$title,$subline,$bgColor,$textColor,$accentColor,$extra) {
  $w=1920; $h=1080
  $bmp = New-Object System.Drawing.Bitmap($w,$h)
  $g = [System.Drawing.Graphics]::FromImage($bmp)
  $g.InterpolationMode='HighQualityBicubic'
  $g.SmoothingMode='AntiAlias'
  $g.TextRenderingHint='AntiAliasGridFit'
  
  # Background gradient
  $bgBrush = New-Object System.Drawing.Drawing2D.LinearGradientBrush(@(0,0,0,$h), $bgColor, (Hex '#050608'), 90)
  $g.FillRectangle($bgBrush, 0, 0, $w, $h)
  
  # Subtle grid pattern (tech feel)
  $gridPen = New-Object System.Drawing.Pen((Hex '#FFFFFF'), 1)
  $gridPen.Alignment = 'Center'
  for ($x=0; $x -lt $w; $x+=80) { 
    $g.DrawLine($gridPen, $x, 0, $x, $h)
  }
  for ($y=0; $y -lt $h; $y+=80) { 
    $g.DrawLine($gridPen, 0, $y, $w, $y)
  }
  
  # Year badge top-left
  if ($extra.Year) {
    $yearFont = New-Object System.Drawing.Font('Arial', 28, [System.Drawing.FontStyle]::Bold)
    $yearBrush = New-Object System.Drawing.SolidBrush((Hex $extra.YearColor))
    $yearFmt = New-Object System.Drawing.StringFormat
    $yearFmt.Alignment = 'Near'
    $g.DrawString($extra.Year, $yearFont, $yearBrush, 80, 60, $yearFmt)
    # Separator line
    $sepPen = New-Object System.Drawing.Pen((Hex $extra.YearColor), 2)
    $g.DrawLine($sepPen, 80, 105, 200, 105)
  }
  
  # Main title
  $titleFont = New-Object System.Drawing.Font('Arial Black', 72, [System.Drawing.FontStyle]::Bold)
  $titleBrush = New-Object System.Drawing.SolidBrush((Hex $textColor))
  $titleRect = New-Object System.Drawing.RectangleF(80, 300, $w-160, 180)
  $titleFmt = New-Object System.Drawing.StringFormat
  $titleFmt.Alignment = 'Near'
  $g.DrawString($title, $titleFont, $titleBrush, $titleRect, $titleFmt)
  
  # Accent line under title
  $linePen = New-Object System.Drawing.Pen((Hex $accentColor), 4)
  $g.DrawLine($linePen, 80, 480, 400, 480)
  
  # Subtitle/description
  $subFont = New-Object System.Drawing.Font('Arial', 36, [System.Drawing.FontStyle]::Regular)
  $subBrush = New-Object System.Drawing.SolidBrush((Hex $textDim))
  $subRect = New-Object System.Drawing.RectangleF(80, 520, $w-160, 120)
  $subFmt = New-Object System.Drawing.StringFormat
  $subFmt.Alignment = 'Near'
  $g.DrawString($subline, $subFont, $subBrush, $subRect, $subFmt)
  
  # Number indicator bottom-right
  $numFont = New-Object System.Drawing.Font('Arial', 120, [System.Drawing.FontStyle]::Bold)
  $numBrush = New-Object System.Drawing.SolidBrush((Hex $accentColor))
  $numBrushAlpha = New-Object System.Drawing.SolidBrush([System.Drawing.Color]::FromArgb(40, 255, 255, 255))
  $numRect = New-Object System.Drawing.RectangleF($w-300, $h-200, 200, 150)
  $numFmt = New-Object System.Drawing.StringFormat
  $numFmt.Alignment = 'Far'
  $g.DrawString($num.ToString("00"), $numFont, $numBrushAlpha, $numRect, $numFmt)
  
  # Brand watermark bottom-left
  $brandFont = New-Object System.Drawing.Font('Arial', 16, [System.Drawing.FontStyle]::Italic)
  $brandBrush = New-Object System.Drawing.SolidBrush((Hex '#4A4F59'))
  $g.DrawString("EL TALLER CURIOSO", $brandFont, $brandBrush, 80, $h-40)
  
  $bmp.Save(("slide-$num.jpg"), [System.Drawing.Imaging.ImageFormat]::Jpeg)
  $g.Dispose(); $bmp.Dispose()
  Write-Host "Slide $num created"
}

# 10 documentary-style slides for JavaScript history
DrawDocSlide 1 `
  "EL LENGUAJE DE LOS DIEZ DÍAS" `
  "1995 · Netscape Navigator · Brendan Eich" `
  $midBg $textMain $accent @{Year="1995"; YearColor=$accent}

DrawDocSlide 2 `
  "NETSCAPE QUERÍA JAVA" `
  "La guerra de navegadores estaba por comenzar. Microsoft observaba." `
  '#12141A' $textMain '#4A9EFF' @{Year="1995"; YearColor='#4A9EFF'}

DrawDocSlide 3 `
  "UNA DEMO PARA VENDER" `
  "Por fuera: Java. Por dentro: Scheme. Un híbrido que cambiaría todo." `
  '#14161D' $textMain $accent @{}

DrawDocSlide 4 `
  "EL DOBLE IGUAL ROTO" `
  "'' == 0 → true. null == undefined → true. La paradoja que nadie arregló." `
  '#1A0F0F' $redAlert '#FF6B6B' @{Year="1996"; YearColor='#FF6B6B'}

DrawDocSlide 5 `
  "MICROSOFT COPIÓ TODO" `
  "Ingeniería inversa de comportamiento. Incluso los bugs se copiaron." `
  '#0F1419' $textMain '#00D4AA' @{Year="1996"; YearColor='#00D4AA'}

DrawDocSlide 6 `
  "ECMAScript: EL NOMBR ERRÓNEO" `
  "Netscape regaló el estándar. El nombre sonó a otra cosa. Pero funcionó." `
  '#141A14' $textMain '#7BD97B' @{}

DrawDocSlide 7 `
  "LA EDAD OSCURA" `
  "Los 2000: lenguaje congelado. Críticos ferozes. Sin evolución posible." `
  '#0D0D12' '#6B6B7B' '#9A9ABA' @{}

DrawDocSlide 8 `
  "JSON: EL RESCATE IRÓNICO" `
  "Douglas Crockford despreciaba JS. De su código sacó el formato que salvó al mundo." `
  '#141419' $textMain '#FF9F43' @{Year="2001"; YearColor='#FF9F43'}

DrawDocSlide 9 `
  "NODE: LA REVOLUCIÓN SERVER" `
  "2009: JavaScript sale del navegador. Los back-end clásico entran en pánico." `
  '#0F1914' $textMain '#4ADE80' @{Year="2009"; YearColor='#4ADE80'}

DrawDocSlide 10 `
  "LA Jaula de la Retrocompatibilidad" `
  "Se decide en diez días. Se paga durante décadas. Worse is better." `
  '#141210' $textMain $accent @{}

Write-Host "All slides generated"
