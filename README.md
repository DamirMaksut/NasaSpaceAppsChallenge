# NasaSpaceAppsChallenge
## YOLO4
 
Commands:


Download Anaconda: https://www.anaconda.com/products/individual

#Tensorflow CPU
conda env create -f conda-cpu.yml
conda activate yolov4-cpu

#Tensorflow GPU 
conda env create -f conda-gpu.yml
conda activate yolov4-gpu 

If you don't have Conda:  

#Tensorflow CPU 
pip install -r requirements.txt
 

#Tensorflow GPU 
pip install -r requirements-gpu.txt


Performance
Check out how YOLOv4 compares to other object detection systems.

![image](https://user-images.githubusercontent.com/64933670/135770179-54b87a08-38b6-4aa8-a697-8f3800c46f42.png)

Downloading trained classes: 
https://drive.google.com/open?id=1cewMfusmPjYWbrnuJRuKhPMwRe_b9PaT   

The link for the visual studio files:
https://drive.google.com/drive/folders/1-oLVIxvhFqmHPVLAgq0hraHq5Wv8UZal?usp=sharing   



Trained classes: https://drive.google.com/open?id=1cewMfusmPjYWbrnuJRuKhPMwRe_b9PaT 
Visual studio: https://drive.google.com/drive/u/0/folders/1-oLVIxvhFqmHPVLAgq0hraHq5Wv8UZal  


Detection using camera: 


https://user-images.githubusercontent.com/64933670/135770465-4a3f5f79-0a8b-4122-a480-401bfa647c68.mp4

Video detection: 


https://user-images.githubusercontent.com/64933670/135770546-2cd803a8-2bb0-40a4-8006-a993a728353d.mp4





## Interactive Map

## Mobile app
Mobile app of our project allows users to send reports about debris found in chosen locations. Users can send their reports by clicking on places they found debris at. After, our robot, we plan to develop in the future, will come there to collect it. Program is written on Dart programming language and used Google Maps for map widget.

To launch the app, you should install IOS/Android simulator and development platform (with Flutter SDK).
![image](https://user-images.githubusercontent.com/85204055/135770642-96006dfc-328d-4f27-8d9b-aa49677135ac.jpeg)
![image](https://user-images.githubusercontent.com/85204055/135770637-1aacc532-8d5e-4b4d-ae69-c1f0ac796b74.jpeg)
![image](https://user-images.githubusercontent.com/85204055/135770644-720db031-a2af-4216-8048-6b3afb41ebe4.jpeg)


