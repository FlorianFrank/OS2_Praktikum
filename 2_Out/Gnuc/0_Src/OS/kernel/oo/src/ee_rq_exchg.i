# 1 "0_Src/OS/kernel/oo/src/ee_rq_exchg.c"
# 1 "C:\\betriebssys\\BaseFramework_TC26xB//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "0_Src/OS/kernel/oo/src/ee_rq_exchg.c"
# 46 "0_Src/OS/kernel/oo/src/ee_rq_exchg.c"
# 1 "./0_Src/OS/ee_internal.h" 1
# 54 "./0_Src/OS/ee_internal.h"
# 1 "./0_Src/OS/config/inc/eecfg.h" 1
# 55 "./0_Src/OS/ee_internal.h" 2

# 1 "./0_Src/OS/ee_rtdruid_versions.h" 1
# 57 "./0_Src/OS/ee_internal.h" 2
# 114 "./0_Src/OS/ee_internal.h"
# 1 "./0_Src/OS/cpu/tricore/inc/ee_tc_internal.h" 1
# 59 "./0_Src/OS/cpu/tricore/inc/ee_tc_internal.h"
# 1 "./0_Src/OS/cpu/tricore/inc/ee_tc_cpu.h" 1
# 66 "./0_Src/OS/cpu/tricore/inc/ee_tc_cpu.h"
# 1 "./0_Src/OS/cpu/tricore/inc/ee_tc_cpu_reg.h" 1
# 67 "./0_Src/OS/cpu/tricore/inc/ee_tc_cpu.h" 2



# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-1.1\\tricore\\include\\machine\\intrinsics.h" 1 3
# 88 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-1.1\\tricore\\include\\machine\\intrinsics.h" 3
static __inline__ __attribute__((__always_inline__))
void _bisr (const unsigned __irq_level)
{
  __asm__ volatile ("bisr %0" :: "i" (__irq_level) : "memory");
}
# 110 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-1.1\\tricore\\include\\machine\\intrinsics.h" 3
static __inline__ __attribute__((__always_inline__))
unsigned _mfcr (const unsigned __regaddr)
{
  unsigned __res;
  __asm__ volatile ("mfcr %0, LO:%1"
                    : "=d" (__res) : "i" (__regaddr) : "memory");
  return __res;
}
# 134 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-1.1\\tricore\\include\\machine\\intrinsics.h" 3
static __inline__ __attribute__((__always_inline__))
void _mtcr (const unsigned __regaddr, const unsigned __val)
{
  __asm__ volatile ("mtcr LO:%0, %1"
                    :: "i" (__regaddr), "d" (__val) : "memory");
}
# 152 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-1.1\\tricore\\include\\machine\\intrinsics.h" 3
static __inline__ __attribute__((__always_inline__))
void _syscall (const unsigned __service)
{
  __asm__ volatile ("syscall %0" :: "i" (__service) : "memory");
}






static __inline__ __attribute__((__always_inline__))
void _disable (void)
{
  __asm__ volatile ("disable" ::: "memory");
}

static __inline__ __attribute__((__always_inline__))
void _enable (void)
{
  __asm__ volatile ("enable" ::: "memory");
}

static __inline__ __attribute__((__always_inline__))
void _debug (void)
{
  __asm__ volatile ("debug" ::: "memory");
}

static __inline__ __attribute__((__always_inline__))
void _isync (void)
{
  __asm__ volatile ("isync" ::: "memory");
}

static __inline__ __attribute__((__always_inline__))
void _dsync (void)
{
  __asm__ volatile ("dsync" ::: "memory");
}

static __inline__ __attribute__((__always_inline__))
void _rstv (void)
{
  __asm__ volatile ("rstv" ::: "memory");
}

static __inline__ __attribute__((__always_inline__))
void _rslcx (void)
{
    __asm__ volatile ("rslcx" ::: "memory",
                      "d0", "d1", "d2", "d3", "d4", "d5", "d6", "d7",
                      "a2", "a3", "a4", "a5", "a6", "a7", "a11");
}


static __inline__ __attribute__((__always_inline__))
void _svlcx (void)
{
  __asm__ volatile ("svlcx" ::: "memory");
}

static __inline__ __attribute__((__always_inline__))
void _nop (void)
{
  __asm__ volatile ("nop" ::: "memory");
}
# 227 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-1.1\\tricore\\include\\machine\\intrinsics.h" 3
static __inline__ __attribute__((__always_inline__))
void _restore (const int irqs_on)
{

  __asm__ volatile ("restore %0" :: "d" (irqs_on) : "memory");






}
# 71 "./0_Src/OS/cpu/tricore/inc/ee_tc_cpu.h" 2

# 1 "./0_Src/OS/cpu/common/inc/ee_compiler_gcc.h" 1
# 73 "./0_Src/OS/cpu/tricore/inc/ee_tc_cpu.h" 2
# 110 "./0_Src/OS/cpu/tricore/inc/ee_tc_cpu.h"
# 1 "./0_Src/OS/cpu/common/inc/ee_types.h" 1
# 50 "./0_Src/OS/cpu/common/inc/ee_types.h"
# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-1.1\\lib\\gcc\\tricore\\4.9.4\\include-fixed\\limits.h" 1 3 4
# 51 "./0_Src/OS/cpu/common/inc/ee_types.h" 2


typedef unsigned char EE_BIT;


