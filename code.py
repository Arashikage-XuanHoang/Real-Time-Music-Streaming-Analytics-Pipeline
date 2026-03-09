import numpy as np
import pandas as pd

# tạo mảng numpy
a = np.array([1, 2, 3, 4, 5])
b = ["Toi", "ten", "la"]


print("Array:", a)

# tính tổng
print("Sum:", np.sum(a))

# tính trung bình
print("Mean:", np.mean(a))

# nhân toàn bộ phần tử với 2
print("Multiply by 2:", a * 2)

for i in range(len(b)):
    print(b[i] + str("Haha"))
