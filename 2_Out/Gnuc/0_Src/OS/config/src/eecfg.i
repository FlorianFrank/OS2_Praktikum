# 1 "0_Src/OS/config/src/eecfg.c"
# 1 "C:\\betriebssys\\BaseFramework_TC26xB//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "0_Src/OS/config/src/eecfg.c"
# 1 "./0_Src/OS/ee.h" 1
# 55 "./0_Src/OS/ee.h"
# 1 "./0_Src/OS/config/inc/eecfg.h" 1
# 56 "./0_Src/OS/ee.h" 2

# 1 "./0_Src/OS/ee_rtdruid_versions.h" 1
# 58 "./0_Src/OS/ee.h" 2
# 133 "./0_Src/OS/ee.h"
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
# 134 "./0_Src/OS/ee.h" 2
# 401 "./0_Src/OS/ee.h"
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
# 402 "./0_Src/OS/ee.h" 2
# 425 "./0_Src/OS/ee.h"
# 1 "./0_Src/OS/ee_api.h" 1
# 90 "./0_Src/OS/ee_api.h"
# 1 "./0_Src/OS/kernel/oo/inc/ee_api.h" 1
# 91 "./0_Src/OS/ee_api.h" 2
# 426 "./0_Src/OS/ee.h" 2







# 1 "./0_Src/OS/ee_irq.h" 1
# 114 "./0_Src/OS/ee_irq.h"
# 1 "./0_Src/OS/kernel/oo/inc/ee_irq.h" 1
# 62 "./0_Src/OS/kernel/oo/inc/ee_irq.h"
void EE_IRQ_end_instance(void);






void EE_IRQ_end_post_stub(void);
# 115 "./0_Src/OS/ee_irq.h" 2
# 146 "./0_Src/OS/ee_irq.h"
# 1 "./0_Src/OS/cpu/tricore/inc/ee_tc_irq.h" 1
# 50 "./0_Src/OS/cpu/tricore/inc/ee_tc_irq.h"
# 1 "./0_Src/OS/cpu/tricore/inc/ee_tc_cpu.h" 1
# 51 "./0_Src/OS/cpu/tricore/inc/ee_tc_irq.h" 2
# 147 "./0_Src/OS/ee_irq.h" 2
# 1 "./0_Src/OS/cpu/tricore/inc/ee_tc_trap.h" 1
# 148 "./0_Src/OS/ee_irq.h" 2
# 434 "./0_Src/OS/ee.h" 2
# 2 "0_Src/OS/config/src/eecfg.c" 2
# 16 "0_Src/OS/config/src/eecfg.c"
    EE_STACK_T EE_tc_stack_1[(((((EE_UINT32)256) + 8U) - 1U) / sizeof(EE_STACK_T))] ;
    EE_STACK_T EE_tc_stack_2[(((((EE_UINT32)256) + 8U) - 1U) / sizeof(EE_STACK_T))] ;
    EE_STACK_T EE_tc_stack_3[(((((EE_UINT32)256) + 8U) - 1U) / sizeof(EE_STACK_T))] ;
    EE_STACK_T EE_tc_stack_4[(((((EE_UINT32)256) + 8U) - 1U) / sizeof(EE_STACK_T))] ;
    EE_STACK_T EE_tc_stack_5[(((((EE_UINT32)256) + 8U) - 1U) / sizeof(EE_STACK_T))] ;

    const EE_UREG EE_std_thread_tos[14 +1] = {
        0U,
        1U,
        2U,
        3U,
        4U,
        0U,
        0U,
        0U,
        0U,
        0U,
        0U,
        0U,
        0U,
        0U,
        0U
    };

    struct EE_TC_TOS EE_tc_system_tos[5] = {
        {0, 0U},
        {((EE_ADDR)&EE_tc_stack_1[((sizeof(EE_tc_stack_1)/sizeof(EE_tc_stack_1[0])) - 1U) & 0xFFFFFFF8U]), 0U},
        {((EE_ADDR)&EE_tc_stack_2[((sizeof(EE_tc_stack_2)/sizeof(EE_tc_stack_2[0])) - 1U) & 0xFFFFFFF8U]), 0U},
        {((EE_ADDR)&EE_tc_stack_3[((sizeof(EE_tc_stack_3)/sizeof(EE_tc_stack_3[0])) - 1U) & 0xFFFFFFF8U]), 0U},
        {((EE_ADDR)&EE_tc_stack_4[((sizeof(EE_tc_stack_4)/sizeof(EE_tc_stack_4[0])) - 1U) & 0xFFFFFFF8U]), 0U}
    };

    EE_UREG EE_tc_active_tos = 0U;

    EE_ADDR EE_tc_tasks_RA[14 +1];


    struct EE_TOS EE_tc_IRQ_tos = {
        ((EE_ADDR)&EE_tc_stack_5[((sizeof(EE_tc_stack_5)/sizeof(EE_tc_stack_5[0])) - 1U) & 0xFFFFFFF8U])
    };
