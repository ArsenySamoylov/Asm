#include <stdlib.h>
#include <stdio.h>
#include <assert.h>
#include <unistd.h>

#include <SFML/Graphics.hpp>
#include <SFML/Audio.hpp>

#pragma GCC diagnostic ignored "-Wnarrowing"

const char patch_code[] = { 0x90, 0x90, 0x90, 0x90, 0x90 };
const int CODE_SIZE = sizeof(patch_code);

const int CODE_OFFSET = 0x205;
#pragma GCC diagnostic warning "-Wnarrowing"

#include "patcher.hpp"

int main(int argc, const char* argv[])
    {
    if (argc != 2)
        {
        printf("Help: to crack Enigma, restart program with path to exe\n");
        return 0;
        }

    int result = EntertainUser();

    if (result == LEFT_GATES)
        PatchFile(argv[1]);

    
    return 0;
    }

int PatchFile(const char* file_path) // check for hash of programm
    {
    assert(file_path);

    FILE* Dany_Ass = fopen(file_path, "r+");

    if (!Dany_Ass)
        {
        printf("Error, couldn't find file in <%s>\n", file_path);

        return -1;
        }

    fseek  (Dany_Ass, CODE_OFFSET, SEEK_SET);
    fwrite (patch_code, CODE_SIZE, sizeof(patch_code[0]), Dany_Ass);

    printf("Everything done. Enjoy, YO-HO-HO!!!\n");

    return 0;
    }


class Ball
    {
    private:
        int x = 0;
        int y = 0;

        sf::Sprite ball_sp{};

    public:
        Ball (int x_cord, int y_cord, const char* texture): x(x_cord), y(y_cord)
            {
            static sf::Image ball_img{};
            ball_img.loadFromFile (texture);

            static sf::Texture ball_text{};
            ball_text.loadFromImage(ball_img);

            ball_sp.setTexture(ball_text);
            ball_sp.setPosition(x_cord, y_cord);

            }

        int DrawBall (sf::RenderWindow* window)
            {
            ball_sp.setPosition(x, y);

            window->draw(ball_sp);

            return 0;
            }

        int add_cord (int x_cord, int y_cord)
            {
            int temp_x = x + x_cord;
            int temp_y = y + y_cord;

            x = (temp_x < -BALL_SIZE || temp_x + BALL_SIZE > width)  ? x : temp_x;

            y = (temp_y < -BALL_SIZE || temp_y + BALL_SIZE > height) ? y : temp_y;
            

            return 0;
            }

        int check_gates()
            {
            if (!(y < height/2 + BALL_SIZE*2 && y > height/2 - BALL_SIZE*2))
                return 0;

            if (x < 2*BALL_SIZE)
                return LEFT_GATES;

            if (x > width - 2*BALL_SIZE)
                return RIGHT_GATES;

            return 0;
            }
                
    };

const int BALL_SPEED = 7;

int SetText(sf::Text* text, sf::Font* font,const char* string, int size, const sf::Color color, float x, float y);

int EntertainUser()
    {
    SetMusic("music.wav");

    sf::RenderWindow window(sf::VideoMode(width, height), "My window");

    Ball ball{width/2 - 35, height/2 - 35, "ball.png"};

    sf::Image field_img{};
    CHECK(field_img.loadFromFile ("footballfieldpng"));

    sf::Texture field_text{};
    field_text.loadFromImage(field_img);

    sf::Sprite background{};
    background.setTexture(field_text);
    background.setPosition(0, 0);
            
    // window.draw(background);
    sf::Font font;
    CHECK(font.loadFromFile("Manuela.otf"));

    sf::Text make_patch{};
    sf::Text dont_make_patch{};

    SetText(&make_patch,      &font, "Make patch",         80, sf::Color::Red,  0,               height/2.0 - 25);
    SetText(&dont_make_patch, &font, "Don't make a pathc", 80, sf::Color::Blue, width/2.0 + 74,  height/2.0 - 25);
    
    // run the program as long as the window is open
    while (window.isOpen())
    {
        // check all the window's events that were triggered since the last iteration of the loop
        sf::Event event;
        while (window.pollEvent(event))
        {
            // "close requested" event: we close the window
            if (event.type == sf::Event::Closed ||
                event.type == sf::Event::KeyPressed && event.key.code == sf::Keyboard::Escape)
                window.close();

            if (event.type == sf::Event::KeyPressed && 
                event.key.code == sf::Keyboard::W)
                ball.add_cord (0, -BALL_SPEED);

            if (event.type == sf::Event::KeyPressed && 
                event.key.code == sf::Keyboard::S)
                ball.add_cord (0, BALL_SPEED);

            if (event.type == sf::Event::KeyPressed && 
                event.key.code == sf::Keyboard::A)
                ball.add_cord (-BALL_SPEED, 0);

            if (event.type == sf::Event::KeyPressed && 
                event.key.code == sf::Keyboard::D)
                ball.add_cord (BALL_SPEED, 0);

        }
    
    window.draw(background);
    ball.DrawBall(&window); 

    window.draw(make_patch);
    window.draw(dont_make_patch);

    if (ball.check_gates())
        {
        sf::Text good_choice{};

        SetText(&good_choice, &font, "Good Choice", 80, sf::Color::White,  width/2.0, height/2.0);
        
        window.clear();
        window.draw(good_choice);
        window.display();

        SetMusic("birds.wav");

        sleep(7);

        window.close();

        return ball.check_gates();
        }
    
    window.display();
    window.clear();

    }

    return 0;
}

int SetText(sf::Text* text, sf::Font* font, const char* string, int size, const sf::Color color, float x, float y)
    {

    text->setFont(*font);
    text->setCharacterSize(size);
    text->setString(string);
    text->setPosition(x, y);
    text->setFillColor(color);

    return 0;
    }

int SetMusic(const char* sound_wav)
    {
    static sf::Sound sound;
    sound.stop();
    
    static sf::SoundBuffer buffer;
    if (!buffer.loadFromFile(sound_wav))
        return -1;

    sound.setBuffer(buffer);
    sound.setLoop(true);

    sound.play();

    return 0;
    }