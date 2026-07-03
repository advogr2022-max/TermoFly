import re
fn = r'D:\t4\decoded\smali\m\a$a.smali'
with open(fn) as f: content = f.read()

# Make updateStatus a no-op
stub = """.method private updateStatus()V
    .locals 0
    return-void
.end method"""

old = re.search(r'\.method private updateStatus\(\)V.*?\.end method', content, re.DOTALL)
if old:
    content = content[:old.start()] + stub + content[old.end():]
    with open(fn, 'w') as f: f.write(content)
    print('Made updateStatus a NO-OP')
