# Procrustes Analysis for Facial Images

A simple Matlab implementation of proctrues analysis on two 2 images from the Helen database.

## How to use

Currently the program takes as input two images x and y and their pts file(provided by Helen database) which contains location of landmark points. The landmarks points of y are transformed to match with the landmark points of x using Matlab's procrustes function. Then I have used the transform matrix to make change to image y.

Just put the images and corresponding pts file in the same folder and you are good to go.

## Output

###First Image x
![](https://raw.githubusercontent.com/arjun1177arjun/Procrustes/master/30542618_1.jpg?raw=true "Marking Points")

###Second Image y
![](https://raw.githubusercontent.com/arjun1177arjun/Procrustes/master/30844800_1.jpg?raw=true "Marking Points")

###Output (Y transformed to match x)
![](https://raw.githubusercontent.com/arjun1177arjun/Procrustes/master/Screenshot%20(277).png?raw=true "Marking Points")
