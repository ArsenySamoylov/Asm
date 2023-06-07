/*!
\file
\brief This file contains declaration of Value class and its derived classes
        (only exception is Instruction; it declared in Instructions.h) 
*/
#pragma once

#include <cstddef>

#include "ValueArrTemplate.h"
#include "Storage.h"

enum class ValueType
    {
    Function,
    GlobalVar,
    BaseBlock,
    Constant,
    Instruction,

    Value
    };

/*!
    \brief Abstract class for IR object.
    @note Storage shows where Value stored during translation to x86 (for example on stack or in register)
          and also hold some data (stack offset or reg number for example).
          In translate_tox86 I work with const Value, which changes its storage.
          That is why storage is mutable.  
*/
class Value : public NoCopyable
    {
    protected:
        const enum ValueType type;
        const name_t name;

        mutable Storage storage;

    public:
                 Value (ValueType type_param, name_t name_param);
        virtual ~Value () = default;         

        name_t get_name() const;
        
        /**
         * @brief  Print Value in human-readable format to file DUMP.
         * 
         * Print Value in human-readable format to file DUMP. 
         * PRINT_NEW_LINES regulates if printed Value generates extra new line chars
         */
        virtual void dump () const = 0;  

        /**
         * @brief Get Value type
         * 
         * @note debug purpose only
         * @return ValueType 
         */
        virtual ValueType get_type () const = 0;

        /**
         * @brief Translate Value to x86 op codes
         * 
         * @param ctx 
         */
        virtual void translate_x86  (Context* ctx) const = 0;

        /**
         * @brief Puts Value to reg
         * 
         * Depending on *storage* field this functions puts Value to register
         * @param ctx 
         * @return GPRegisterNumber 
         */
        GPRegisterNumber put_to_reg (Context* ctx) const;
        
        /**
         * @brief Set the *storage* 
         * 
         * This functions sets *storage_type* for value
         * In Function and BaseBlock this function call this this function for all
         * objects from their ValueArr<> members
         * @note for Constant this function only checks *storage_type*
         */
        virtual void set_storage () const = 0;

        /**
         * @brief Get the *storage* member 
         * 
         * @return Storage* 
         */
        Storage* get_storage () const;                
    };

//////////////////////////////////////////////////////
class Instruction;

/**
 * @brief Block of Instructions.
 * 
 * BaseBlock is array of Instructions that will be executed continuously.
 */
class BaseBlock : public Value
    {
    private:
        ValueArr <Instruction> inst_arr;
    
    public:
        BaseBlock (name_t name_param);
       ~BaseBlock () override;

        void      dump     () const override;
        ValueType get_type () const override;
        
        void translate_x86 (Context* ctx) const override;
        void set_storage   ()             const override;

        Instruction* add_instr (Instruction* instr);
        void set_address (address_t address) const;
    };

//////////////////////////////////////////////////////
/// For historical reasons float constants represents as
/// integer value multiplied by PRECISION 
const int PRECISION = 100;

/**
 * @brief Double constant.
 * 
 * Object for double constant
 */
class Constant : public Value
    {
    public:
        /**
         * @brief Construct a new Constant object
         * @note Constant keeps its 'data_t data_param' in 'storage' field.  
         * @param name_param 
         * @param data_param 
         */
        Constant (name_t name_param, const data_t data_param);
       ~Constant () override = default;

       void      dump     () const override;
       ValueType get_type () const override;
       
       void translate_x86 (Context* ctx) const override;
       void set_storage   ()             const override;

       data_t get_data () const;
    };

//////////////////////////////////////////////////////
enum class VariableBaseType
    {
    Double,
    Int,
    Char,
    };

/**
 * @brief Global Variable.
 * 
 */
class GlobalVar : public Value
    {
    private:
        const enum VariableBaseType var_type;
        const Constant*             init_val;

    public:
        GlobalVar (name_t name_param, VariableBaseType var_type_param, const Constant* init_val_param);
       ~GlobalVar () override = default;

       void      dump     () const override;
       ValueType get_type () const override;

       void translate_x86 (Context* ctx) const override;
       void set_storage   ()             const override;
    };

//////////////////////////////////////////////////////
enum class FunctionRetType
    {
    Double,
    Void,
    };

/**
 * @brief Function.
 * 
 * Objects that represents function
 */
class Function : public Value
    {
    private:
        const enum FunctionRetType ret_type;

        ValueArr<Value>     argv;    
        ValueArr<BaseBlock> body;

        size_t n_local_vars;

    public:
        Function (name_t name_param, FunctionRetType ret_type_param);
       ~Function () override;

       void      dump     () const override;
       ValueType get_type () const override;
       
       void translate_x86 (Context* ctx) const override;
       void set_storage   ()             const override;

       ValueArr<Value>*       get_argv ();
       ValueArr<BaseBlock>*   get_body ();

       FunctionRetType get_ret_type () const;
       
       void   increase_n_local_vars ();
       size_t get_n_local_vars      () const;
       
       /**
        * @brief Sets function virtual address in storage
        * 
        * @param address 
        */
       void set_address (address_t address) const;
    };