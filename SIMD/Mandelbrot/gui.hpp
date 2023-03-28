#pragma once

#include <SFML/Graphics.hpp>

#include "common.hpp"

enum WINDOW_STATUS
    {
    WINDOW_RESIZED,
    NOTHING_CHANGED,
    DISABLE_DRAWING,
    ENABLE_DRAWING,
    };

const float   RED_CONSTANT = 09.0f;
const float GREEN_CONSTANT = 15.0f;
const float  BLUE_CONSTANT = 08.4f;

const sf::Color VOID_COLOR = sf::Color::Black;
//  sf::Color::Magenta;

int ManageWindow (sf::RenderWindow* window, const pixel_color* color_array, unsigned* width, unsigned* height);