typedef unsigned char EE_UINT8;
typedef signed char EE_INT8;
# 73 "./0_Src/OS/cpu/common/inc/ee_types.h"
typedef short int EE_INT16;
typedef unsigned short int EE_UINT16;
typedef int EE_INT32;
typedef unsigned int EE_UINT32;
# 90 "./0_Src/OS/cpu/common/inc/ee_types.h"
typedef void *EE_ADDR;





typedef const void *EE_CONST_ADDR;


typedef void (*EE_FADDR)(void);


typedef void (*EE_VOID_CALLBACK)(void);


typedef void (*EE_THREAD_PTR)(void);


typedef EE_VOID_CALLBACK EE_ISR_callback;
# 111 "./0_Src/OS/cpu/tricore/inc/ee_tc_cpu.h" 2
# 123 "./0_Src/OS/cpu/tricore/inc/ee_tc_cpu.h"
typedef EE_UINT32 EE_UREG;
typedef EE_INT32 EE_SREG;
typedef EE_UINT32 EE_FREG;


typedef EE_INT32 EE_TID;


typedef EE_UINT32 EE_UTID;


typedef EE_UINT8 EE_TYPEISR2PRIO;


typedef void (*EE_tc_ISR_handler)(void);
# 148 "./0_Src/OS/cpu/tricore/inc/ee_tc_cpu.h"
struct EE_TC_TOS {
  EE_ADDR ram_tos;
  EE_UREG pcxi_tos;
};



typedef EE_UINT32 EE_STACK_T;
# 204 "./0_Src/OS/cpu/tricore/inc/ee_tc_cpu.h"
# 1 "./0_Src/OS/cpu/common/inc/ee_hal_structs.h" 1
# 74 "./0_Src/OS/cpu/common/inc/ee_hal_structs.h"
struct EE_TOS {
    EE_ADDR SYS_tos;
};
# 85 "./0_Src/OS/cpu/common/inc/ee_hal_structs.h"
extern const EE_THREAD_PTR EE_hal_thread_body[];




extern struct EE_TOS EE_std_system_tos[];


extern const EE_UREG EE_std_thread_tos[];


extern EE_UREG EE_std_active_tos;
# 105 "./0_Src/OS/cpu/common/inc/ee_hal_structs.h"
extern EE_UINT32 EE_terminate_data[];



extern const EE_THREAD_PTR EE_terminate_real_th_body[];
# 205 "./0_Src/OS/cpu/tricore/inc/ee_tc_cpu.h" 2
# 221 "./0_Src/OS/cpu/tricore/inc/ee_tc_cpu.h"
typedef union {
  EE_UINT32 reg;
  struct {
    EE_UINT32 PCXO :16;
    EE_UINT32 PCXS :4;




    EE_UINT32 UL :1;
    EE_UINT32 PIE :1;
    EE_UINT32 PCPN :8;
  } bits;
} EE_PCXI;


typedef EE_PCXI EE_CSA_LINK;


typedef struct {
  EE_CSA_LINK next;
  union {
    struct {


      EE_UREG PSW_;
      EE_ADDR A10;
      EE_ADDR A11;
      EE_UREG D8;
      EE_UREG D9;
      EE_UREG D10;
      EE_UREG D11;
      EE_ADDR A12;
      EE_ADDR A13;
      EE_ADDR A14;
      EE_ADDR A15;
      EE_UREG D12;
      EE_UREG D13;
      EE_UREG D14;
      EE_UREG D15;
    } ucx;
    struct {
      EE_ADDR A11;
      EE_ADDR A2;
      EE_ADDR A3;
      EE_UREG D0;
      EE_UREG D1;
      EE_UREG D2;
      EE_UREG D3;
      EE_ADDR A4;
      EE_ADDR A5;
      EE_ADDR A6;
      EE_ADDR A7;
      EE_UREG D4;
      EE_UREG D5;
      EE_UREG D6;
      EE_UREG D7;
    } lcx;
  } cx;
} EE_CSA;
# 307 "./0_Src/OS/cpu/tricore/inc/ee_tc_cpu.h"
typedef union {
  struct {
    EE_UREG CCPN :8;
    EE_UREG bit8_ :1;
    EE_UREG bit9_ :1;
    EE_UREG bit10_ :1;
    EE_UREG bit11_ :1;
    EE_UREG bit12_ :1;
    EE_UREG bit13_ :1;
    EE_UREG bit14_ :1;
    EE_UREG IE :1;
    EE_UREG PIPN :8;
    EE_UREG bit24_ :1;
    EE_UREG bit25_ :1;
    EE_UREG bit26_ :1;
    EE_UREG bit27_ :1;
    EE_UREG bit28_ :1;
    EE_UREG bit29_ :1;
    EE_UREG bit30_ :1;
    EE_UREG bit31_ :1;
  } bits;
  EE_UREG reg;
} EE_ICR;
# 502 "./0_Src/OS/cpu/tricore/inc/ee_tc_cpu.h"
static inline EE_UREG __attribute__((always_inline)) EE_tc_clz( EE_UREG data )
{
  return (EE_UREG)__builtin_clz (data);
}
# 526 "./0_Src/OS/cpu/tricore/inc/ee_tc_cpu.h"
static inline EE_UREG __attribute__((always_inline)) EE_tc_read_return_value( void )
{
  register EE_UREG reg = 0U;
  __asm volatile ("mov %0, %%d2" : "=d"(reg));
  return reg;
}


static inline void __attribute__((always_inline)) EE_tc_dsync( void )
{
  _dsync();
}


static inline void __attribute__((always_inline)) EE_tc_isync( void )
{
  _isync();
}


static inline void __attribute__((always_inline)) EE_tc_debug( void )
{
  _debug();
}


