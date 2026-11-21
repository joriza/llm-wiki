"""Genera variaciones progresivas de slides para el video documental."""
from PIL import Image, ImageDraw, ImageFont
import os

W, H = 1920, 1080
FONT_BOLD = "C:/Windows/Fonts/Arialbd.ttf"
FONT_REG = "C:/Windows/Fonts/Arial.ttf"

def hex_rgb(h):
    h = h.lstrip('#')
    return tuple(int(h[i:i+2], 16) for i in (0, 2, 4))

def load_font(size, bold=False):
    try:
        path = FONT_BOLD if bold else FONT_REG
        return ImageFont.truetype(path, size)
    except Exception:
        return ImageFont.load_default()

def base_slide(n, title, subtitle, bg, accent, progress=0.0):
    """Slide base con overlay de progreso."""
    img = Image.new('RGB', (W, H), hex_rgb(bg))
    draw = ImageDraw.Draw(img)
    
    # Grid sutil
    for x in range(0, W, 80):
        draw.line([(x, 0), (x, H)], fill=(255, 255, 255, 10), width=1)
    for y in range(0, H, 80):
        draw.line([(0, y), (W, y)], fill=(255, 255, 255, 10), width=1)
    
    # Progress bar superior
    bar_width = int(W * progress)
    if bar_width > 0:
        draw.rectangle([0, 0, bar_width, 4], fill=hex_rgb(accent))
    
    # Año badge
    year_font = load_font(28, True)
    year_txt = f"199{n}" if n <= 9 else str(n)
    draw.text((80, 60), year_txt, fill=hex_rgb(accent), font=year_font)
    
    # Título
    title_font = load_font(64, True)
    draw.text((80, 360), title, fill=(255, 255, 255), font=title_font)
    
    # Línea de acento
    line_x = 80 + int(240 * min(progress * 1.5, 1.0))
    draw.rectangle([80, 490, line_x, 493], fill=hex_rgb(accent))
    
    # Subtítulo (aparece después del 20%)
    if progress > 0.2:
        sub_font = load_font(30)
        draw.text((80, 530), subtitle, fill=(154, 163, 173), font=sub_font)
    
    # Watermark número
    num_font = load_font(160, True)
    alpha = int(30 + 20 * progress)
    draw.text((1580, 880), f"{n:02d}", fill=(alpha, 255, 255, alpha), font=num_font)
    
    # Marca
    brand_font = load_font(14)
    draw.text((80, 1045), "EL TALLER CURIOSO", fill=(74, 79, 89), font=brand_font)
    
    return img, draw

def save_variants(prefix, n, title, subtitle, bg, accent, extra_draws, count=4):
    """Genera N variantes con diferentes elementos apareciendo."""
    for i in range(count):
        prog = i / (count - 1)
        img, draw = base_slide(n, title, subtitle, bg, accent, prog)
        
        # Dibujar extras según variante
        for draw_fn in extra_draws:
            if callable(draw_fn):
                draw_fn(draw, prog, i)
        
        out = f"{prefix}-{n:02d}-v{i+1}.jpg"
        img.save(out, 'JPEG', quality=95)
        print(f"  {out}")

# ===== CONFIGURACIÓN DE SLIDES PROGRESIVAS =====

# Slide 1: El lenguaje de los 10 días (reloj)
def slide1_extra(draw, prog, variant):
    from math import cos, sin, radians
    cx, cy, r = 1550, 480, 180
    
    # Reloj aparece gradualmente
    if prog > 0.1:
        draw.ellipse([cx-r, cy-r, cx+r, cy+r], outline='#E8C15A', width=4)
    if prog > 0.3:
        for i in range(12):
            angle = radians(i * 30 - 90)
            x1 = cx + int((r-15) * cos(angle))
            y1 = cy + int((r-15) * sin(angle))
            x2 = cx + int(r*0.9 * cos(angle))
            y2 = cy + int(r*0.9 * sin(angle))
            draw.line([(x1,y1),(x2,y2)], fill='#E8C15A', width=2)
    if prog > 0.5:
        angle = radians(38 * 360 - 90)  # ~10 días
        mx = cx + int(r*0.7 * cos(angle))
        my = cy + int(r*0.7 * sin(angle))
        draw.line([(cx,cy),(mx,my)], fill='#E8C15A', width=4)
    if prog > 0.7:
        draw.ellipse([cx-8,cy-8,cx+8,cy+8], fill='#E8C15A')

save_variants("slide", 1, "EL LENGUAJE DE LOS DIEZ DIAS",
    "Netscape Navigator · Brendan Eich · Mayo 1995",
    "#1A1C23", "#E8C15A", [slide1_extra], 5)

# Slide 2: Netscape quería Java (ventana navegador)
def slide2_extra(draw, prog, variant):
    if prog > 0.2:
        # Ventana aparece
        draw.rectangle([1300, 200, 1820, 540], outline='#4A9EFF', width=3)
        draw.rectangle([1300, 200, 1820, 230], fill=hex_rgb('#2A2D35'))
        for i, c in enumerate(['#FF5F57', '#FEBC2E', '#28C840']):
            draw.ellipse([1315+i*25, 208, 1330+i*25, 223], fill=hex_rgb(c))
    if prog > 0.4:
        font_sm = load_font(18)
        draw.text((1320, 250), "// java-like syntax", fill='#4A9EFF', font=font_sm)
    if prog > 0.6:
        font_sm = load_font(18)
        draw.text((1320, 280), "function script() {", fill=(200, 200, 200), font=font_sm)
    if prog > 0.8:
        font_sm = load_font(18)
        draw.text((1340, 310), "return scheme;", fill=(100, 200, 150), font=font_sm)
        draw.text((1320, 340), "}", fill=(200, 200, 200), font=font_sm)

