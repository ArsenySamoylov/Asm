#include "NameTable.h"

#include "LogMacroses.h"
#include "EasyDebug.h"

const int GROWTH_RATE = 2;

const int START_LABEL_ARR_SIZE = 10;

static int ResizeNameTable  (NameTable* tabel);

#define LABEL_ARR(TABLE)        (TABLE->label_arr)
#define NUMBER_OF_LABELS(TABLE) (TABLE->number_of_labels)
#define ARR_SIZE(TABLE)         (TABLE->arr_size)

NameTable* NewNameTable ()
    {
    NameTable* table = (NameTable*) CALLOC (1, sizeof(table[0]));
    if (!table)
        return NULL;

    ARR_SIZE(table) = START_LABEL_ARR_SIZE;

    LABEL_ARR(table) = (Label**) CALLOC (ARR_SIZE(table), sizeof(Label*));
    if (!LABEL_ARR(table))
        {
        KILL(table);
        return NULL;
        }

    NUMBER_OF_LABELS(table) = 0;
    
    return table;
    }

int CloseNameTable (NameTable* table)
    {
    assertlog(table, EFAULT, return LFAILURE);

    if (!LABEL_ARR(table))
        {
        printf("Tabel %p: Null label arr pointer\n", (void*) table);
        return FAILURE;
        }

    if (ARR_SIZE(table) < NUMBER_OF_LABELS(table))
        {
        printf("table %p: arr_size (%zu) less than namber_of_labels (%zu)\n", 
             (void*) table, ARR_SIZE(table), NUMBER_OF_LABELS(table)); 

        return FAILURE;
        }

    for (size_t i = 0; i < NUMBER_OF_LABELS(table); i++)
        {
        if (!(LABEL_ARR(table) + i))
            {
            printf ("table %p: null label in label_arr (position %zu)\n", table, i);

            return FAILURE;
            }

        
        KILL (LABEL_ARR(table)[i]);
        }

    KILL (LABEL_ARR(table));
    KILL (table);

    return SUCCESS;
    }

Label* IsLabel (int name_id, int type, NameTable* table)
    {
    $log(1)
    assertlog(table, EFAULT, return NULL);

    size_t number_of_labels = NUMBER_OF_LABELS(table);
    if (number_of_labels < 1)
        return NULL;

    Label** label_arr = LABEL_ARR(table);
    if (!label_arr)
        {
        func_message("Empty label array in func table %p\n", (void*) table);
        return NULL;
        }

    $li(type)
    $li(name_id)
    for(size_t i = 0; i < number_of_labels; i++)
        {
        if (name_id == (*(label_arr + i))->name_id && 
            type    == (*(label_arr + i))->type)
            return  *(label_arr + i);
        } 
    
    return NULL;
    }

int AddLabel (Label* label, NameTable* table)
    {
    $log(1)
    assertlog(label,  EFAULT, return LFAILURE);
    assertlog(table,  EFAULT, return LFAILURE);

    if (ARR_SIZE(table) <= NUMBER_OF_LABELS(table))
        CHECK(ResizeNameTable(table) == SUCCESS, return LFAILURE);

    *(LABEL_ARR(table) + NUMBER_OF_LABELS(table)) = label;

    // $lzu(NUMBER_OF_LABELS(table))
    
    return (int) NUMBER_OF_LABELS(table)++; 
    }

Label* CopyLabel (Label* label, NameTable* table)
    {
    $log(1)
    assertlog(label, EFAULT, return LNULL);
    assertlog(table, EFAULT, return LNULL);

    if (IsLabel(label->name_id, label->type, table))
        {
        func_message("Label (%p) with same name and type already in table\n", (void*) label);
        
        printf("Type: %d\n", label->type);

        return LNULL;
        }

    Label* new_label = (Label*) CALLOC (1, sizeof(new_label[0]));
    if (!new_label)
        return LNULL;

    *new_label = *label;
    
    /* 
    new_label->type    = label->type;
    new_label->name_id = label->name_id;
    
    new_label->number_of_vars = label->number_of_vars;
    new_label->ret_type       = label->ret_type;

    new_label->var_number = label->var_number;

    new_label->local_type = label->local_type;
    new_label->global_initialization = label->global_initialization;
    */

    if (AddLabel(new_label, table) < 0)
        return LNULL;

    return new_label;
    }

