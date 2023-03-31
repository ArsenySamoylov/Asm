#include <assert.h>

#include <stdio.h>

#include "common.hpp"
#include "gui.hpp"
#include "Mandelbrot.hpp"

int main()
    {
    sf::RenderWindow  window(sf::VideoMode(DEF_WIDTH, DEF_HEIGHT), "Mandelbrot");

    unsigned width  = DEF_WIDTH; 
    unsigned height = DEF_HEIGHT;

    pixel_color* color_array = (pixel_color*) calloc (width * height, sizeof(color_array[0]));
   
    if (!color_array)
        {
        printf("Can't allocate memory for color array!!! (%s:%d)\n", __FILE__, __LINE__);
        
        return FAILURE;
        }

    while (window.isOpen())
        {
        if (CalculateMandalbrot(color_array, width, height) != SUCCESS)
            {
            printf("Failure in CalculateMandalbrod\n Exiting...\n");
            printf("(%s:%d)\n", __FILE__, __LINE__);

            return FAILURE;
            }

        if (ManageWindow(&window, color_array, &width, &height) == WINDOW_RESIZED)
            {
            pixel_color* temp = (pixel_color*) reallocarray (color_array, width * height, sizeof(color_array[0]));
            if (!temp)
                {
                printf("Can't allocate memory for color array!!! (%s:%d)\n", __FILE__, __LINE__);
        
                return FAILURE;
                }

            color_array = temp;
            }            

        }        

    free(color_array);

    return SUCCESS;    
    }