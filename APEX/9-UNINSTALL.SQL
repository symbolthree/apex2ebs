/******************************************************************************
 *
 * A P E X 2 E B S
 * Copyright (C) 2026 Christopher Ho / SymbolThree
 * All Rights Reserved, http://www.symbolthree.com
 *
 * This program is free software; you can redistribute it and/or
 * modify it under the terms of the GNU General Public License
 * as published by the Free Software Foundation; either version 2
 * of the License, or (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.
 *
 * E-mail: christopher.ho@symbolthree.com
 *
 ******************************************************************************/

DROP PACKAGE APEX2EBS_PKG;

DROP FUNCTION A2E_LANG;
DROP FUNCTION A2E_PAGE_AUTHORIZATION;

DROP VIEW A2E_HOME_NAVIGATOR_V;
DROP VIEW A2E_SESSIONS_V;

DROP SEQUENCE A2E_RESP_PAGE_SEQ;
DROP SEQUENCE A2E_DEBUG_SEQ;
DROP SEQUENCE A2E_LANG_MAPPING_SEQ;

DROP TABLE A2E_SESSIONS;
DROP TABLE A2E_LANGUAGES;
DROP TABLE A2E_INSTANCE_INFO;
DROP TABLE A2E_RESP_PAGE_MAPPING;
DROP TABLE A2E_PAGE_EXTENDED;
DROP TABLE A2E_DEBUG;
DROP TABLE A2E_LANG_MAPPING;

DROP DATABASE LINK APEX_TO_EBS;