#!/usr/bin/env python3
"""Patch processAccel to add Log.d every 50th event."""
import re

path = r"D:\t4\decoded\smali\m\a$a.smali"
with open(path, 'r') as f:
    content = f.read()

old = """    invoke-direct {p0}, Lm/a$a;->updateStatus()V
    return-void
.end method"""

new = """    invoke-direct {p0}, Lm/a$a;->updateStatus()V

    # Log every 50th event
    sget v0, Lm/a;->accelEventCount:I
    rem-int/lit8 v1, v0, 0x32
    if-nez v1, :log_skip
    const-string v0, "TermoFly"
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "bpX="
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;
    const-string v2, " bpY="
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;
    const-string v2, " zc="
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    sget v2, Lm/a;->zcCount:I
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v2, " se="
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    sget v2, Lm/a;->smoothEnergy:F
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;
    const-string v2, " nf="
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    sget v2, Lm/a;->noiseFloor:F
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;
    const-string v2, " snr="
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    sget v2, Lm/a;->snrFiltered:F
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :log_skip
    return-void
.end method"""

if old not in content:
    print("ERROR: old string not found!")
    # Debug: show the last 15 lines
    lines = content.split('\n')
    for i in range(max(0, len(lines)-15), len(lines)):
        print(f"{i}: {repr(lines[i])}")
else:
    new_content = content.replace(old, new, 1)
    with open(path, 'w') as f:
        f.write(new_content)
    print("PATCHED OK")
