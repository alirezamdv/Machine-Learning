import numpy as np
import matplotlib.pyplot as plt

data = np.random.rand(100)

plt.plot(data, 'ro', label='random samples')
plt.ylabel('y-axis')
plt.xlabel('x-axis')
plt.legend(loc=1)

plt.show()