int CompareLabels (Label* label1, Label* label2)
    {
    assertlog(label1, EFAULT, return false);
    assertlog(label2, EFAULT, return false);

    if (label1->name_id != label2-> name_id)
        return false;

    if (label1->type != label2->type)
        return false;

    if (label1->number_of_vars != label2->number_of_vars)
        return false;

    if (label1->ret_type != label2->ret_type)
        return false;

    if (label1->var_number != label2->var_number)
        return false;

    return true;
    }

static int ResizeNameTable (NameTable* table)
    {
    assertlog(table, EFAULT, return BAD_ARGUMENT);

    Label** temp_arr = (Label**) RECALLOC (LABEL_ARR(table), ARR_SIZE(table) * GROWTH_RATE * sizeof(temp_arr[0]));
    if (!temp_arr)
        return LFAILURE;

    LABEL_ARR(table) = temp_arr;
     ARR_SIZE(table) *= GROWTH_RATE;

    return SUCCESS;
    }    

/////////////////////////////////////////////////////////////////////////////////
#define ARR(TABLE_ARR)                ((TABLE_ARR)->arr) 
#define TABLE_ARR_SIZE(TABLE_ARR)     ((TABLE_ARR)->size_of_tables_arr)
#define NUMBER_OF_TABLES(TABLE_ARR)   ((TABLE_ARR)->number_of_tables)

static int ResizeNameTableArr (NameTableArr* table_arr);

NameTableArr* NewNameTableArr (int start_size)
    {
    if (start_size <= 0 )
        {
        func_message("Can't create NameTableArr of size %d\n", start_size);
        return LNULL;
        }

    NameTableArr* table_arr = (NameTableArr*) CALLOC (1, sizeof(table_arr[0]));
    if (!table_arr)
        return NULL;

    TABLE_ARR_SIZE(table_arr) = start_size;

    ARR(table_arr) = (NameTable**) CALLOC ((size_t) TABLE_ARR_SIZE(table_arr), sizeof(ARR(table_arr)[0]));
    if (!ARR(table_arr))
        {
        KILL(table_arr);
        return NULL;
        }

    NUMBER_OF_TABLES(table_arr) = 0;
    
    return table_arr;
    }

int DeleteNameTableArr (NameTableArr* table_arr)
    {
    assertlog(table_arr, EFAULT, return LFAILURE);

    if (!ARR(table_arr))
        {
        func_message("Tabel_arr %p: Null table_arr arr pointer\n", (void*) table_arr);
        return LFAILURE;
        }

    if (TABLE_ARR_SIZE(table_arr) < NUMBER_OF_TABLES(table_arr))
        {
        func_message("Table+arr %p: arr_size (%d) less than namber_of_tables (%d)\n", 
             (void*) table_arr, TABLE_ARR_SIZE(table_arr), NUMBER_OF_TABLES(table_arr)); 

        return FAILURE;
        }

    for (int i = 0; i < NUMBER_OF_TABLES(table_arr); i++)
        {
        if (!(ARR(table_arr) + i))
            {
            func_message("table_arr %p: null label in table_arr (position %d)\n", table_arr, i);

            return LFAILURE;
            }
        CloseNameTable(ARR(table_arr)[i]);
        }

    KILL (ARR(table_arr));
    KILL (table_arr);

    return SUCCESS;
    }

NameTable* AddTable (NameTableArr* table_arr)
    {
    $log(1)
    assertlog(table_arr,  EFAULT, return LNULL);

    if (TABLE_ARR_SIZE(table_arr) <= NUMBER_OF_TABLES(table_arr))
        CHECK(ResizeNameTableArr(table_arr) == SUCCESS, return LNULL);

    NameTable* table = NewNameTable();
    if (!table)
        return LNULL;

    *(ARR(table_arr) + NUMBER_OF_TABLES(table_arr)++) = table;

    // $lzu(NUMBER_OF_LABELS(table))
    
    return table; 
    }


static int ResizeNameTableArr (NameTableArr* table_arr)
    {
    assertlog(table_arr, EFAULT, return BAD_ARGUMENT);

    NameTable** temp_arr = (NameTable**) RECALLOC (ARR(table_arr), (size_t) TABLE_ARR_SIZE(table_arr) * GROWTH_RATE * sizeof(temp_arr[0]));
    if (!temp_arr)
        return LFAILURE;

    ARR(table_arr) = temp_arr;
    TABLE_ARR_SIZE(table_arr) *= GROWTH_RATE;

    return SUCCESS;
    }