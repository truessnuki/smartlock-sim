import os

count = 0
for subdir, dirs, files in os.walk('.'):
    for file in files:
        if file.endswith('.o') or file.endswith('.d'):
            os.remove(subdir + os.sep + file)
            count += 1

print("removed {} files".format(count))

