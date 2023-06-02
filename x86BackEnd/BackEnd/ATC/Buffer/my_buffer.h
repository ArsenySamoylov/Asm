#ifndef MY_BUFFER_HACK_YOUR_ASS
#define MY_BUFFER_HACK_YOUR_ASS

#include <stdlib.h>
#include <stdio.h>


//! @todo terminate_comments(const char* buffer, char terminator);

char*  GetSrcFile (const char *file_direction);

//! @note This functions changes all '\n' to '\0' while dividing buffer 
//! If you want to split buffer without changing '\n', then use SplitBufferIntoLines
const char** DivideBufferIntoLines (      char* buffer, size_t number_of_lines);
const char** SplitBufferIntoLines  (const char* buffer, size_t number_of_lines);

char*  SkipSpaces (const char* s);

size_t CountLines (const char* text, char terminator = '\n');

void   RemoveComments (char* buffer, char terminator);
void   RemoveComments (char* buffer, unsigned size,  char terminator);

void ShowLine(const char* line);

int stricmp  (const char *s1, const char *s2);
int strnicmp (const char *s1, const char *s2, int number_of_ch);
int strnicmprus (const char *s1, const char *s2, int number_of_ch);

void ClearBuffer ();

const int INDENT_SIZE = 2;

void fsetindent (FILE* file, int indent);
void setindent  (int indent);

#ifndef NO_BUFFER
struct Buffer
    { 
    const char* buffer;
    char* str;

    int number_of_lines;
    int indent;
    };

int BufferCtor  (Buffer* buf, const char* string);
int BufferCtor  (Buffer* buf, int size);

// Not safe to use, cause if buffer skiped spaces, Ungetch won't know about it
// void BufferUngetCh (Buffer* buf);

void BufferSkipSpaces (Buffer* buf);

int  BufferGetCh   (Buffer* buf);
int  BufferLook    (Buffer* buf);
int  BufferGetDouble  (Buffer* buf, double* val);

// FOR LANG
void BufferSkipCommentLine (Buffer* buf, char terminator);

// NOT FOR LANG to use
/*
int  BufferPutDouble (Buffer* buf, double val);
int  BufferPutChar   (Buffer* buf, char   ch);
int  BufferPutString (Buffer* buf, const char*  str);
*/
#endif

#endif