static inline EE_UREG __attribute__((always_inline)) EE_tc_cpu_model( void )
{
  register EE_UREG r = _mfcr(0xFE18);
  return (r >> 2U);
}

static inline EE_UREG __attribute__((always_inline)) EE_tc_cpu_revision( void )
{
  register EE_UREG r = _mfcr(0xFE18);
  return (r & 0xFFU);
}


static inline EE_UREG __attribute__((always_inline)) EE_tc_get_CCNT( void )
{
  return _mfcr(0xFC04);
}


static inline EE_ICR __attribute__((always_inline)) EE_tc_get_ICR( void )
{
  register EE_ICR icr;
  icr.reg = _mfcr(0xFE2C);
  return icr;
}

static inline void __attribute__((always_inline)) EE_tc_set_ICR( EE_ICR icr )
{
  _mtcr(0xFE2C, icr.reg);



  EE_tc_isync();
}


static inline void __attribute__((always_inline)) EE_tc_enableIRQ( void )
{
  _enable();
}

static inline void __attribute__((always_inline)) EE_tc_disableIRQ( void )
{
  _disable();
}


static inline void __attribute__((always_inline)) EE_tc_call( EE_THREAD_PTR t )
{
  __asm volatile ("calli %0" : : "a"(t));
}

static inline void __attribute__((always_inline)) EE_tc_jump( EE_THREAD_PTR t )
{
  __asm volatile ("ji %0" : : "a"(t));
}

static inline void __attribute__((always_inline)) EE_tc_jump_and_link( EE_THREAD_PTR t )
{
  __asm volatile ("jli %0" : : "a"(t));
}



static inline EE_ADDR __attribute__((always_inline)) EE_tc_get_RA( void )
{
  register EE_ADDR reg = 0U;
  __asm volatile ("mov.aa %0, %%a11" : "=a"(reg));
  return reg;
}

static inline void __attribute__((always_inline)) EE_tc_set_RA( EE_CONST_ADDR reg )
{
  __asm volatile ("mov.aa %%a11, %0" : : "a"(reg));
}

static inline EE_ADDR __attribute__((always_inline)) EE_tc_get_SP( void )
{
  register EE_ADDR reg = 0U;
  __asm volatile ("mov.aa %0, %%a10" : "=a"(reg));
  return reg;
}

static inline void __attribute__((always_inline)) EE_tc_set_SP( EE_CONST_ADDR reg )
{

  __asm volatile ("mov.aa %%a10, %0" : : "a"(reg) : "memory");
}


static inline void __attribute__((always_inline)) EE_tc_svlcx( void )
{
  _svlcx();
}

static inline void __attribute__((always_inline)) EE_tc_rslcx( void )
{
  _rslcx();
}





static inline void __attribute__((always_inline)) EE_tc_set_psw( EE_UREG reg )
{
  do { unsigned __newval = (unsigned) (reg); __asm__ volatile ("mtcr LO:" "0xFE04" ", %0" :: "d" (__newval) : "memory"); } while (0);



  EE_tc_isync();
}



static inline void __attribute__((always_inline)) EE_tc_set_pcxi( EE_UREG reg )
{
  do { unsigned __newval = (unsigned) (reg); __asm__ volatile ("mtcr LO:" "0xFE00" ", %0" :: "d" (__newval) : "memory"); } while (0);



  EE_tc_isync();
}



static inline void __attribute__((always_inline)) EE_tc_set_fcx( EE_UREG reg )
{
  do { unsigned __newval = (unsigned) (reg); __asm__ volatile ("mtcr LO:" "0xFE38" ", %0" :: "d" (__newval) : "memory"); } while (0);



  EE_tc_isync();
}



static inline void __attribute__((always_inline)) EE_tc_set_syscon( EE_UREG reg )
{
  do { unsigned __newval = (unsigned) (reg); __asm__ volatile ("mtcr LO:" "0xFE14" ", %0" :: "d" (__newval) : "memory"); } while (0);



  EE_tc_isync();
}
# 893 "./0_Src/OS/cpu/tricore/inc/ee_tc_cpu.h"
static inline void __attribute__((always_inline)) EE_tc_resumeIRQ( EE_FREG flags )
{
  register EE_ICR icr;
  icr.reg = flags;
  EE_tc_set_ICR(icr);
}

static inline EE_FREG __attribute__((always_inline)) EE_tc_suspendIRQ( void )
{
  register EE_ICR icr = EE_tc_get_ICR();
  EE_tc_disableIRQ();
  return icr.reg;
}


static inline EE_FREG __attribute__((always_inline)) EE_tc_isIRQEnabled( void )
{
  register EE_ICR icr = EE_tc_get_ICR();
  return (EE_FREG)(icr.bits.IE);
}


static inline EE_TYPEISR2PRIO __attribute__((always_inline)) EE_tc_get_int_prio( void )
{
  return (EE_UINT8)EE_tc_get_ICR().bits.CCPN;
}

static inline void __attribute__((always_inline)) EE_tc_set_int_prio( EE_TYPEISR2PRIO prio )
{
  register EE_ICR icr = EE_tc_get_ICR();
  icr.bits.CCPN = prio;
  EE_tc_set_ICR(icr);
}






static inline EE_CSA* __attribute__((always_inline)) EE_tc_csa_make_addr( EE_CSA_LINK link )
{
  EE_CSA* res = (EE_CSA*)(((EE_UINT32)(link.bits.PCXS) << 28U) |
    (((EE_UINT32)link.bits.PCXO) << 6U));
  return res;
}


