from PIL import Image, ImageDraw, ImageFont
import math

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

def draw_clock(draw, cx, cy, r, accent, progress=0.5):
    draw.ellipse([cx-r, cy-r, cx+r, cy+r], outline=accent, width=4)
    for i in range(12):
        angle = math.radians(i * 30 - 90)
        x1 = cx + int((r-15) * math.cos(angle))
        y1 = cy + int((r-15) * math.sin(angle))
        x2 = cx + int(r*0.9 * math.cos(angle))
        y2 = cy + int(r*0.9 * math.sin(angle))
        draw.line([(x1,y1),(x2,y2)], fill=accent, width=2)
    angle = math.radians(progress * 360 - 90)
    mx = cx + int(r*0.7 * math.cos(angle))
    my = cy + int(r*0.7 * math.sin(angle))
    draw.line([(cx,cy),(mx,my)], fill=accent, width=4)
    draw.ellipse([cx-8,cy-8,cx+8,cy+8], fill=accent)

def draw_browser_window(draw, x, y, w, h, accent):
    draw.rectangle([x, y, x+w, y+h], outline=accent, width=3)
    draw.rectangle([x, y, x+w, y+30], fill=hex_rgb('#2A2D35'))
    colors = ['#FF5F57', '#FEBC2E', '#28C840']
    for i, c in enumerate(colors):
        draw.ellipse([x+15+i*25, y+8, x+30+i*25, y+23], fill=hex_rgb(c))
    font_sm = load_font(18)
    draw.text((x+20, y+50), "// java-like syntax", fill=accent, font=font_sm)
    draw.text((x+20, y+80), "function script() {", fill=(200, 200, 200), font=font_sm)
    draw.text((x+40, y+110), "return scheme;", fill=(100, 200, 150), font=font_sm)
    draw.text((x+20, y+140), "}", fill=(200, 200, 200), font=font_sm)