# 65 "0_Src/OS/config/src/eecfg.c"
    void FuncIFX_OSTASK_EVENT1(void);
    void FuncIFX_OSTASK_EVENT2(void);
    void FuncIFX_OSTASK_EVENT3(void);
    void FuncIFX_OSTASK_BLINK(void);
    void FuncIFX_OSTASK_1MS(void);
    void FuncIFX_OSTASK_5MS(void);
    void FuncIFX_OSTASK_10MS(void);
    void FuncIFX_OSTASK_20MS(void);
    void FuncIFX_OSTASK_50MS(void);
    void FuncIFX_OSTASK_100MS(void);
    void FuncIFX_OSTASK_BEEPER(void);
    void FuncIFX_OSTASK_1000MS(void);
    void FuncIFX_OSTASK_BACKGROUND(void);
    void FuncIFX_OSTASK_INIT(void);

    const EE_THREAD_PTR EE_hal_thread_body[14] = {
        &EE_oo_thread_stub,
        &EE_oo_thread_stub,
        &EE_oo_thread_stub,
        &EE_oo_thread_stub,
        &EE_oo_thread_stub,
        &EE_oo_thread_stub,
        &EE_oo_thread_stub,
        &EE_oo_thread_stub,
        &EE_oo_thread_stub,
        &EE_oo_thread_stub,
        &EE_oo_thread_stub,
        &EE_oo_thread_stub,
        &EE_oo_thread_stub,
        &EE_oo_thread_stub

    };

    EE_UINT32 EE_terminate_data[14];


    const EE_THREAD_PTR EE_terminate_real_th_body[14] = {
        &FuncIFX_OSTASK_EVENT1,
        &FuncIFX_OSTASK_EVENT2,
        &FuncIFX_OSTASK_EVENT3,
        &FuncIFX_OSTASK_BLINK,
        &FuncIFX_OSTASK_1MS,
        &FuncIFX_OSTASK_5MS,
        &FuncIFX_OSTASK_10MS,
        &FuncIFX_OSTASK_20MS,
        &FuncIFX_OSTASK_50MS,
        &FuncIFX_OSTASK_100MS,
        &FuncIFX_OSTASK_BEEPER,
        &FuncIFX_OSTASK_1000MS,
        &FuncIFX_OSTASK_BACKGROUND,
        &FuncIFX_OSTASK_INIT
    };

    const EE_UREG EE_th_ready_prio[14] = {
        0x40U,
        0x40U,
        0x40U,
        0x40U,
        0x40U,
        0x20U,
        0x10U,
        0x8U,
        0x4U,
        0x2U,
        0x2U,
        0x1U,
        0x1U,
        0x2U
    };

    const EE_UREG EE_th_dispatch_prio[14] = {
        0x40U,
        0x40U,
        0x40U,
        0x40U,
        0x40U,
        0x20U,
        0x10U,
        0x8U,
        0x4U,
        0x2U,
        0x2U,
        0x1U,
        0x1U,
        0x2U
    };


    EE_UREG EE_th_status[14] = {
        ((EE_UREG)3U),
        ((EE_UREG)3U),
        ((EE_UREG)3U),
        ((EE_UREG)3U),
        ((EE_UREG)3U),
        ((EE_UREG)3U),
        ((EE_UREG)3U),
        ((EE_UREG)3U),
        ((EE_UREG)3U),
        ((EE_UREG)3U),
        ((EE_UREG)3U),
        ((EE_UREG)3U),
        ((EE_UREG)3U),
        ((EE_UREG)3U)
    };


    EE_TID EE_th_next[14] = {
        ((EE_TID)-1),
        ((EE_TID)-1),
        ((EE_TID)-1),
        ((EE_TID)-1),
        ((EE_TID)-1),
        ((EE_TID)-1),
        ((EE_TID)-1),
        ((EE_TID)-1),
        ((EE_TID)-1),
        ((EE_TID)-1),
        ((EE_TID)-1),
        ((EE_TID)-1),
        ((EE_TID)-1),
        ((EE_TID)-1)
    };


    EE_TID EE_stkfirst = ((EE_TID)-1);


    EE_UREG EE_sys_ceiling= 0x0000U;


    EE_SREG EE_rq_queues_head[16] =
        { -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1};
    EE_SREG EE_rq_queues_tail[16] =
        { -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1};

    EE_TYPE_RQ_MASK EE_rq_bitmask = 0U;


    EE_UREG EE_th_rnact[14] = {
        1U,
        1U,
        1U,
        1U,
        1U,
        1U,
        1U,
        1U,
        1U,
        1U,
        1U,
        1U,
        1U,
        1U
    };

    const EE_UREG EE_th_rnact_max[14] = {
        1U,
        1U,
        1U,
        1U,
        1U,
        1U,
        1U,
        1U,
        1U,
        1U,
        1U,
        1U,
        1U,
        1U
    };

    EE_UREG EE_rq_link[14] =
        { 6U, 6U, 6U, 6U, 6U, 5U, 4U, 3U, 2U, 1U, 1U, 0U, 0U, 1U};


    EE_SREG EE_rq_pairs_next[] =
        { 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, -1};


    EE_TID EE_rq_pairs_tid[14];


    EE_SREG EE_rq_free = 0;



        EE_TID EE_th_terminate_nextask[14] = {
            ((EE_TID)-1),
            ((EE_TID)-1),
            ((EE_TID)-1),
            ((EE_TID)-1),
            ((EE_TID)-1),
            ((EE_TID)-1),
            ((EE_TID)-1),
            ((EE_TID)-1),
            ((EE_TID)-1),
            ((EE_TID)-1),
            ((EE_TID)-1),
            ((EE_TID)-1),
            ((EE_TID)-1),
            ((EE_TID)-1)
        };