static inline EE_CSA_LINK __attribute__((always_inline)) EE_tc_csa_get_fcx( void )
{
  register EE_CSA_LINK head;
  head.reg = (__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "0xFE38" : "=d" (__res) :: "memory"); __res; }));
  return head;
}


static inline void __attribute__((always_inline)) EE_tc_csa_set_fcx( EE_CSA_LINK link )
{
  EE_tc_set_fcx(link.reg);
}


static inline EE_CSA_LINK __attribute__((always_inline)) EE_tc_csa_get_pcxi()
{
  register EE_CSA_LINK head;
  head.reg = (__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "0xFE00" : "=d" (__res) :: "memory"); __res; }));
  return head;
}


static inline void __attribute__((always_inline)) EE_tc_csa_set_pcxi( EE_CSA_LINK link )
{
  EE_tc_set_pcxi(link.reg);
}


static inline EE_CSA_LINK __attribute__((always_inline)) EE_tc_csa_get_next( EE_CSA_LINK at )
{
  EE_CSA_LINK res = {0U};
  EE_CSA* csa_ptr = EE_tc_csa_make_addr(at);
  if (csa_ptr != 0) {
    res = csa_ptr->next;
  }
  return res;
}


static inline void __attribute__((always_inline)) EE_tc_csa_set_next( EE_CSA_LINK at,
    EE_CSA_LINK link )
{
  EE_CSA* csa_ptr = EE_tc_csa_make_addr(at);
  if (csa_ptr != 0) {
    csa_ptr->next = link;
  }
}
# 995 "./0_Src/OS/cpu/tricore/inc/ee_tc_cpu.h"
static inline void __attribute__((always_inline)) EE_hal_enableIRQ( void )
{
  EE_tc_enableIRQ();
}

static inline void __attribute__((always_inline)) EE_hal_disableIRQ( void )
{
  EE_tc_disableIRQ();
}

static inline void __attribute__((always_inline)) EE_hal_resumeIRQ( EE_FREG flags )
{
  EE_tc_resumeIRQ(flags);
}

static inline EE_FREG __attribute__((always_inline)) EE_hal_suspendIRQ( void )
{
  return EE_tc_suspendIRQ();
}
# 1023 "./0_Src/OS/cpu/tricore/inc/ee_tc_cpu.h"
typedef enum
{
  EE_TC_ENDINIT_DISABLE = 0x0U,
  EE_TC_ENDINIT_ENABLE = 0x1U
} EE_tc_endinit_t;

void EE_tc_endint_disable( void );
void EE_tc_endint_enable( void );


void EE_tc_safety_endinit_disable( void );
void EE_tc_safety_endinit_enable( void );
# 60 "./0_Src/OS/cpu/tricore/inc/ee_tc_internal.h" 2
# 85 "./0_Src/OS/cpu/tricore/inc/ee_tc_internal.h"
# 1 "./0_Src/OS/cpu/common/inc/ee_primitives.h" 1
# 57 "./0_Src/OS/cpu/common/inc/ee_primitives.h"
extern EE_UREG EE_IRQ_nesting_level;

static inline EE_UREG __attribute__((always_inline)) EE_hal_get_IRQ_nesting_level(void)
{
    return EE_IRQ_nesting_level;
}
# 86 "./0_Src/OS/cpu/tricore/inc/ee_tc_internal.h" 2
# 108 "./0_Src/OS/cpu/tricore/inc/ee_tc_internal.h"
static inline EE_FREG __attribute__((always_inline)) EE_hal_begin_nested_primitive( void )
{
  return EE_hal_suspendIRQ();
}



static inline void __attribute__((always_inline)) EE_hal_end_nested_primitive( EE_FREG flags )
{
  EE_hal_resumeIRQ(flags);
}


static inline EE_TYPEISR2PRIO __attribute__((always_inline)) EE_hal_get_int_prio( void )
{
  return EE_tc_get_int_prio();
}


static inline void __attribute__((always_inline)) EE_hal_set_int_prio( EE_TYPEISR2PRIO prio )
{
  EE_tc_set_int_prio(prio);
}







static inline EE_FREG __attribute__((always_inline)) EE_hal_change_int_prio(
  EE_TYPEISR2PRIO prio, EE_FREG flags )
{
  EE_tc_set_int_prio(prio);
  return (((flags) & 0xFFFFFF00U) | (prio));
}
# 153 "./0_Src/OS/cpu/tricore/inc/ee_tc_internal.h"
static inline EE_FREG __attribute__((always_inline)) EE_hal_raise_int_prio_if_less(
  EE_TYPEISR2PRIO new_prio, EE_FREG flags )
{
  register EE_TYPEISR2PRIO prev_prio = EE_tc_get_int_prio();
  if ( prev_prio < new_prio )
  {
    EE_tc_set_int_prio(new_prio);

    flags = (((flags) & 0xFFFFFF00U) | (new_prio));
  }
  return flags;
}





static inline EE_BIT __attribute__((always_inline)) EE_hal_check_int_prio_if_higher(
    EE_TYPEISR2PRIO new_prio )
{
  register EE_TYPEISR2PRIO actual_prio = EE_tc_get_int_prio();
  return (actual_prio > new_prio)? 1U: 0U;
}
# 190 "./0_Src/OS/cpu/tricore/inc/ee_tc_internal.h"
extern EE_UREG EE_tc_active_tos;





extern struct EE_TC_TOS EE_tc_system_tos[];



extern EE_ADDR EE_tc_tasks_RA[];





