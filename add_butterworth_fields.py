import re

# 1. Add Butterworth biquad state fields to m/a.smali
fn = r'D:\t4\decoded\smali\m\a.smali'
with open(fn) as f: c = f.read()

# Add after line "snrFiltered" 
fields = """
# Butterworth biquad state (HP+LP cascade per channel)
.field public static bq_hx1:F = 0f
.field public static bq_hx2:F = 0f
.field public static bq_hy1:F = 0f
.field public static bq_hy2:F = 0f
.field public static bq_lx1:F = 0f
.field public static bq_lx2:F = 0f
.field public static bq_ly1:F = 0f
.field public static bq_ly2:F = 0f
.field public static bq_hx1y:F = 0f
.field public static bq_hx2y:F = 0f
.field public static bq_hy1y:F = 0f
.field public static bq_hy2y:F = 0f
.field public static bq_lx1y:F = 0f
.field public static bq_lx2y:F = 0f
.field public static bq_ly1y:F = 0f
.field public static bq_ly2y:F = 0f
"""

c = c.replace('.field public static snrFiltered:F = 0f\n', '.field public static snrFiltered:F = 0f\n' + fields)
with open(fn, 'w') as f: f.write(c)
print('Added Butterworth fields to m/a.smali')
