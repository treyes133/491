import pygame,math,random

square_size = 37
map_length = 9000
map_height = 1500

squares_length = math.floor(map_length/square_size)
squares_height = math.floor(map_height/square_size)



size = (map_length, map_height)
screen = pygame.display.set_mode(size)

pygame.draw.rect(screen, (255,255,255), (0,0,map_length,map_height))
for x in range(0,map_length,square_size):
    for y in range(0,map_height,square_size):
        r_var = random.randint(0,1)
        if r_var == 1:
            pygame.draw.rect(screen, (0,0,0), (x,y,square_size,square_size))
            #print(x,y)
pygame.display.flip()
pygame.image.save(screen,"floor"+str(square_size)+".png")
pygame.display.quit()
pygame.quit()