extern struct EE_TOS EE_tc_IRQ_tos;
# 217 "./0_Src/OS/cpu/tricore/inc/ee_tc_internal.h"
# 1 "./0_Src/OS/cpu/common/inc/ee_context.h" 1
# 65 "./0_Src/OS/cpu/common/inc/ee_context.h"
extern EE_TID EE_std_endcycle_next_tid;
# 77 "./0_Src/OS/cpu/common/inc/ee_context.h"
void EE_std_change_context(EE_TID tid);
# 119 "./0_Src/OS/cpu/common/inc/ee_context.h"
static inline void EE_hal_ready2stacked(EE_TID tid);





EE_TID EE_std_run_task_code(EE_TID tid);
# 178 "./0_Src/OS/cpu/common/inc/ee_context.h"
static inline int __attribute__((always_inline)) EE_std_need_context_change(EE_TID tid)
{
    EE_UTID utid;
    int need_context_change;

    if ( (((EE_UTID)(tid) & 0x80000000U) != 0U) )
    {




      utid = (((EE_UTID)tid + 1U)) & (~(EE_UTID)0x80000000U);
      need_context_change = (EE_tc_active_tos != EE_std_thread_tos[utid]);
    } else {
      need_context_change = 1;
    }

    return need_context_change;
}

static inline void __attribute__((always_inline)) EE_hal_stkchange(EE_TID tid)
{
    EE_UTID tmp = ((EE_UTID)(tid) | (EE_UTID)0x80000000U);
    EE_std_change_context((EE_TID)tmp);
}
# 212 "./0_Src/OS/cpu/common/inc/ee_context.h"
static inline void EE_hal_ready2stacked(EE_TID tid)
{
    EE_std_change_context(tid);
}


static inline void __attribute__((always_inline)) EE_hal_endcycle_ready(EE_TID tid)
{
    EE_std_endcycle_next_tid = tid;
}


static inline void __attribute__((always_inline)) EE_hal_endcycle_stacked(EE_TID tid)
{
    EE_UTID utid_tmp = (EE_UTID)((EE_UTID)(tid) | (EE_UTID)0x80000000U);
    EE_std_endcycle_next_tid = (EE_TID)utid_tmp;
}
# 218 "./0_Src/OS/cpu/tricore/inc/ee_tc_internal.h" 2
# 228 "./0_Src/OS/cpu/tricore/inc/ee_tc_internal.h"
static inline EE_UTID __attribute__((always_inline)) EE_tc_tid_as_index( EE_TID tid )
{
  return (((EE_UTID)tid + 1U) & (~0x80000000U));
}
# 240 "./0_Src/OS/cpu/tricore/inc/ee_tc_internal.h"
void EE_hal_terminate_savestk( EE_TID tid );



void EE_hal_terminate_task( EE_TID tid );
# 256 "./0_Src/OS/cpu/tricore/inc/ee_tc_internal.h"
 static inline EE_CSA * __attribute__((always_inline)) EE_tc_get_original_csa( void )
{
  register EE_PCXI pcxi = EE_tc_csa_get_pcxi();

  EE_tc_dsync();
# 269 "./0_Src/OS/cpu/tricore/inc/ee_tc_internal.h"
  return EE_tc_csa_make_addr(pcxi);
}





static inline EE_PCXI __attribute__((always_inline)) EE_tc_get_original_pcxi( void )
{
  EE_CSA_LINK res = {0U};
  EE_CSA * csa_ptr = EE_tc_get_original_csa();
  if (csa_ptr != 0) {
    res = csa_ptr->next;
  }
  return res;
}
# 293 "./0_Src/OS/cpu/tricore/inc/ee_tc_internal.h"
static inline EE_ADDR __attribute__((always_inline)) EE_tc_get_prev_stack( void )
{

  EE_ADDR res = (EE_ADDR)0;
  EE_CSA* csa_ptr = EE_tc_csa_make_addr(EE_tc_get_original_pcxi());
  if (csa_ptr != 0) {
    res = csa_ptr->cx.ucx.A10;
  }
  return res;
}





static inline void __attribute__((always_inline)) EE_tc_set_psw_user_stack( void )
{
  EE_tc_set_psw((EE_UINT32)(__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "0xFE04" : "=d" (__res) :: "memory"); __res; })) & (~((EE_UINT32)1U << 9U)));
}






static inline void __attribute__((always_inline))
  EE_tc_set_prev_stack_back( void )
{

  EE_tc_set_SP( EE_tc_get_prev_stack( ) );

  EE_tc_set_psw_user_stack();
}

static inline void __attribute__((always_inline))
  EE_tc_set_interrupted_stack( EE_CONST_ADDR sp )
{

  EE_tc_set_SP( sp );

  EE_tc_set_psw_user_stack();
}
# 115 "./0_Src/OS/ee_internal.h" 2
# 336 "./0_Src/OS/ee_internal.h"
# 1 "./0_Src/OS/kernel/oo/inc/ee_kernel.h" 1
# 121 "./0_Src/OS/kernel/oo/inc/ee_kernel.h"
# 1 "./0_Src/OS/kernel/oo/inc/ee_common.h" 1
# 166 "./0_Src/OS/kernel/oo/inc/ee_common.h"
extern EE_UREG EE_th_status[];







extern EE_TID EE_th_next[];


extern const EE_UREG EE_th_ready_prio[];
extern const EE_UREG EE_th_dispatch_prio[];







extern EE_UREG EE_th_rnact[];



extern const EE_UREG EE_th_rnact_max[];




extern EE_TID EE_th_terminate_nextask[];



extern EE_TID EE_stkfirst;


