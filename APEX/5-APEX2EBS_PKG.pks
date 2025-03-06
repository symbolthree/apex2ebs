/******************************************************************************
 *
 * A P E X 2 E B S
 * Copyright (C) 2025 Christopher Ho
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

CREATE OR REPLACE PACKAGE APEX2EBS.APEX2EBS_PKG IS

  PROCEDURE DEBUG(p_msg IN VARCHAR2);

  FUNCTION LOGIN_AUTHENTICATION (p_username VARCHAR2,
                                 p_password VARCHAR2)
    RETURN BOOLEAN;

  PROCEDURE SETUP(p_appID IN NUMBER,
                  p_name IN VARCHAR2,
                  p_keepMapping IN VARCHAR2);

  PROCEDURE CLEANUP(p_appID IN NUMBER);

  PROCEDURE EBS_CONNECTOR(p_ebsSessionID     IN NUMBER,
                          p_ebsCookie        IN VARCHAR2,
                          p_apexSessionID    IN NUMBER,
                          p_appID            IN VARCHAR2,
                          p_LoginOrRedirect OUT VARCHAR2,
                          p_errMsg          OUT VARCHAR2);

END;
/

