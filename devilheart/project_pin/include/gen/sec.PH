//Groups: @ingroup\s+(API_REF|KNOBS|IMG_BASIC_API|INS_BASIC_API|INS_INST_API|INS_BASIC_API_GEN_IA32|INS_BASIC_API_IA32|INS_BASIC_API_IPF|INS_MOD_API_GEN_IA32|SEC_BASIC_API|RTN_BASIC_API|REG_BASIC_API|REG_CPU_GENERIC|REG_CPU_IPF|REG_CPU_IA32|TRACE_BASIC_API|BBL_BASIC_API|SYM_BASIC_API|MISC_PRINT|MISC_PARSE|KNOB_API|KNOB_BASIC|KNOB_PRINT|LOCK|PIN_CONTROL|BUFFER_API|PROTO_API|PIN_PROCESS_API|PIN_THREAD_API|DEBUG_API|ERROR_FILE_BASIC|TYPE_BASE|INSTLIB|ALARM|ROGUE_EDG_BASIC_API|ROGUE_BBL_BASIC_API|ROGUE_INS_BASIC_API|ROGUE_TRACE_BASIC_API|ROGUE_CONTROL_BASIC_API|CODECACHE_API|CHILD_PROCESS_API|SUPERPIN_API|UTILS|IPF_UTILS_API|MISC|CONTEXT_API|CHECKPOINTING|EXCEPTION_API|APPDEBUG_API|BUFFER_API|PROTO|INST_ARGS|PIN_THREAD_PRIVATE|CHILD_PROCESS_INTERNAL|EDG_BASIC|BBL_BASIC|ROGUE_BASIC_API|CODECACHE_NYI_API|INS_BASIC_API_GEN_IPF|MESSAGE_TYPE|MESSAGE_BASIC|ERRFILE|MISC_BASIC|ITC_INST_API|CHECKPOINTING_PRIVATE|CONTEXT_API_UNDOC|EXCEPTION_API_UNDOC|SHADOW_PROFILING_UNDOC|UNDOCUMENTED_PIN_API|DEPRECATED_PIN_API|OPIN|TRACE_VERSIONS
/* PIN API */

/* THIS FILE IS AUTOMAGICALLY GENERATED - DO NOT CHANGE DIRECTLY*/


typedef enum 
{
    SEC_TYPE_INVALID,
    SEC_TYPE_UNUSED,
    SEC_TYPE_REGREL,    ///< relocations
    SEC_TYPE_DYNREL, ///< dynamic relocations
    SEC_TYPE_EXEC, ///< contains code     
    SEC_TYPE_DATA, ///< contains initialized data
    SEC_TYPE_DYNAMIC,
    SEC_TYPE_OPD,
    SEC_TYPE_GOT,
    SEC_TYPE_STACK,
    SEC_TYPE_PLTOFF,
    SEC_TYPE_HASH,
    SEC_TYPE_LSDA,    ///< old exception_info (obsolete)
    SEC_TYPE_UNWIND,
    SEC_TYPE_UNWINDINFO,
    SEC_TYPE_REGSYM,
    SEC_TYPE_DYNSYM,
    SEC_TYPE_DEBUG,
    SEC_TYPE_BSS, ///< contains uninitialized data
    SEC_TYPE_SYMSTR,
    SEC_TYPE_DYNSTR,
    SEC_TYPE_SECSTR,
    SEC_TYPE_COMMENT,
    SEC_TYPE_LOOS, ///< OS specific
    SEC_TYPE_LAST
}SEC_TYPE;

                                                                  /* DO NOT EDIT */

