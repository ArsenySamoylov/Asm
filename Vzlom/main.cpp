#include <SFML/Graphics.hpp>
#include <string.h>

// #include "LogMacroses.h"

int main()
{
    sf::Window window(sf::VideoMode(800, 600), "My window");

    // run the program as long as the window is open
    while (window.isOpen())
    {
        // check all the window's events that were triggered since the last iteration of the loop
        sf::Event event;
        while (window.pollEvent(event))
        {
            // "close requested" event: we close the window
            if (event.type == sf::Event::Closed)
                {
                window.setPosition(sf::Vector2i(10, 50));
                getchar();
                window.close();
                }

        }
    }

    return 0;
}