# 277 "0_Src/OS/config/src/eecfg.c"
    EE_UREG EE_th_event_active[14] =
        { 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U};

    EE_UREG EE_th_event_waitmask[14] =
        { 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U};

    EE_UREG EE_th_waswaiting[14] =
        { 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U};

    EE_UREG EE_th_is_extended[14] =
        { 1U, 1U, 1U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U};
# 296 "0_Src/OS/config/src/eecfg.c"
    const EE_oo_counter_ROM_type EE_counter_ROM[] = {
        {10000U, 1U, 5U}
    };

    EE_oo_counter_RAM_type EE_counter_RAM[1] = {
        {0U, -1}
    };







    const EE_oo_alarm_ROM_type EE_alarm_ROM[] = {
        {0, 0U , 4, 0U, (EE_VOID_CALLBACK)0, -1 },
        {0, 0U , 5, 0U, (EE_VOID_CALLBACK)0, -1 },
        {0, 0U , 6, 0U, (EE_VOID_CALLBACK)0, -1 },
        {0, 0U , 7, 0U, (EE_VOID_CALLBACK)0, -1 },
        {0, 0U , 8, 0U, (EE_VOID_CALLBACK)0, -1 },
        {0, 0U , 9, 0U, (EE_VOID_CALLBACK)0, -1 },
        {0, 0U , 9, 0U, (EE_VOID_CALLBACK)0, -1 },
        {0, 0U , 10, 0U, (EE_VOID_CALLBACK)0, -1 },
        {0, 0U , 3, 0U, (EE_VOID_CALLBACK)0, -1 }
    };

    EE_oo_alarm_RAM_type EE_alarm_RAM[9];
# 331 "0_Src/OS/config/src/eecfg.c"
    EE_UREG EE_ApplicationMode;







    static const EE_TID EE_oo_autostart_task_mode_OSDEFAULTAPPMODE[1] =
        { 3 };
    static const EE_TID EE_oo_autostart_task_mode_TRICORE_CPU[2] =
        { 3, 13 };

    const struct EE_oo_autostart_task_type EE_oo_autostart_task_data[2U] = {
        { 1U, EE_oo_autostart_task_mode_OSDEFAULTAPPMODE},
        { 2U, EE_oo_autostart_task_mode_TRICORE_CPU}
    };
