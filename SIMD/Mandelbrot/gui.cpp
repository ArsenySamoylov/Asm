#include <assert.h>
#include <math.h>

#include "gui.hpp"

static int ManageEvents (sf::RenderWindow* window, unsigned* width, unsigned* height, int* enable_drawing_flag);

static void DrawWindow (sf::RenderWindow* window, const pixel_color* color_array, unsigned width, unsigned height);
static void DrawPixel  (sf::RenderWindow* window, unsigned x_coord, unsigned y_coord, pixel_color  iteration);

static void Display    (sf::RenderWindow* window);

int ManageWindow (sf::RenderWindow* window, const pixel_color* color_array, unsigned* width, unsigned* height)
    {
    assert(window);
    assert(width);  
    assert(height);
    assert(color_array);

    static int enable_drawing_flag = true;

    if (enable_drawing_flag)
        {
        DrawWindow(window, color_array, *width, *height);
        Display(window);

        window->clear();
        }
    
    return ManageEvents (window, width, height, &enable_drawing_flag);
    }

static int ManageEvents (sf::RenderWindow* window, unsigned* width, unsigned* height, int* enable_drawing_flag)
    {
    assert(window);
    assert(width);  
    assert(height);
    assert(enable_drawing_flag);

    sf::Event event;
    while (window->pollEvent(event))
        {
        switch (event.type)
            {
            case sf::Event::Closed :
                
                window->close();
                break;

            case sf::Event::KeyPressed:
                    
                    switch(event.key.code)
                        {
                        case sf::Keyboard::Escape:
                            
                            window->close();
                            break;

                        case sf::Keyboard::E:

                            *enable_drawing_flag = !*enable_drawing_flag;
                            
                            window->clear();
                            Display(window);

                            break;

                        default:
                            break;
                        }

                break;

            case sf::Event::Resized:
                *width  = event.size.width;
                *height = event.size.height;

                printf("New Width = %u, New Height = %u\n", *width, *height);
                return WINDOW_RESIZED;

            default:
                break;
            }

        }

    return NOTHING_CHANGED;
    }

static void DrawWindow (sf::RenderWindow* window, const pixel_color* color_array, unsigned width, unsigned height)
    {
    assert(window);
    assert(color_array);

    for (unsigned y = 0; y < height; y++)
        for (unsigned x = 0; x < width; x++)
            DrawPixel (window, x, y, color_array[y * width + x]);

    return;
    }

static void DrawPixel (sf::RenderWindow* window, unsigned x_coord, unsigned y_coord, pixel_color iteration)
    {
    assert(window);

    // if (iteration)
        // printf ("Pixel (%u, %u) = itertion: %u\n", x_coord, y_coord, iteration);

    static sf::RectangleShape rectangle{sf::Vector2f(1.f,1.f)};
    static sf::Color color{};

    if (iteration == MAX_ITERATION_TIMES)
            {
            color = VOID_COLOR;
            }
        else
            {
                
            float factor = (float) iteration / MAX_ITERATION_TIMES;

            color.r = (sf::Uint8) (  RED_CONSTANT * pow(factor, 3) * pow(1 - factor, 1) * 255.f);
            color.g = (sf::Uint8) (GREEN_CONSTANT * pow(factor, 2) * pow(1 - factor, 2) * 255.f);
            color.b = (sf::Uint8) ( BLUE_CONSTANT * pow(factor, 1) * pow(1-factor, 3)   * 255.f);
            }

    rectangle.setPosition  ( (float) x_coord, (float) y_coord);
    rectangle.setFillColor (color);
    
    window->draw(rectangle);

    return;
    }

static void Display (sf::RenderWindow* window)
    {
    assert(window);

    window->display();
    return;
    }