save_variants("slide", 2, "NETSCAPE QUERIA JAVA",
    "La guerra de navegadores estaba por comenzar",
    "#12141A", "#4A9EFF", [slide2_extra], 5)

# Slide 3: Una demo para vender (capas superpuestas)
def slide3_extra(draw, prog, variant):
    if prog > 0.2:
        draw.rectangle([1350, 200, 1700, 450], outline='#E8C15A', width=3)
    if prog > 0.5:
        draw.rectangle([1400, 250, 1750, 500], outline='#7BD97B', width=3)
    if prog > 0.8:
        f = load_font(24, True)
        draw.text((1380, 480), "JAVA", fill='#E8C15A', font=f)
        draw.text((1450, 530), "SCHEME", fill='#7BD97B', font=f)

save_variants("slide", 3, "UNA DEMO PARA VENDER",
    "Por fuera: Java. Por dentro: Scheme.",
    "#14161D", "#FFD166", [slide3_extra], 5)

# Slide 4: El doble igual roto
def slide4_extra(draw, prog, variant):
    if prog > 0.2:
        bar_y1 = 400; bar_y2 = 450; gap = 40
        draw.rectangle([1450, bar_y1, 1510, bar_y1+12], fill='#FF6B6B')
        draw.rectangle([1450, bar_y2, 1510, bar_y2+12], fill='#FF6B6B')
    if prog > 0.5:
        draw.rectangle([1550, 400, 1650, 412], fill='#FF6B6B')
        draw.rectangle([1550, 450, 1650, 462], fill='#FF6B6B')
    if prog > 0.7:
        draw.line([(1500, 395), (1560, 465)], fill='#FF6B6B', width=4)
    if prog > 0.9:
        f = load_font(36)
        draw.text((1400, 300), '"" == 0', fill='#FF6B6B', font=f)
        draw.text((1650, 300), 'true', fill='#9AA3AD', font=f)

save_variants("slide", 4, "EL DOBLE IGUAL ROTO",
    "'' == 0 es true. La paradoja que nadie arreglo.",
    "#1A0F0F", "#FF6B6B", [slide4_extra], 5)

# Slide 5: Microsoft copió todo (redes comparadas)
def slide5_extra(draw, prog, variant):
    from math import cos, sin, radians
    if prog > 0.2:
        # Red superior (Netscape)
        for i in range(4):
            angle = radians(i * 90)
            px = 1450 + int(80 * cos(angle))
            py = 300 + int(60 * sin(angle))
            draw.ellipse([px-10, py-10, px+10, py+10], fill='#00D4AA')
    if prog > 0.5:
        # Red inferior (Microsoft)
        for i in range(4):
            angle = radians(i * 90 + 45)
            px = 1450 + int(80 * cos(angle))
            py = 650 + int(60 * sin(angle))
            draw.ellipse([px-10, py-10, px+10, py+10], fill='#FF9F43')
    if prog > 0.8:
        draw.line([(1550, 400), (1550, 550)], fill='#00D4AA', width=3)
        f = load_font(20, True)
        draw.text((1650, 450), "CLONE", fill='#00D4AA', font=f)

save_variants("slide", 5, "MICROSOFT COPIO TODO",
    "Ingenieria inversa... incluso los bugs.",
    "#0F1419", "#00D4AA", [slide5_extra], 5)

# Slide 6: ECMAScript (documento)
def slide6_extra(draw, prog, variant):
    if prog > 0.2:
        draw.rectangle([1400, 250, 1800, 600], outline='#7BD97B', width=3)
        draw.line([(1400, 280), (1800, 280)], fill='#7BD97B', width=2)
    if prog > 0.5:
        for i in range(6):
            draw.line([(1420, 310+i*35), (1750-i*20, 310+i*35)], fill=(80, 100, 80), width=2)
    if prog > 0.8:
        draw.ellipse([1550, 480, 1650, 580], outline='#7BD97B', width=4)
        f = load_font(18, True)
        draw.text((1575, 515), "ECMA", fill='#7BD97B', font=f)

save_variants("slide", 6, "ECMASCRIPT",
    "El nombre erroneo que salvo al estandar.",
    "#141A14", "#7BD97B", [slide6_extra], 5)

# Slide 7: La edad oscura
def slide7_extra(draw, prog, variant):
    if prog > 0.3:
        f = load_font(48, True)
        draw.text((1450, 350), "2000s", fill='#6B6B7B', font=f)
    if prog > 0.6:
        draw.rectangle([1400, 280, 1750, 500], outline='#6B6B7B', width=2)
        # Pixel decay effect
        for i in range(10):
            y = 280 + i * 22
            alpha = int(30 * (i / 10))
            draw.rectangle([1400, y, 1750, y+2], fill=(alpha, alpha, alpha+10))
    if prog > 0.9:
        f = load_font(24)
        draw.text((1450, 550), "[sin evolucion]", fill='#4A4A5A', font=f)

save_variants("slide", 7, "LA EDAD OSCURA",
    "Los 2000: lenguaje congelado sin evolucion.",
    "#0D0D12", "#9A9ABA", [slide7_extra], 4)

print("\n=== SLIDES PROGRESIVAS GENERADAS ===")
print("Total por sección: 4-5 variaciones")
