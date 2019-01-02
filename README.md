# setup

install NVIDIA driver and docker, nvidia-docker2 
https://github.com/NVIDIA/nvidia-docker#quickstart

```
$ ./docker-compose up
Starting mynvidiacuda_app_1 ... done
Attaching to mynvidiacuda_app_1

# check
$ docker exec -it mynvidiacuda_app_1 nvidia-smi

# login bash
$ docker exec -it mynvidiacuda_app_1 bash
```

# keras

```
$ wget https://raw.githubusercontent.com/fchollet/keras/master/examples/mnist_cnn.py
$ python3 mnist_cnn.py

Using TensorFlow backend.
x_train shape: (60000, 28, 28, 1)
60000 train samples
10000 test samples
Train on 60000 samples, validate on 10000 samples
Epoch 1/12
2019-01-02 20:39:28.492972: I tensorflow/core/platform/cpu_feature_guard.cc:141] Your CPU supports instructions that this TensorFlow binary was not compiled to use: AVX2 FMA
2019-01-02 20:39:28.616743: I tensorflow/stream_executor/cuda/cuda_gpu_executor.cc:964] successful NUMA node read from SysFS had negative value (-1), but there must be at least one NUMA node, so returning NUMA node zero
2019-01-02 20:39:28.617085: I tensorflow/core/common_runtime/gpu/gpu_device.cc:1432] Found device 0 with properties:
name: GeForce RTX 2080 major: 7 minor: 5 memoryClockRate(GHz): 1.71
pciBusID: 0000:01:00.0
totalMemory: 7.76GiB freeMemory: 7.15GiB
2019-01-02 20:39:28.617098: I tensorflow/core/common_runtime/gpu/gpu_device.cc:1511] Adding visible gpu devices: 0
2019-01-02 20:39:28.825319: I tensorflow/core/common_runtime/gpu/gpu_device.cc:982] Device interconnect StreamExecutor with strength 1 edge matrix:
2019-01-02 20:39:28.825352: I tensorflow/core/common_runtime/gpu/gpu_device.cc:988]      0
2019-01-02 20:39:28.825357: I tensorflow/core/common_runtime/gpu/gpu_device.cc:1001] 0:   N
2019-01-02 20:39:28.825472: I tensorflow/core/common_runtime/gpu/gpu_device.cc:1115] Created TensorFlow device (/job:localhost/replica:0/task:0/device:GPU:0 with 6876 MB memory) -> physical GPU (device: 0, name: GeForce RTX 2080, pci bus id: 0000:01:00.0, compute capability: 7.5)
60000/60000 [==============================] - 5s 87us/step - loss: 0.2669 - acc: 0.9175 - val_loss: 0.0553 - val_acc: 0.9823
Epoch 2/12
60000/60000 [==============================] - 4s 70us/step - loss: 0.0894 - acc: 0.9739 - val_loss: 0.0415 - val_acc: 0.9866
Epoch 3/12
60000/60000 [==============================] - 5s 80us/step - loss: 0.0692 - acc: 0.9795 - val_loss: 0.0373 - val_acc: 0.9871
Epoch 4/12
60000/60000 [==============================] - 5s 77us/step - loss: 0.0558 - acc: 0.9829 - val_loss: 0.0339 - val_acc: 0.9888
Epoch 5/12
60000/60000 [==============================] - 4s 71us/step - loss: 0.0487 - acc: 0.9849 - val_loss: 0.0323 - val_acc: 0.9888
Epoch 6/12
60000/60000 [==============================] - 4s 68us/step - loss: 0.0424 - acc: 0.9874 - val_loss: 0.0293 - val_acc: 0.9901
Epoch 7/12
60000/60000 [==============================] - 4s 73us/step - loss: 0.0377 - acc: 0.9881 - val_loss: 0.0334 - val_acc: 0.9887
Epoch 8/12
60000/60000 [==============================] - 4s 69us/step - loss: 0.0358 - acc: 0.9891 - val_loss: 0.0281 - val_acc: 0.9912
Epoch 9/12
60000/60000 [==============================] - 4s 69us/step - loss: 0.0319 - acc: 0.9903 - val_loss: 0.0282 - val_acc: 0.9905
Epoch 10/12
60000/60000 [==============================] - 4s 72us/step - loss: 0.0308 - acc: 0.9902 - val_loss: 0.0308 - val_acc: 0.9906
Epoch 11/12
60000/60000 [==============================] - 4s 69us/step - loss: 0.0283 - acc: 0.9912 - val_loss: 0.0295 - val_acc: 0.9905
Epoch 12/12
60000/60000 [==============================] - 4s 74us/step - loss: 0.0247 - acc: 0.9924 - val_loss: 0.0337 - val_acc: 0.9903
Test loss: 0.03367358135545892
Test accuracy: 0.9903
```
