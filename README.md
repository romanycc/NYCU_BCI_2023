# NYCU_BCI_2023
## 2023 Spring Semester Brain Computer Interface
![image](https://github.com/romanycc/NYCU_BCI_2023/blob/main/BCI.gif)

## HW1_ BCI research review

* Review a BCI research work that was nominated for the BCI award, and create a short video to present your digest of this work.

* Paper：Regulation of arousal via online neurofeedback
improves human performance in a demanding
sensory-motor task

## HW2_EEG Analysis

* Deal with EEG data preprocessing

## HW3_Deep Learning for BCI

* Utilize Convolutional Neural Network (CNN) for motor imagery(MI) EEG classification tasks, with experiments on 4 training schemes and 3 model architectures.

* I use conv3D to solve the SCCNet_v2 bonus problem.

## Term Project_Motor Imagery Classification

*  Select a paper from the candidate list and reproduce the results including data preprocessing on the provided unprocessed BCIC-IV 2a dataset, implementing the proposed model in the paper, and finally compare its performance with the 3 baseline models in HW3. 

* Paper：FBCNet: A Multi-view Convolutional Neural Network for Brain-Computer Interface Motor imagery-BCI


## Final Car Competition

* For the final car competition, you will be extending your work from the midterm mind-controlled car demo by controlling the car to turn right and left using hybrid-BCI approach.

* We use this github to record and analysis our data
：https://github.com/HeosSacer/SSVEP-Brain-Computer-Interface 

* Use alpha wave and utils.py to control our car.

* peak_alpha = the sum of frequency in alpha wave(8-13Hz)/the sum of the frequency in 3-30Hz

```python
peak_alpha = sum of frequency in alpha wave(8-13Hz)/ sum of the frequency in 3-30Hz    

    if (peak_alpha > threshold): 
        action point to 1
    else: 
        action point to 0
```
* Using 2-bit to control the car : forwad, left, right. ex. 00, 10, 11, 10

#### Team members : 張瑀芯、許瑋芸、趙品瑄、陳妍沂、楊佳誠