def draw_equals_broken(draw, cx, cy, size, color):
    bar_y1 = cy - size//4
    bar_y2 = cy + size//4
    gap = size // 6
    draw.rectangle([cx-size//2, bar_y1, cx-gap//2, bar_y1+8], fill=color)
    draw.rectangle([cx-size//2, bar_y2, cx-gap//2, bar_y2+8], fill=color)
    draw.rectangle([cx+gap//2, bar_y1, cx+size//2, bar_y1+8], fill=color)
    draw.rectangle([cx+gap//2, bar_y2, cx+size//2, bar_y2+8], fill=color)
    draw.line([(cx-10, bar_y1-5), (cx+10, bar_y2+15)], fill='#FF6B6B', width=3)

def draw_network_nodes(draw, cx, cy, nodes=5, color='#E8C15A'):
    positions = []
    for i in range(nodes):
        angle = (i / nodes) * 2 * math.pi
        px = cx + 100 * math.cos(angle)
        py = cy + 70 * math.sin(angle)
        positions.append((px, py))
    for i in range(len(positions)):
        for j in range(i+1, len(positions)):
            draw.line([positions[i], positions[j]], fill=(60, 65, 75), width=1)
    for px, py in positions:
        draw.ellipse([px-12, py-12, px+12, py+12], fill=color)
        draw.ellipse([px-8, py-8, px+8, py+8], fill=hex_rgb('#1A1C23'))

def draw_doc_icon(draw, x, y, w, h, accent):
    draw.rectangle([x, y, x+w, y+h], outline=accent, width=3)
    draw.line([(x, y+30), (x+w, y+30)], fill=accent, width=2)
    for i in range(5):
        draw.line([(x+15, y+50+i*25), (x+50+i*40, y+50+i*25)], fill=(80, 90, 100), width=2)
    draw.ellipse([x+w//2-25, y+h-50, x+w//2+25, y+h], outline=accent, width=3)
    font_s = load_font(16, True)
    draw.text((x+w//2-20, y+h-40), "STD", fill=accent, font=font_s)

def draw_json_braces(draw, cx, cy, size, color):
    font_big = load_font(size, True)
    draw.text((cx-size, cy), "{ }", fill=color, font=font_big)

def draw_tree_node(draw, cx, top, branch_color):
    draw.ellipse([cx-25, top-25, cx+25, top+25], fill=branch_color)
    draw.line([(cx, top+25), (cx-80, top+100)], fill=branch_color, width=4)
    draw.line([(cx, top+25), (cx+80, top+100)], fill=branch_color, width=4)
    draw.line([(cx, top+25), (cx, top+100)], fill=branch_color, width=4)
    for dx in [-80, 0, 80]:
        draw.ellipse([cx+dx-15, top+85, cx+dx+15, top+115], fill=hex_rgb('#2D5A3D'))

def draw_cage(draw, x, y, w, h, accent):
    step = 40
    for i in range(0, h, step):
        draw.line([(x, y+i), (x+w, y+i)], fill=accent, width=2)
    for i in range(0, w, step):
        draw.line([(x+i, y), (x+i, y+h)], fill=accent, width=2)
    draw.rectangle([x+w//2-30, y+h//2-20, x+w//2+30, y+h//2+20], outline='#FFD166', width=4)
    draw.arc([x+w//2-20, y+h//2-40, x+w//2+20, y+h//2], 180, 0, fill='#FFD166', width=4)

def create_slide(n, title, subtitle, bg, accent, draw_func):
    img = Image.new('RGB', (W, H), hex_rgb(bg))
    draw = ImageDraw.Draw(img)
    
    # Grid sutil
    for x in range(0, W, 80):
        draw.line([(x, 0), (x, H)], fill=(255, 255, 255, 12), width=1)
    for y in range(0, H, 80):
        draw.line([(0, y), (W, y)], fill=(255, 255, 255, 12), width=1)
    
    # Year badge
    year_font = load_font(28, True)
    year_text = f"199{n}" if n <= 9 else str(n)
    draw.text((80, 60), year_text, fill=hex_rgb(accent), font=year_font)
    
    # Title
    title_font = load_font(64, True)
    draw.text((80, 360), title, fill=(255, 255, 255), font=title_font)
    
    # Accent line
    draw.rectangle([80, 490, 320, 493], fill=hex_rgb(accent))
    
    # Subtitle
    sub_font = load_font(30)
    draw.text((80, 530), subtitle, fill=(154, 163, 173), font=sub_font)
    
    # Watermark numero
    num_font = load_font(160, True)
    num_str = f"{n:02d}"
    draw.text((1580, 880), num_str, fill=(25, 255, 255, 25), font=num_font)
    
    # Brand
    brand_font = load_font(14)
    draw.text((80, 1045), "EL TALLER CURIOSO", fill=(74, 79, 89), font=brand_font)
    
    # Visual element
    draw_func(draw)
    
    out = f"slide-{n:02d}-v2.jpg"
    img.save(out, 'JPEG', quality=95)
    print(f"Created {out}")

# ===== DEFINICION DE SLIDES =====

create_slide(1, "EL LENGUAJE DE LOS DIEZ DIAS", 
    "Netscape Navigator · Brendan Eich · Mayo 1995",
    "#1A1C23", "#E8C15A", 
    lambda d: draw_clock(d, 1550, 480, 180, '#E8C15A', 0.38))

create_slide(2, "NETSCAPE QUERIA JAVA", 
    "La guerra de navegadores estaba por comenzar",
    "#12141A", "#4A9EFF",
    lambda d: draw_browser_window(d, 1300, 200, 520, 340, '#4A9EFF'))

create_slide(3, "UNA DEMO PARA VENDER", 
    "Por fuera: Java. Por dentro: Scheme.",
    "#14161D", "#FFD166",
    lambda d: (
        d.rectangle([1350, 200, 1700, 450], outline='#E8C15A', width=3),
        d.rectangle([1400, 250, 1750, 500], outline='#7BD97B', width=3)
    ) or None or exec('f=load_font(24,True); d.text((1380,480),"JAVA",fill=\"#E8C15A\",font=f); d.text((1450,530),"SCHEME",fill=\"#7BD97B\",font=f)'))

# Mejor definirlas separadamente para evitar problemas:
print("\n--- Generando slides con elementos visuales ---")

# Slide 3 corregida
img3 = Image.new('RGB', (W, H), hex_rgb('#14161D'))
draw3 = ImageDraw.Draw(img3)
for x in range(0, W, 80):
    draw3.line([(x, 0), (x, H)], fill=(255, 255, 255, 12), width=1)
for y in range(0, H, 80):
    draw3.line([(0, y), (W, y)], fill=(255, 255, 255, 12), width=1)
draw3.text((80, 60), "1993", fill=hex_rgb('#FFD166'), font=load_font(28, True))
draw3.text((80, 360), "UNA DEMO PARA VENDER", fill=(255, 255, 255), font=load_font(64, True))
draw3.rectangle([80, 490, 320, 493], fill=hex_rgb('#FFD166'))
draw3.text((80, 530), "Por fuera: Java. Por dentro: Scheme.", fill=(154, 163, 173), font=load_font(30))
draw3.text((1580, 880), "03", fill=(25, 255, 255, 25), font=load_font(160, True))
draw3.text((80, 1045), "EL TALLER CURIOSO", fill=(74, 79, 89), font=load_font(14))
# Capas superpuestas
draw3.rectangle([1350, 200, 1700, 450], outline='#E8C15A', width=3)
draw3.rectangle([1400, 250, 1750, 500], outline='#7BD97B', width=3)
f = load_font(24, True)
draw3.text((1380, 480), "JAVA", fill='#E8C15A', font=f)
draw3.text((1450, 530), "SCHEME", fill='#7BD97B', font=f)
img3.save("slide-03-v2.jpg", 'JPEG', quality=95)
print("Created slide-03-v2.jpg")

# Slide 4 - doble igual roto
img4 = Image.new('RGB', (W, H), hex_rgb('#1A0F0F'))
draw4 = ImageDraw.Draw(img4)
for x in range(0, W, 80):
    draw4.line([(x, 0), (x, H)], fill=(255, 255, 255, 12), width=1)
for y in range(0, H, 80):
    draw4.line([(0, y), (W, y)], fill=(255, 255, 255, 12), width=1)
draw4.text((80, 60), "1994", fill=hex_rgb('#FF6B6B'), font=load_font(28, True))
draw4.text((80, 360), "EL DOBLE IGUAL ROTO", fill=(255, 255, 255), font=load_font(64, True))
draw4.rectangle([80, 490, 320, 493], fill=hex_rgb('#FF6B6B'))
draw4.text((80, 530), "'' == 0 es true. La paradoja que nadie arreglo.", fill=(154, 163, 173), font=load_font(30))
draw4.text((1580, 880), "04", fill=(25, 255, 255, 25), font=load_font(160, True))
draw4.text((80, 1045), "EL TALLER CURIOSO", fill=(74, 79, 89), font=load_font(14))
draw_equals_broken(draw4, 1550, 450, 160, '#FF6B6B')
f = load_font(36)
draw4.text((1400, 300), '"" == 0', fill='#FF6B6B', font=f)
draw4.text((1650, 300), 'true', fill='#9AA3AD', font=f)
img4.save("slide-04-v2.jpg", 'JPEG', quality=95)
print("Created slide-04-v2.jpg")

# Slides 5-10 mas simples
slides_data = [
    (5, "MICROSOFT COPIO TODO", "Ingenieria inversa... incluso los bugs.", "#0F1419", "#00D4AA", 
     lambda d: (draw_network_nodes(d, 1500, 300, 4, '#00D4AA'), draw_network_nodes(d, 1500, 650, 4, '#FF9F43'))),
    (6, "ECMASCRIPT", "El nombre erroneo que salvo al estandar.", "#141A14", "#7BD97B",
     lambda d: draw_doc_icon(d, 1400, 250, 400, 350, '#7BD97B')),
    (7, "LA EDAD OSCURA", "Los 2000: lenguaje congelado sin evolucion.", "#0D0D12", "#9A9ABA",
     lambda d: (f := load_font(48, True), d.text((1450, 350), "2000s", fill='#6B6B7B', font=f), d.rectangle([1400, 280, 1750, 500], outline='#6B6B7B', width=2))),
    (8, "JSON: EL RESCATE IRONICO", "Crockford despreciaba JS. De ahi nacio JSON.", "#141419", "#FF9F43",
     lambda d: (draw_json_braces(d, 1550, 380, 100, '#FF9F43'), f := load_font(24), d.text((1400, 520), '"key": "value"', fill=(150,150,150), font=f), d.text((1550, 560), "-> JSON", fill='#FF9F43', font=f))),
    (9, "NODE: REVOLUCION SERVER", "JavaScript sale del navegador. Panico total.", "#0F1914", "#4ADE80",
     lambda d: draw_tree_node(d, 1550, 280, '#4ADE80')),
    (10, "LA JAULA DEL ESTANDAR", "Diez dias deciden lo que pagan decadas.", "#141210", "#E8C15A",
     lambda d: draw_cage(d, 1400, 250, 450, 350, '#E8C15A'))
]

for n, title, sub, bg, accent, draw_fn in slides_data:
    img = Image.new('RGB', (W, H), hex_rgb(bg))
    draw = ImageDraw.Draw(img)
    for x in range(0, W, 80):
        draw.line([(x, 0), (x, H)], fill=(255, 255, 255, 12), width=1)
    for y in range(0, H, 80):
        draw.line([(0, y), (W, y)], fill=(255, 255, 255, 12), width=1)
    year_txt = f"199{n}" if n <= 9 else str(n)
    draw.text((80, 60), year_txt, fill=hex_rgb(accent), font=load_font(28, True))
    draw.text((80, 360), title, fill=(255, 255, 255), font=load_font(64, True))
    draw.rectangle([80, 490, 320, 493], fill=hex_rgb(accent))
    draw.text((80, 530), sub, fill=(154, 163, 173), font=load_font(30))
    draw.text((1580, 880), f"{n:02d}", fill=(25, 255, 255, 25), font=load_font(160, True))
    draw.text((80, 1045), "EL TALLER CURIOSO", fill=(74, 79, 89), font=load_font(14))
    draw_fn(draw)
    out = f"slide-{n:02d}-v2.jpg"
    img.save(out, 'JPEG', quality=95)
    print(f"Created {out}")

print("\n=== TODAS LAS SLIDES v2 CON ELEMENTOS VISUALES ===")
