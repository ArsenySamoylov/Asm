#include <assert.h>
#include <math.h>

#include "gui.hpp"

static void DrawWindow (sf::RenderWindow* window, const Image* img);
static void DrawPixel  (sf::RenderWindow* window, unsigned x_coord, unsigned y_coord, RGBA color);
static void Display    (sf::RenderWindow* window);

int DisplayImage(Image* img)
    {
    assert(img);
    assert(img->pixel_arr);
    
    sf::RenderWindow window (sf::VideoMode(img->width, img->height), "Image after blending");

    DrawWindow (&window, img);
    
//    printf("Img: height = %u, width = %u\n(RGBA = %lu)\n", img->width, img->height, sizeof(RGBA));
    
    while (window.isOpen())
      {
      sf::Event event{};
      while (window.pollEvent(event))
          {
          if (event.type == sf::Event::Closed)                
                window.close();

          if (event.type == sf::Event::KeyPressed && event.key.code == sf::Keyboard::Escape)
                 window.close();
            
          }
      }

    return SUCCESS;
    }

static void DrawWindow (sf::RenderWindow* window, const Image* img)
    {
    assert(window);
    assert(img);

    setvbuf (stdout, NULL, _IONBF, 0);

    for (unsigned y = 0; y < img->height; y++)
        for (unsigned x = 0; x < img->width; x++)
          {
         // printf("X cord = %u, Y cord = %u, Color = %u, (w:%u, h:%u)\n", 
            //  x, y, img->pixel_arr[y* img->width + x].red, img->width, img->height);
          
          DrawPixel (window, x, img->height - y, img->pixel_arr[y * img->width + x]);
          }
    
    Display(window); 
    return;
    }

static void DrawPixel (sf::RenderWindow* window, unsigned x_coord, unsigned y_coord, RGBA color)
    {
    assert(window);

    
    static sf::RectangleShape rectangle{sf::Vector2f(1.f,1.f)};
    static sf::Color sf_color{};

    sf_color.r = color.red;
    sf_color.g = color.green;
    sf_color.b = color.blue;
    sf_color.a = color.alpha_mask;
    
    rectangle.setPosition  ( (float) x_coord, (float) y_coord);
    rectangle.setFillColor (sf_color);
    
    window->draw(rectangle);

    return;
    }

static void Display (sf::RenderWindow* window)
    {
    assert(window);

    window->display();
    return;
    }
