import string
import random
print("".join([random.choice(string.ascii_letters + string.digits) for _ in range(512)]))
