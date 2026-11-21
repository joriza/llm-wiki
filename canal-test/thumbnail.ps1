Add-Type -AssemblyName System.Drawing
function HexColor($h) { [System.Drawing.Color]::FromArgb(255,[Convert]::ToInt32($h.Substring(1,2),16),[Convert]::ToInt32($h.Substring(3,2),16),[Convert]::ToInt32($h.Substring(5,2),16)) }

$w=1280; $h=720
$bmp = New-Object System.Drawing.Bitmap($w,$h)
$g = [System.Drawing.Graphics]::FromImage($bmp)
$g.InterpolationMode='HighQualityBicubic'
$g.SmoothingMode='AntiAlias'

# Fondo gradiente oscuro
$bg = New-Object System.Drawing.Drawing2D.LinearGradientBrush(@(0,0,$w/2,$h), (HexColor '#1A1C23'), (HexColor '#0D0F14'), 90)
$g.FillRectangle($bg,0,0,$w,$h)

# Acento diagonal dorado (brand color del canal)
$accent = New-Object System.Drawing.Drawing2D.LinearGradientBrush(@(0,0,$w,$h*0.7), (HexColor '#E8C15A'), (HexColor '#C49B30'), 45)
$g.FillRectangle($accent,0,0,$w,$h)

# Capa semitransparente oscura para contraste
$dark = New-Object System.Drawing.SolidBrush([System.Drawing.Color]::FromArgb(120,0,0,0))
$g.FillRectangle($dark,0,0,$w,$h)

# Título principal
$fMain = New-Object System.Drawing.Font('Arial Black',72,[System.Drawing.FontStyle]::Bold)
$title="JAVASCRIPT"
$titleBrush = New-Object System.Drawing.SolidBrush((HexColor '#FFFFFF'))
$tr = $g.MeasureString($title,$fMain,1200)
$ty = 200 - $tr.Height/2
$g.DrawString($title,$fMain,$titleBrush,(1280-$tr.Width)/2,$ty)

# Subtítulo
$fSub = New-Object System.Drawing.Font('Arial',36,[System.Drawing.FontStyle]::Regular)
$sub="Hecho en 10 días. Roto para siempre."
$subBrush = New-Object System.Drawing.SolidBrush((HexColor '#FFD166'))
$sr = $g.MeasureString($sub,$fSub,1100)
$g.DrawString($sub,$fSub,$subBrush,(1280-$sr.Width)/2,420)

# Número dramático
$fNum = New-Object System.Drawing.Font('Arial Black',120,[System.Drawing.FontStyle]::Bold)
$numBrush = New-Object System.Drawing.SolidBrush((HexColor '#FF6B6B'))
$num="10"
$nr=$g.MeasureString($num,$fNum,600)
$g.DrawString($num,$fNum,$numBrush,80,280)
$diasText="días"
$fDia = New-Object System.Drawing.Font('Arial',36,[System.Drawing.FontStyle]::Italic)
$dr=$g.MeasureString($diasText,$fDia,200)
$g.DrawString($diasText,$fDia,[System.Drawing.Brushes]::WhiteSmoke,100+$nr.Width+10,350)

# Logo pequeño del canal
$fBrand = New-Object System.Drawing.Font('Arial',16,[System.Drawing.FontStyle]::Regular)
$brandBrush = New-Object System.Drawing.SolidBrush((HexColor '#9AA3AD'))
$g.DrawString("EL TALLER CURIOSO",$fBrand,$brandBrush,50,650)

# Borde decorativo sutil
$pBorder = New-Object System.Drawing.Pen((HexColor '#E8C15A'),3)
$g.DrawRectangle($pBorder,2,2,$w-4,$h-4)

$bmp.Save('thumb-guion-001.jpg',[System.Drawing.Imaging.ImageFormat]::Jpeg)
$g.Dispose(); $bmp.Dispose()
Write-Host OK
