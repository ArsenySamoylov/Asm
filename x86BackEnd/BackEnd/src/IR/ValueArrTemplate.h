#include <cstdlib>
#include <cassert>
#include <cstdio>

template <class Value_T> 
class ValueArr
    {
    private:
        // const enum ValueType base_type;
        Value_T** arr;
    
        size_t size;
        size_t capacity;

        const size_t START_ARR_SIZE = 16;
        const size_t GROWTH_RATE    = 2;

    void resize ();

    public:
        ValueArr ();
       ~ValueArr ();

        Value_T* add       (Value_T* val);
        Value_T* get_value (size_t index);
        size_t get_size  () const;

        const Value_T* get_const_value (size_t index) const;
    };

template <class Value_T> 
ValueArr<Value_T>::ValueArr ()
    {
    arr = (Value_T**) calloc (START_ARR_SIZE, sizeof(arr[0]));
                                                                              
    size     = 0;                                                        
    capacity = START_ARR_SIZE;                                           
    }

template <class Value_T>
ValueArr<Value_T>::~ValueArr ()
    {
    if (capacity == 0)                                     
        {                                                       
        printf ("%s:%d, Capacity can't be 0 in Dtor\n", __FILE__, __LINE__);               
        return;                                         
        }                                                       

    // printf ("ValueArr dtor\n");                                                      

    free (arr);                                            
                                                                
    capacity = 0;                                          
    size     = 0;                                          
    arr      = NULL;                                       
    }

template <class Value_T>
void ValueArr<Value_T>::resize ()                                          
    {                                                                                            
    size_t new_size = capacity * GROWTH_RATE;                                          
                                                                                            
    Value_T** temp = (Value_T**) realloc (arr, new_size * sizeof(temp[0]));    
    assert(temp);                                                                           
                                                                                            
    capacity = new_size;                                                               
    arr      = temp;                                                                   
    }

template <class Value_T>
Value_T* ValueArr<Value_T>::add (Value_T* val)  
    {               
    assert(val);                                            

    // PRINT_VALUE(val);                                        
    // report ("Arr %p, Val %p, ArrSize %lu\n", arr, val, arr->size);

    if (size >= capacity)                         
        this->resize ();                          

    arr[size++] = val;   

    return val;                                            
    }

template <class Value_T>
Value_T* ValueArr<Value_T>::get_value (size_t index)
    {
    assert (index < size);
    return arr[index];
    }

template <class Value_T>
size_t ValueArr<Value_T>::get_size () const 
    {
    return size;
    }

template <class Value_T>
const Value_T* ValueArr<Value_T>::get_const_value (size_t index) const
    {
    assert (index < size);

    return arr[index];
    }

//////////////////////////////////////////////////////
// template  example//
/*
template <int R>
struct Vec
    {
    double coord[R];
    };

template <int R>
double dot (double* a, double* b)
    {
    double res = 0;
    for (int i = R-1; i >= 0; i--) res += a[i] * b[i];
    return res;
    }

template <>
double dot<3> (double* a, double* b)
    {
    return a[2] * b[2] + 
           a[1] * b[1] + 
           a[0] * b[0];
    }

template <R>
inline double dot (double* a, double* b)
    {
    return a[0] * b[0] + dot <R-1> (a+1, b+1);
    }

template <>
inline double dot <1> (double* a, double* b)
    {
    return a[0] * b[0];
    }
*/