extern EE_UREG EE_sys_ceiling;
# 232 "./0_Src/OS/kernel/oo/inc/ee_common.h"
typedef EE_UINT16 EE_TYPE_RQ_MASK;

extern EE_TYPE_RQ_MASK EE_rq_bitmask;







extern EE_UREG EE_rq_link[];



extern EE_SREG EE_rq_queues_head[];
extern EE_SREG EE_rq_queues_tail[];





extern EE_SREG EE_rq_pairs_next[];


extern EE_TID EE_rq_pairs_tid[];


extern EE_SREG EE_rq_free;
# 273 "./0_Src/OS/kernel/oo/inc/ee_common.h"
extern EE_UREG EE_th_event_active[];




extern EE_UREG EE_th_event_waitmask[];





extern EE_UREG EE_th_waswaiting[];






extern EE_UREG EE_th_is_extended[];
# 353 "./0_Src/OS/kernel/oo/inc/ee_common.h"
typedef struct {
  EE_UREG maxallowedvalue;
  EE_UREG ticksperbase;
  EE_UREG mincycle;
} EE_oo_counter_ROM_type;


typedef struct {
  EE_UREG value;
  EE_SREG first;
} EE_oo_counter_RAM_type;
# 380 "./0_Src/OS/kernel/oo/inc/ee_common.h"
typedef struct {
  EE_SREG c;

  EE_UINT8 action;

  EE_TID TaskID;

  EE_UREG Mask;

  EE_VOID_CALLBACK f;

  EE_SREG inccount;
} EE_oo_alarm_ROM_type;


typedef struct {
  EE_UREG used;
  EE_UREG cycle;
  EE_UREG delta;
  EE_SREG next;
} EE_oo_alarm_RAM_type;



extern const EE_oo_counter_ROM_type EE_counter_ROM[];



extern EE_oo_counter_RAM_type EE_counter_RAM[];
# 420 "./0_Src/OS/kernel/oo/inc/ee_common.h"
extern const EE_oo_alarm_ROM_type EE_alarm_ROM[];





extern EE_oo_alarm_RAM_type EE_alarm_RAM[];





extern void EE_oo_thread_stub(void);
# 442 "./0_Src/OS/kernel/oo/inc/ee_common.h"
typedef unsigned char StatusType;
# 642 "./0_Src/OS/kernel/oo/inc/ee_common.h"
struct EE_oo_autostart_task_type {
  EE_UREG n;
  const EE_TID *task;
};



extern const struct EE_oo_autostart_task_type EE_oo_autostart_task_data[];
# 699 "./0_Src/OS/kernel/oo/inc/ee_common.h"
typedef EE_TID TaskType;


typedef EE_TID *TaskRefType;


typedef EE_UREG TaskStateType;


typedef EE_UREG *TaskStateRefType;
# 748 "./0_Src/OS/kernel/oo/inc/ee_common.h"
typedef EE_UREG EventMaskType;


typedef EE_UREG *EventMaskRefType;
# 800 "./0_Src/OS/kernel/oo/inc/ee_common.h"
typedef EE_UREG TickType;


typedef EE_UREG *TickRefType;


typedef struct {
  TickType maxallowedvalue;

  TickType ticksperbase;


  TickType mincycle;



} AlarmBaseType;



typedef AlarmBaseType *AlarmBaseRefType;


typedef EE_SREG AlarmType;


typedef EE_SREG CounterType;
# 840 "./0_Src/OS/kernel/oo/inc/ee_common.h"
typedef EE_UREG AppModeType;
# 852 "./0_Src/OS/kernel/oo/inc/ee_common.h"
typedef EE_UINT8 OSServiceIdType;
# 122 "./0_Src/OS/kernel/oo/inc/ee_kernel.h" 2
# 149 "./0_Src/OS/kernel/oo/inc/ee_kernel.h"
StatusType EE_oo_ActivateTask(TaskType TaskID);





StatusType EE_oo_TerminateTask(void);







StatusType EE_oo_ChainTask(TaskType TaskID);




StatusType EE_oo_Schedule(void);





StatusType EE_oo_ForceSchedule(void);







StatusType EE_oo_GetTaskID(TaskRefType TaskID);




StatusType EE_oo_GetTaskState(TaskType TaskID, TaskStateRefType State);
# 341 "./0_Src/OS/kernel/oo/inc/ee_kernel.h"
StatusType EE_oo_SetEvent(TaskType TaskID, EventMaskType Mask);
# 352 "./0_Src/OS/kernel/oo/inc/ee_kernel.h"
StatusType EE_oo_ClearEvent(EventMaskType Mask);
# 363 "./0_Src/OS/kernel/oo/inc/ee_kernel.h"
StatusType EE_oo_GetEvent(TaskType TaskID, EventMaskRefType Event);
# 374 "./0_Src/OS/kernel/oo/inc/ee_kernel.h"
StatusType EE_oo_WaitEvent(EventMaskType Mask);
# 486 "./0_Src/OS/kernel/oo/inc/ee_kernel.h"
StatusType EE_oo_IncrementCounter(CounterType CounterID);







StatusType EE_oo_GetCounterValue(CounterType CounterID, TickRefType Value);







StatusType EE_oo_GetElapsedValue(CounterType CounterID, TickRefType Value,
    TickRefType ElapsedValue);
# 525 "./0_Src/OS/kernel/oo/inc/ee_kernel.h"
StatusType EE_oo_GetAlarmBase(AlarmType AlarmID, AlarmBaseRefType Info);




