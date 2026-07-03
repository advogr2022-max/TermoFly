#!/usr/bin/env python3
"""Fix Paint$Style references in RingPainter.smali."""
path = r"D:\t4\decoded\smali\display\vmap\features\RingPainter.smali"
with open(path, 'r') as f:
    data = f.read()

# Fix the broken references
data = data.replace(
    'Landroid/graphics/Paint;->FILL:Landroid/graphics/Paint;',
    'Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;'
)
data = data.replace(
    'invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint;)V',
    'invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V'
)

with open(path, 'w') as f:
    f.write(data)

# Verify no more broken Paint references
count = data.count('Paint;->FILL')
print(f'Paint;->FILL remaining: {count} (want 0)')
# Check the references are correct
for i, line in enumerate(data.split('\n')):
    if 'setStyle' in line and 'Paint' in line:
        print(f'L{i+1}: {line.strip()}')
