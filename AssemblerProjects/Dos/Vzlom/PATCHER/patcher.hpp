#pragma once

const int width  = 1100;
const int height = 741;
const int BALL_SIZE = 30;

enum
    {
    LEFT_GATES = -1,
    RIGHT_GATES = 1,
    };

int PatchFile(const char* file_path);
int EntertainUser();

int SetMusic(const char* sound_wav);

#define CHECK(ptr) if (!ptr) { printf ("Zero condition in: %s:%d\n", __FILE__, __LINE__); abort();}
