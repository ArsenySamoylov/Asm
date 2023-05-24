#include <assert.h>
#include <stdio.h>
#include <stddef.h> 

#include "DebugIR.h"

#include "CommonEnums.h"
#include "LogMacroses.h"
#include "EasyDebug.h"

static unsigned  INDENT = 0;
static FILE* DUMP_FILE = NULL;

#define increase_indent() ++INDENT
#define decrease_indent() --INDENT

#define print(format, ...)                                     \
    do                                                         \
    {                                                          \
    for(unsigned i = 0; i < INDENT; i++)                       \
        fprintf(DUMP_FILE, "\t");                              \
                                                               \
    fprintf(DUMP_FILE, format __VA_OPT__(,) __VA_ARGS__);      \
    }while(0)

#define print_raw(format, ...) fprintf(DUMP_FILE, format __VA_OPT__(,) __VA_ARGS__)

static void DumpParameters (const ValueArr* argv);
static void PrintFullType  (const Value* val);
static void PrintName      (const Value* val);
static void PrintOperator  (OperatorType op_type);

#pragma GCC diagnostic ignored "-Wformat-zero-length"

void Module::dump (const char* out_file) const
    {
    assert(out_file);

    DUMP_FILE = fopen (out_file, "w");
    if (!DUMP_FILE)
        {
        report("Can't open file '%s'\n", out_file);
        return;
        }

    setvbuf(DUMP_FILE, NULL, _IONBF, 0);

    for (size_t i = 0; i < global_vars.get_size(); i++)
        global_vars.get_const_value(i)->dump();

    for (size_t i = 0; i < functions.get_size(); i++)
        functions.get_const_value(i)  ->dump();

    fclose(DUMP_FILE);
    DUMP_FILE = NULL;
    }

void GlobalVar::dump  () const
    {
    print("declare %s = ", name);

    if (init_val)
        init_val->dump();
    }

void Constant::dump () const
    {
    print_raw("%lg\n", ((double) get_data()) / PRECISION);
    }

void Function::dump () const 
    {
    print ("Declare function '%s' ", name);
    DumpParameters (&argv);
    print_raw(":\n");
    
    for (size_t i = 0; i < body.get_size(); i++)
        body.get_const_value(i)->dump();

    print_raw("\n");
    }

void BaseBlock::dump  () const
    {
    PrintName (this);
    print(":\n");
    increase_indent();

    for (size_t i = 0; i < inst_arr.get_size(); i++)
        inst_arr.get_const_value(i)->dump();

    decrease_indent();
    }

void Store::dump () const 
    {
    print ("%s = store(", name);
    PrintName(val);
    print_raw(")\n");
    }
                            
void Load::dump () const
    {
    print     ("");
    PrintName (dest);
    print_raw (" = load ");
    PrintName (src);
    print_raw ("\n");
    }

void Operator::dump () const
    {
    print          ("");
    PrintName      (this);
    print_raw       (" = "); 
    PrintOperator  (op_type);
    
    print_raw   (" ");
    PrintName  (left_op);
    print_raw   (", ");
    PrintName  (right_op);

    print_raw ("\n");
    }

void Branch::dump () const
    {
    print("br ");

    if (condition)
        {
        PrintName (condition);
        print_raw  (", ");    
        }

    print_raw  ("label ");  
    PrintName (true_block);

    if (condition)
        {
        print_raw (", label ");
        PrintName (false_block);
        }

    print_raw("\n\n");
    }

void Call::dump () const
    {
    if (function->get_ret_type() == FunctionRetType::Double)
            { print ("%s = ", name); } 
    else
            { print (""); }

    print_raw  ("call: ");
    PrintName (function);
    print_raw  (" ");

    DumpParameters (&argv);

    print_raw ("\n");
    }

void Return::dump () const
    {
    print_raw  ("\n");
    print     ("return ");
    PrintName (ret_value);

    print_raw ("\n");
    }

static void PrintOperator (OperatorType op_type)
    {
    switch (op_type)
        {
        case OperatorType::Add: print_raw ("add"); break;
        case OperatorType::Sub: print_raw ("sub"); break;
        case OperatorType::Mul: print_raw ("mul"); break;
        case OperatorType::Div: print_raw ("div"); break;

        case OperatorType::Bigger: print_raw ("bigger"); break;
        case OperatorType::Less:   print_raw ("less");   break;

        case OperatorType::Unknown: 
        default:
            print_raw ("Unknown"); 
            break;
        }
    }


