import torch
import numpy as np


class A:
    def run(self):
        print("HELLO")
        tinput = torch.tensor(np.random.rand(100, 15))
        print("GOODBYE")
        return 5
