#ifndef _CODECR16_H
#define _CODECR16_H
/* codecr16.h */
/*****************************************************************************/
/* SPDX-License-Identifier: GPL-2.0-only OR GPL-3.0-only                     */
/*                                                                           */
/* AS-Portierung                                                             */
/*                                                                           */
/* Code Generator National Semiconductor CR16A/B                             */
/*                                                                           */
/*****************************************************************************/

typedef enum
{
  e_cr16_gen_a = 0,
  e_cr16_gen_b = 1,
  e_cr16_gen_c = 2
} cr16_gen_t;

extern void codecr16_init(void);

extern void codecr16_iter_conditions(void (*callback)(const char *, Word));

extern Boolean decode_cr16_vector(const tStrComp *p_arg, Word *p_dest, cr16_gen_t gen);

#endif /* _CODECR16_H */