void PrintFullType (const Value* val)
    {
    assert(val);

    print_raw ("TODO\n");

    return;
    /*
    print_raw("(");

    switch (val->get_type())
        {

        case ValueType::Function:   print_raw ("Function"); break;
        case ValueType::GlobalVar:  print_raw ("GlobalVar"); break;
        case ValueType::BaseBlock:  print_raw ("BaseBlock"); break;
        case ValueType::Constant:   print_raw ("Constant"); break;

        case ValueType::Instruction:
            print_raw ("Instruction::"); 

            switch (((const Instruction*) val) ->Instruction::type)
                {
                case InstructionType::Store:
                                    print_raw ("Store");
                                    break;

                case InstructionType::Load:
                                    print_raw ("Load");
                                    break;

                case InstructionType::Operator:
                                    print_raw ("Operator::");

                                    // PrintOperator((const Operator*) val)->op_type);
                                    break;

                case InstructionType::Branch:
                                    print_raw ("Branch");
                                    break;

                case InstructionType::Call:
                                    print_raw ("Call");
                                    break;

                case InstructionType::Return: 
                                    print_raw ("Return");
                                    break;

                default:
                    report("Unkown Instruction type\n");
                    break;
                }

              break;
        
        default:
            report ("Wrong ValueType\n");
            return FAILURE;
        }
    
    if (val->name)
        print_raw("::'%s'", val->name);


    print_raw(")");

    return SUCCESS;
    */
    }

void DumpParameters (const ValueArr* argv)
    {
    assert(argv);

    print_raw("(");

    for (size_t i = 0; i < argv->get_size(); i++)
        {
        print_raw("param ");
        PrintName (argv->get_const_value(i));

        if (i < argv->get_size() - 1)
            print_raw (", ");
        }

    print_raw(")");
    }

void PrintName (const Value* val)
    {
    assert(val);
    if (!val)
        {
        print_raw (" 'No value' ");
        return;
        }
    
    if (val->get_name() && val->get_type() != ValueType::Constant)
        {
        print_raw("%s", val->get_name());
        return;
        }

    switch (val->get_type())
        {
        case ValueType::BaseBlock:
                print_raw ("%%%p", val);
                break;

        case ValueType::Constant:
            print_raw ("%lg", ((double) ((const Constant*) val)->get_data()) / PRECISION);
            //  print_raw(" (%s)", val->name);
            break;

        case ValueType::Instruction:
            PrintFullType (val);
            break;
        
        default:
            assert(0);
        }

    return;
    }
//////////////////////////////////////////////////////
int PrintValue (const Value* val)
    {
    assert(val);

    FILE* temp = DUMP_FILE;

    DUMP_FILE = stdout;
    setvbuf(DUMP_FILE, NULL, _IONBF, 0);
    
    print ("Value %p: ", val);
    // PrintName (val);
    PrintFullType (val);
    print_raw ("\n");

    DUMP_FILE = temp;

    return SUCCESS;
    }



void DumpInstructionForFile (const Instruction* instr);

int WriteToFile (FILE* out, const Instruction* instr)
    {
    assert(out);
    assert(instr);
    
    FILE* temp = DUMP_FILE;

    DUMP_FILE = out;
    DumpInstructionForFile (instr);
    DUMP_FILE = temp;

    return SUCCESS;
    }

void DumpInstructionForFile (const Instruction* instr)
    {
    assert(instr);

    return;
    /*
    switch (instr->Instruction::type)
        {
        case InstructionType::Store:
                            print ("%s = store(", instr->name);
                            PrintName(((const Store*) instr) ->val);
                            print_raw(")");

                            return SUCCESS; 
                            
        case InstructionType::Load:
                            print     ("");
                            PrintName (((const Load*) instr) ->dest);
                            print_raw  (" = load ");
                            PrintName (((const Load*) instr) ->src);

                            return SUCCESS;

        case InstructionType::Operator:
                            print          ("");
                            PrintName      (instr);
                            print_raw       (" = "); 
                            PrintOperator  ((const Operator*) instr);
                            
                            print_raw   (" ");
                            PrintName  (((const Operator*) instr) ->left_op);
                            print_raw   (", ");
                            PrintName  (((const Operator*) instr)     ->right_op);

                            return SUCCESS;

        case InstructionType::Branch:
                            {
                            print("br ");

                            Value* condition = ((const Branch*) instr)->condition;

                            if (condition)
                                {
                                PrintName (condition);
                                print_raw  (", ");    
                                }

                            print_raw  ("label ");  
                            PrintName (((const Branch*) instr)   ->true_block);

                            if (condition)
                                {
                                print_raw  (", label ");
                                PrintName (((const Branch*) instr) ->false_block);
                                }

                            return SUCCESS;
                            }

        case InstructionType::Call:
                            if (((const Call*) instr)->function->type == FunctionRetType::Double)
                                {
                                print ("%s = ", instr->name);
                                }
                            else
                                {
                                print ("");
                                }

                            print_raw     ("call: ");
                            PrintName (((const Call*) instr) ->function);
                            print_raw  (" ");

                            DumpParameters (&(((const Call*) instr) ->argv));

                            return SUCCESS;

        case InstructionType::Return: 
                            print     ("return ");
                            PrintName (((const Return*) instr) ->value);

                            return  SUCCESS;

        default:
            report ("Unkown Instruction type\n");
            break;
        }

    return FAILURE;
    */
    }