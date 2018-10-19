import numpy as np
import cv2 as cv

import sys,math,statistics,time


def get_transitions(img):
    print("Running")
    rows,cols,ch = img.shape
    x = 0
    transitions = []
    for x in range(0,rows):
        #print(x)
        row_matrix = []
        start = img[x][0][0]
        for y in range(0,cols):
            current = img[x][y][0]
            if current == 255:
                row_matrix.append(1)
            elif current == 0:
                row_matrix.append(0)
            else:
                row_matrix.append(current/255)
        transitions.append(row_matrix)
    transition_count = []
    #print(transitions)
    max_transition = 0
    max_transition_obj = None
    x_val_max = 0
    for x in range(0,len(transitions)):
        prev = transitions[x][0]
        tc = 0 
        for value in transitions[x]:
            if value == 1 or value == 0:
                if value != prev:
                    tc += 1
            else:
                if prev == 1 or prev == 0:
                    tc += 1
                    
            prev = value
        if tc > max_transition:
            max_transition = tc
            max_transition_obj = transitions[x]
            x_val_max = x
        transition_count.append(tc)
    print("Max",max_transition," at x==",x_val_max)
    #print("Card")
    #print(max_transition_obj)

    trans_length = []
    prev = transitions[x_val_max][0]
    current_length = 0

    weight = 0.5
    end = False
    prev = transitions[x_val_max][0]
    for value in transitions[x_val_max]:
        if value == 1 or value == 0:
            if value == prev:
                print(value,"whole")
                current_length += 1
                end = False
            else:
                end = True
        else:
            if value >= weight and prev == 1:
                print(value,"1")
                current_length += 1
            elif value < weight and prev == 0:
                print(value,"0")
                current_length += 1
            else:
                end = True

        if end:
            end = False
            trans_length.append(current_length)
            current_length = 0
        prev = value
    print(trans_length)
                    
        
        
    

    #print(transition_count)
            

    
    


if __name__ == '__main__':
    img = cv.imread('blur70.png')
    #cv.imshow('img', img)
    
    get_transitions(img)
        
        
            

