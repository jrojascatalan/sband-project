/* 
 * File:   stdint_2.h
 * Author: root
 *
 * Created on 13 de mayo de 2021, 15:22
 */

#ifndef STDINT_2_H
#define	STDINT_2_H

#ifdef	__cplusplus
extern "C" {
#endif


#if defined(__PTRDIFF_TYPE__)
    typedef signed __PTRDIFF_TYPE__ intptr_t;
    typedef unsigned __PTRDIFF_TYPE__ uintptr_t;
#else
/*
 * Fallback to hardcoded values, 
 * should be valid on cpu's with 32bit int/32bit void*
 */
typedef signed long intptr_t;
typedef unsigned long uintptr_t;
#endif

#ifdef	__cplusplus
}
#endif

#endif	/* STDINT_2_H */

