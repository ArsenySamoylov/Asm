/*! 
\file
\brief File with PtrArray template.
*/

#include <cstdlib>
#include <cassert>
#include <cstdio>

template <class Value_T> 
/**
 * @brief Simple container template 
 * @note This class is in development, 
 *       it lacks a lot of features (for example iterators).
 */
class PtrArray
    {
    private:
        Value_T** arr;
    
        size_t size;
        size_t capacity;

        const size_t START_ARR_SIZE = 16;
        const size_t GROWTH_RATE    = 2;

    void resize ();

    public:
        PtrArray ();
       ~PtrArray ();

        size_t         get_size  () const;
        Value_T&       get_value (size_t index);
        const Value_T& get_const_value (size_t index) const;
        
        Value_T& add   (Value_T& val);
        void     copy  (Value_T& val);
        void     reset ();
    };

template <class Value_T>
PtrArray<Value_T>::PtrArray ()
    {
    arr = (Value_T**) calloc (START_ARR_SIZE, sizeof(arr[0]));
    assert (arr);

    size     = 0;                                                        
    capacity = START_ARR_SIZE;                                           
    }

template <class Value_T>
PtrArray<Value_T>::~PtrArray ()
    {
    free (arr);                                            
    }

template <class Value_T>
void PtrArray<Value_T>::resize ()                                          
    {                                                                                            
    size_t new_size = capacity * GROWTH_RATE;                                          
                                                                                            
    Value_T** temp = (Value_T**) realloc (arr, new_size * sizeof(temp[0]));    
    assert(temp);                                                                           
                                                                                            
    capacity = new_size;                                                               
    arr      = temp;                                                                   
    }

template <class Value_T>
size_t PtrArray<Value_T>::get_size () const 
    {
    return size;
    }

template <class Value_T>
Value_T& PtrArray<Value_T>::get_value (size_t index)
    {
    assert (index < size);
    Value_T* ret_val = arr[index];
    
    assert (ret_val); 
    return *ret_val;
    }

template <class Value_T>
const Value_T& PtrArray<Value_T>::get_const_value (size_t index) const
    {
    assert (index < size);
    const Value_T* val = arr[index];
    assert (val);
    return *val;
    }

template <class Value_T>
Value_T& PtrArray<Value_T>::add (Value_T& val)  
    {               
    if (size >= capacity)                         
        this->resize ();                          

    arr[size++] = &val;   

    return val;                                            
    }

template <class Value_T>
void PtrArray<Value_T>::copy (Value_T& val)
    {
    if (size >= capacity)                         
        this->resize();                          
                                                            
    Value_T* temp = new Value_T ();
    
    *temp = val;                                                 
    arr->arr[arr->size++] = temp;      
    }

template <class Value_T>
void PtrArray<Value_T>::reset()
    {
    }
