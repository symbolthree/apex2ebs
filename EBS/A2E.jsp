<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<!--
/******************************************************************************
 *
 * A P E X 2 E B S
 * Copyright (C) 2026 christopher.ho@symbolthree.com
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
******************************************************************************/

/*
* EBS version 11i / R12.1 / R12.2
*
* (1) Put this file in $OA_HTML
*
* (2) Recompile this JSP by
*     Windows:    perl -x %FND_TOP%\patch\115\bin\ojspCompile.pl --compile --flush -s "apex2ebs.jsp"
*     Linux/Unix: perl $FND_TOP/patch/115/bin/jspCompile.pl --compile --flush -s 'apex2ebs.jsp'
*
* (3) Bounce the Apache (11i) / OPMN (R12.1) / Weblogic (R12.2)
*
* (4) Make sure the profile option "FND: APEX URL" is created and value has set
*
* Function 
*  Type     : SSWA jsp function (JSP)
*  HTML Call: A2E.jsp
*  Parameter: app=[app ID or name]&page=[pageID or page name]&debug=Y&window=NEW
*/
-->

<%@ page import="oracle.apps.fnd.common.WebAppsContext" %>
<%@ page import="oracle.apps.fnd.common.WebRequestUtil" %>
<%@ page import="oracle.apps.fnd.common.AppsEnvironmentStore" %>
<%@ page import="oracle.jdbc.*" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<%@ page import="java.io.*" %>
<%@ page import="javax.servlet.*" %>
<%@ page import="javax.servlet.http.*" %>
<%@ page import="java.net.*" %>
<%!
public String constructURL(String _apexURL, Map _params) {
  String a2eAppAlias      = "APEX2EBS";
  String a2eConnectorPage = "CONNECTOR";
  String finalURL         = "";
  String keys             = "";
  String vals             = "";

  if (_params != null && _params.size() > 0) {
    Iterator itr = _params.entrySet().iterator();
    while (itr.hasNext()) {
      Map.Entry entry = (Map.Entry)itr.next();
      keys = keys + String.valueOf(entry.getKey()) + ",";
      vals = vals + String.valueOf(entry.getValue()) + ",";
    }

    if (_apexURL.endsWith("/")) {
      _apexURL = _apexURL.substring(0, _apexURL.length()-1);
    }

    finalURL = _apexURL +
               "/f?p=" + a2eAppAlias + ":" + a2eConnectorPage + ":::::" +
               keys.substring(0, keys.length()-1) + ":" +
               vals.substring(0, vals.length()-1);
  }
  return finalURL;
}
%>
<html>
<%
    response.setContentType("text/html; charset=UTF-8");
    response.setHeader("Cache-Control","no-cache");
    response.setHeader("Pragma","no-cache");
    response.setDateHeader ("Expires", 0);
%>
<head>
  <title>APEX2EBS Connector Page</title>
  <script type="text/javascript">
    function openWin(url) {
	   	 var load = window.open(url, "_blank").foucs();
		 history.go(-1);
	}
  </script>
</head>
<body>
<%
    WebAppsContext wctx = WebRequestUtil.validateContext(request, response);

    try {
      boolean debug         = false;
	  boolean newWindow     = false;
	  
      if (request.getParameter("debug") != null &&
          request.getParameter("debug").toUpperCase().equals("Y")) {
          debug = true;
      }

      if (request.getParameter("window") != null &&
          request.getParameter("window").toUpperCase().equals("NEW")) {
          newWindow = true;
      }
	  
	  String apexURL        = wctx.getProfileStore().getProfile("FND_APEX_URL");

      /* ebsURL and cookie contains ":" which is conflict with APEX URL syntax. Replace it with "^" */
      String ebsURL         = wctx.getProfileStore().getProfile("APPS_JSP_AGENT");
      ebsURL                = ebsURL.replace(":","^");
      String cookieValue    = wctx.getSessionCookieValue();
      cookieValue           = cookieValue.replace(":", "^");

      String apexTargetApp  = request.getParameter("app");
      String apexTargetPage = request.getParameter("page");
      String sessionID      = wctx.getSessionId();

      AppsEnvironmentStore m_env = (AppsEnvironmentStore) wctx.getEnvStore();
      String ebsDBID             = m_env.getEnv("DB_ID");

      Map params = new HashMap();
      params.put("TARGET_APP",        apexTargetApp);
      params.put("TARGET_PAGE",       apexTargetPage);
      params.put("EBS_SESSION_ID",    sessionID);
      params.put("EBS_COOKIE",        cookieValue);
      params.put("EBS_DB_ID",         ebsDBID);

      String redirectURL = constructURL(apexURL, params);

      if (debug) {
		if (newWindow) {
		  out.println("<div>Click <a href='" + redirectURL + "' target='_blank'>here</a> to continue</div>");
        } else {      
          out.println("<div>Click <a href='" + redirectURL + "'>here</a> to continue</div>");
        }
        out.println("<pre>");
        out.println("app         : " + apexTargetApp);
        out.println("page        : " + apexTargetPage);
        out.println("sessionID   : " + sessionID);
        out.println("cookie      : " + cookieValue);
        out.println("DB ID       : " + ebsDBID);
        out.println("</pre>");

      } else {
		if (newWindow) {
		  out.println("<script>openWin('" + redirectURL + "');</script>");
		} else {			
          response.sendRedirect(redirectURL);
		}
      }

    } catch(Exception e){
      StringWriter sw = new StringWriter();
      e.printStackTrace(new PrintWriter(sw));
      out.print("<pre>" + sw.toString() + "</pre>");
    } finally {
      wctx.releaseJDBCConnection();
    }
%>
</body></html>


