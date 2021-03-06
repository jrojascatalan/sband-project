/*
Cubesat Space Protocol - A small network-layer protocol designed for Cubesats
Copyright (C) 2012 GomSpace ApS (http://www.gomspace.com)
Copyright (C) 2012 AAUSAT3 Project (http://aausat3.space.aau.dk)

This library is free software; you can redistribute it and/or
modify it under the terms of the GNU Lesser General Public
License as published by the Free Software Foundation; either
version 2.1 of the License, or (at your option) any later version.

This library is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
Lesser General Public License for more details.

You should have received a copy of the GNU Lesser General Public
License along with this library; if not, write to the Free Software
Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301  USA
*/

#ifndef _CSP_XTEA_H_
#define _CSP_XTEA_H_

#include <stdint.h>

#ifdef __cplusplus
extern "C" {
#endif

#define CSP_XTEA_IV_LENGTH	8

/**
 * XTEA encrypt byte array
 * @param plain Pointer to plain text
 * @param len Length of plain text
 * @param iv Initialization vector
 */
int csp_xtea_encrypt(uint8_t * plain, const uint32_t len, uint32_t iv[2]);

/**
 * Decrypt XTEA encrypted byte array
 * @param cipher Pointer to cipher text
 * @param len Length of plain text
 * @param iv Initialization vector
 */
int csp_xtea_decrypt(uint8_t * cipher, const uint32_t len, uint32_t iv[2]);

#ifdef __cplusplus
} /* extern "C" */
#endif

#endif // _CSP_XTEA_H_
