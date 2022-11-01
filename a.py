import random
order_id = ""
for i in range(8):
    order_id += str(random.randint(0, 9))
print(order_id)