StatusType EE_oo_GetAlarm(AlarmType AlarmID, TickRefType Tick);




StatusType EE_oo_SetRelAlarm(AlarmType AlarmID, TickType increment, TickType cycle);




StatusType EE_oo_SetAbsAlarm(AlarmType AlarmID, TickType start, TickType cycle);




StatusType EE_oo_CancelAlarm(AlarmType AlarmID);
# 596 "./0_Src/OS/kernel/oo/inc/ee_kernel.h"
StatusType EE_oo_StartOS(AppModeType Mode);




void EE_oo_ShutdownOS(StatusType Error);
# 793 "./0_Src/OS/kernel/oo/inc/ee_kernel.h"
# 1 "./0_Src/OS/kernel/oo/inc/ee_inline.h" 1
# 56 "./0_Src/OS/kernel/oo/inc/ee_inline.h"
# 1 "./0_Src/OS/kernel/oo/inc/ee_intfunc.h" 1
# 51 "./0_Src/OS/kernel/oo/inc/ee_intfunc.h"
extern EE_UREG EE_oo_IRQ_disable_count;






extern EE_FREG EE_oo_IRQ_suspend_status;


extern EE_UREG EE_ApplicationMode;





static inline EE_TID __attribute__((always_inline)) EE_stk_queryfirst(void)
{
    return EE_stkfirst;
}
# 57 "./0_Src/OS/kernel/oo/inc/ee_inline.h" 2
# 74 "./0_Src/OS/kernel/oo/inc/ee_inline.h"
static inline void __attribute__((always_inline)) EE_oo_EnableAllInterrupts(void)
{
  register volatile EE_FREG temp_suspend;
  ((void)0);

  temp_suspend = EE_hal_suspendIRQ();




  if(EE_oo_IRQ_disable_count > 0U) {
    --EE_oo_IRQ_disable_count;
    if(EE_oo_IRQ_disable_count == 0U) {
      EE_hal_enableIRQ();
    }
  } else {

    EE_hal_resumeIRQ(temp_suspend);
  }
  ((void)0);
}





static inline void __attribute__((always_inline)) EE_oo_DisableAllInterrupts(void)
{
  ((void)0);

  EE_hal_disableIRQ();
  ++EE_oo_IRQ_disable_count;
  ((void)0);
}





static inline void __attribute__((always_inline)) EE_oo_ResumeAllInterrupts(void)
{
  register volatile EE_FREG temp_suspend;
  ((void)0);

  temp_suspend = EE_hal_suspendIRQ();




  if (EE_oo_IRQ_disable_count > 0U) {
    --EE_oo_IRQ_disable_count;
    if(EE_oo_IRQ_disable_count == 0U) {
      EE_hal_resumeIRQ(EE_oo_IRQ_suspend_status);
    }
  } else {

    EE_hal_resumeIRQ(temp_suspend);
  }

  ((void)0);
}





static inline void __attribute__((always_inline)) EE_oo_SuspendAllInterrupts(void)
{
  register volatile EE_FREG temp_suspend;
  ((void)0);

  temp_suspend = EE_hal_suspendIRQ();
  if(EE_oo_IRQ_disable_count == 0U) {
    EE_oo_IRQ_suspend_status = temp_suspend;
  }
  EE_oo_IRQ_disable_count++;

  ((void)0);
}





static inline void __attribute__((always_inline)) EE_oo_ResumeOSInterrupts(void)
{
  register volatile EE_FREG temp_suspend;
  ((void)0);

  temp_suspend = EE_hal_suspendIRQ();




  if (EE_oo_IRQ_disable_count > 0U) {
    --EE_oo_IRQ_disable_count;
    if(EE_oo_IRQ_disable_count == 0U) {
      EE_hal_resumeIRQ(EE_oo_IRQ_suspend_status);
    }
  } else {

    EE_hal_resumeIRQ(temp_suspend);
  }

  ((void)0);
}





static inline void __attribute__((always_inline)) EE_oo_SuspendOSInterrupts(void)
{
  register volatile EE_FREG temp_suspend;
  ((void)0);

  temp_suspend = EE_hal_suspendIRQ();
  if(EE_oo_IRQ_disable_count == 0U) {
    EE_oo_IRQ_suspend_status = temp_suspend;
  }
  EE_oo_IRQ_disable_count++;

  ((void)0);
}
# 304 "./0_Src/OS/kernel/oo/inc/ee_inline.h"
static inline AppModeType __attribute__((always_inline)) EE_oo_GetActiveApplicationMode(void)
{




  ((void)0);
  ((void)0);

  return EE_ApplicationMode;
}
# 794 "./0_Src/OS/kernel/oo/inc/ee_kernel.h" 2
# 337 "./0_Src/OS/ee_internal.h" 2
# 1 "./0_Src/OS/kernel/oo/inc/ee_internal.h" 1
# 51 "./0_Src/OS/kernel/oo/inc/ee_internal.h"
# 1 "./0_Src/OS/kernel/oo/inc/ee_irq.h" 1
# 62 "./0_Src/OS/kernel/oo/inc/ee_irq.h"
void EE_IRQ_end_instance(void);






void EE_IRQ_end_post_stub(void);
# 52 "./0_Src/OS/kernel/oo/inc/ee_internal.h" 2
# 72 "./0_Src/OS/kernel/oo/inc/ee_internal.h"
StatusType EE_oo_IncrementCounterHardware(CounterType CounterID);
void EE_oo_IncrementCounterImplementation(CounterType CounterID);





