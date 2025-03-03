/****************************************************************************
 * boards/arm/stm32h7/linum-stm32h753bi/scripts/memory.ld
 *
 * SPDX-License-Identifier: Apache-2.0
 *
 * Licensed to the Apache Software Foundation (ASF) under one or more
 * contributor license agreements.  See the NOTICE file distributed with
 * this work for additional information regarding copyright ownership.  The
 * ASF licenses this file to you under the Apache License, Version 2.0 (the
 * "License"); you may not use this file except in compliance with the
 * License.  You may obtain a copy of the License at
 *
 *   http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
 * WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.  See the
 * License for the specific language governing permissions and limitations
 * under the License.
 *
 ****************************************************************************/

/* TODO: Add description for memory organisation */

MEMORY
{
	ITCM_RAM  (rwx) : ORIGIN = 0x00000000, LENGTH =   64K
	FLASH      (rx) : ORIGIN = 0x08000000, LENGTH = 2048K

	DTCM1_RAM (rwx) : ORIGIN = 0x20000000, LENGTH =   64K
	DTCM2_RAM (rwx) : ORIGIN = 0x20010000, LENGTH =   64K
	AXI_SRAM  (rwx) : ORIGIN = 0x24000000, LENGTH =  512K /* D1 domain AXI bus */
	SRAM1     (rwx) : ORIGIN = 0x30000000, LENGTH =  128K /* D2 domain AHB bus */
	SRAM2     (rwx) : ORIGIN = 0x30020000, LENGTH =  128K /* D2 domain AHB bus */
	SRAM3     (rwx) : ORIGIN = 0x30040000, LENGTH =   32K /* D2 domain AHB bus */
	SRAM4     (rwx) : ORIGIN = 0x38000000, LENGTH =   64K /* D3 domain */
	BKPRAM    (rwx) : ORIGIN = 0x38800000, LENGTH =    4K
}