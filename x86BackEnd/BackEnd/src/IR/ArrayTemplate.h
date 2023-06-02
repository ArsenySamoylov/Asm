#pragma once

const size_t START_ARR_SIZE = 16;
const size_t GROWTH_RATE    = 2;

#define ARR_CTOR(struct_name, base_struct)                                    \
int struct_name##Ctor (struct_name* arr)                                      \
    {                                                                         \
    assert(arr);                                                              \
                                                                              \
    arr->arr = (base_struct**) calloc (START_ARR_SIZE, sizeof(base_struct**));\
    assert(arr->arr);                                                         \
                                                                              \
    arr->size     = 0;                                                        \
    arr->capacity = START_ARR_SIZE;                                           \
                                                                              \
    return SUCCESS;                                                           \
    }

#define ARR_DTOR(struct_name, base_struct)                      \
int struct_name##Dtor (struct_name* arr)                        \
    {                                                           \
    assert(arr);                                                \
                                                                \
    if (arr->capacity == 0)                                     \
        {                                                       \
        report ("Capacity can't be 0 in Dtor\n");               \
        return FAILURE;                                         \
        }                                                       \
                                                                \
    for (size_t i = 0; i < arr->size; i++)                      \
        free(arr->arr[i]);                                      \
                                                                \
    free (arr->arr);                                            \
                                                                \
    arr->capacity = 0;                                          \
    arr->size     = 0;                                          \
    arr->arr      = NULL;                                       \
                                                                \
    return SUCCESS;                                             \
    }

#define ARR_RESIZE(struct_name, base_struct)                                                 \
static int struct_name##Resize (struct_name* arr)                                          \
    {                                                                                       \
    assert(arr);                                                                            \
                                                                                            \
    size_t new_size = arr->capacity * GROWTH_RATE;                                          \
                                                                                            \
    base_struct** temp = (base_struct**) realloc (arr->arr, new_size * sizeof(temp[0]));    \
    assert(temp);                                                                           \
                                                                                            \
    arr->capacity = new_size;                                                               \
    arr->arr      = temp;                                                                   \
                                                                                            \
    return SUCCESS;                                                                         \
    }

#pragma GCC diagnostic ignored "-Wclass-memaccess"


#define ARR_COPY(struct_name, add_struct)                                    \
int Copy##add_struct (struct_name *arr, const add_struct *val)  \
    {                                                       \
    assert(arr);                                            \
    assert(val);                                            \
                                                            \
    if (arr->size >= arr->capacity)                         \
        struct_name##Resize (arr);                          \
                                                            \
    add_struct* temp = (add_struct*) calloc (1, sizeof (add_struct));  \
    assert     (temp);                                                 \
                                                            \
    memcpy (temp, val, sizeof (add_struct));                \
                                                            \
    arr->arr[arr->size++] = temp;                           \
    return 0;                                               \
    }

#define ARR_ADD(struct_name, add_struct)                    \
int Add##add_struct (struct_name *arr, add_struct *val)     \
    {                                                       \
    assert(arr);                                            \
    assert(val);                                            \
                                                            \
    if (arr->size >= arr->capacity)                         \
        struct_name##Resize (arr);                          \
                                                            \
    arr->arr[arr->size++] = val;                            \
    return SUCCESS;                                         \
    }

#define FIND_IN_ARR(struct_name, find_struct, cmp_function)              \
find_struct* Find##find_struct (struct_name* arr, find_struct* find)     \
    {                                                                    \
    assert(arr);                                                         \
    assert(find);                                                        \
                                                                         \
    for (size_t i = 0; i < arr->size; i++)                               \
        {                                                                \
        if (cmp_function(find, arr->arr[i]))                             \
            return arr->arr + i;                                         \
        }                                                                \
                                                                         \
    return NULL;                                                         \
    }

#define RESET_ARR(struct_name)                  \
int Reset##struct_name (struct_name *arr)       \
    {                                           \
    assert (arr);                               \
                                                \
    for (size_t i = 0; i < arr->size; i++)      \
        free (arr->arr[i]);                     \
                                                \
    arr->size = 0   ;                           \
    return SUCCESS;                             \
    }