void EE_oo_alarm_insert(AlarmType AlarmID, TickType increment);
# 142 "./0_Src/OS/kernel/oo/inc/ee_internal.h"
extern EE_UREG EE_oo_no_preemption;





static inline EE_SREG __attribute__((always_inline)) EE_oo_check_disableint_error(void)
{
    register EE_SREG error_check;
# 162 "./0_Src/OS/kernel/oo/inc/ee_internal.h"
    error_check = (EE_oo_IRQ_disable_count != 0U);

    return error_check;
}



extern const EE_INT8 EE_rq_lookup[];
# 182 "./0_Src/OS/kernel/oo/inc/ee_internal.h"
EE_TID EE_rq_queryfirst(void);







static inline void __attribute__((always_inline)) EE_stk_getfirst(void)
{
    EE_stkfirst = EE_th_next[EE_stkfirst];
}




static inline void __attribute__((always_inline)) EE_stk_insertfirst(EE_TID t)
{
    EE_th_next[t] = EE_stkfirst;
    EE_stkfirst = t;
}




void EE_rq_insert(EE_TID t);




EE_TID EE_rq2stk_exchange(void);
# 243 "./0_Src/OS/kernel/oo/inc/ee_internal.h"
void EE_thread_not_terminated(void);






void EE_thread_end_instance(void);
# 275 "./0_Src/OS/kernel/oo/inc/ee_internal.h"
static inline void __attribute__((always_inline)) EE_oo_reset_th_event_active(TaskType TaskID)
{
    EE_th_event_active[TaskID] = 0U;
}




static inline void __attribute__((always_inline)) EE_oo_run_next_task(void)
{
    register TaskType tmp;

    tmp = EE_rq2stk_exchange();
    if (EE_th_waswaiting[tmp]) {

      EE_th_waswaiting[tmp] = 0U;
      EE_hal_stkchange(tmp);
    } else {

      EE_hal_ready2stacked(tmp);
    }
}
# 316 "./0_Src/OS/kernel/oo/inc/ee_internal.h"
static inline void __attribute__((always_inline)) EE_oo_set_th_status_ready(TaskType TaskID)
{
    if (EE_th_status[TaskID] == ((EE_UREG)3U)) {
        EE_th_status[TaskID] = ((EE_UREG)2U);
        EE_oo_reset_th_event_active(TaskID);
    }
}
# 343 "./0_Src/OS/kernel/oo/inc/ee_internal.h"
static inline void __attribute__((always_inline)) EE_oo_preemption_point(void)
{
  register EE_TID current, rq;


  current = EE_stk_queryfirst();
  rq = EE_rq_queryfirst();

  if (rq != ((EE_TID)-1)) {


    if (EE_sys_ceiling < EE_th_ready_prio[rq]) {
      if (current != ((EE_TID)-1)) {
        ((void)0);

        EE_th_status[current] = ((EE_UREG)2U);



      }


      EE_sys_ceiling |= EE_th_dispatch_prio[rq];

      EE_th_status[rq] = ((EE_UREG)0U);

      ((void)0);




      EE_oo_run_next_task();




      ((void)0);
    }
  }
}






static inline void __attribute__((always_inline)) EE_oo_prepare_to_block(void) {
  register EE_TID current;

  current = EE_stk_queryfirst();


  EE_th_status[current] = ((EE_UREG)1U);


  ((void)0);


  EE_stk_getfirst();


  EE_sys_ceiling &= ~EE_th_dispatch_prio[current];



  ((void)0);



  EE_th_waswaiting[current] = 1U;
}




static inline void __attribute__((always_inline)) EE_oo_reschedule_on_block(void)
{
  register EE_TID next;

  next = EE_rq_queryfirst();
  if ((next == ((EE_TID)-1)) || (EE_sys_ceiling >= EE_th_ready_prio[next])) {


    next = EE_stk_queryfirst();
    if (next != ((EE_TID)-1)) {
      EE_th_status[next] = ((EE_UREG)0U);
    }


    EE_hal_stkchange(next);
  } else {

    EE_th_status[next] = ((EE_UREG)0U);
    EE_sys_ceiling |= EE_th_dispatch_prio[next];

    ((void)0);




    EE_oo_run_next_task();
  }




  ((void)0);
}
# 338 "./0_Src/OS/ee_internal.h" 2
# 47 "0_Src/OS/kernel/oo/src/ee_rq_exchg.c" 2
# 68 "0_Src/OS/kernel/oo/src/ee_rq_exchg.c"
EE_TID EE_rq2stk_exchange(void)
{
  EE_INT8 x;
  EE_TID temp;
  EE_SREG y;



  x = EE_rq_lookup[(EE_rq_bitmask & 0xFF00U) >> 8];
  if (x == (EE_INT8)-1) {
    x = EE_rq_lookup[EE_rq_bitmask];
  } else {
    x += (EE_INT8)8;
  }







  temp = EE_rq_pairs_tid[EE_rq_queues_head[x]];


  y = EE_rq_queues_head[x];
  EE_rq_queues_head[x] = EE_rq_pairs_next[EE_rq_queues_head[x]];
  EE_rq_pairs_next[y] = EE_rq_free;
  EE_rq_free = y;

  if (EE_rq_queues_head[x] == (EE_SREG)-1) {
    EE_rq_queues_tail[x] = -1;

    EE_rq_bitmask &= (EE_TYPE_RQ_MASK)~((EE_TYPE_RQ_MASK)((EE_TYPE_RQ_MASK)1U << x));
  }


  EE_th_next[temp] = EE_stkfirst;
  EE_stkfirst = temp;

  return temp;
}
