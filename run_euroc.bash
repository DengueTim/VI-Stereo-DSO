#!/bin/bash
#usage: python xxx.py file_name
#dataname="MH_01_easy"
#dataname="MH_02_easy"
#dataname="MH_03_medium"
#dataname="MH_04_difficult"
#dataname="MH_05_difficult"
#dataname="V2_03_difficult"
dataname="V1_03_difficult"
    # run dso
    ./build/bin/dso_dataset \
 	  files0=/Users/tp/datasets/EuRoC/${dataname}/cam0/data \
	  files1=/Users/tp/datasets/EuRoC/${dataname}/cam1/data \
 	  calib0=/Users/tp/src/VI-Stereo-DSO/calib/euroc/cam0.txt \
	  calib1=/Users/tp/src/VI-Stereo-DSO/calib/euroc/cam1.txt \
	  T_stereo=/Users/tp/src/VI-Stereo-DSO/calib/euroc/T_C0C1.txt \
	  groundtruth=/Users/tp/datasets/EuRoC/${dataname}/state_groundtruth_estimate0/data.csv \
	  imu_info=/home/sjm/projects/VI-Stereo-DSO/calib/euroc/IMU_info.txt \
	  imudata=/Users/tp/datasets/EuRoC/${dataname}/imu0/data.csv \
	  pic_timestamp=/Users/tp/datasets/EuRoC/${dataname}/cam0/data.csv \
	  pic_timestamp1=/Users/tp/datasets/EuRoC/${dataname}/cam1/data.csv \
 	  preset=0 mode=1 \
	  quiet=1 nomt=1 \
          savefile_tail=nt_${dataname}\
	  imu_weight=6 imu_weight_tracker=0.6 stereo_weight=0.5


