/******************************************************************************
 *
 * A P E X 2 E B S
 * Copyright (C) 2016 Christopher Ho / SymbolThree
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
 * ================================================
 *
 * $Archive: /TOOL/APEX2EBS/EBS/SQL/APEX2EBS_UPDATE_ITEM_RPC_PKG.SQL $
 * $Author: Christopher Ho $
 * $Date: 4/27/16 4:47a $
 * $Revision: 3 $
 ******************************************************************************/
 
CREATE OR REPLACE PROCEDURE A2E_UPDATE_ITEM_PRC (
                        p_inventory_item_id in NUMBER,
                        p_organization_id   in NUMBER,
                        p_list_price        in NUMBER,
                        p_buyer_id          in NUMBER,
                        p_planner_code      in VARCHAR2,
                        p_user_id           in NUMBER,
                        p_resp_id           in NUMBER,
                        p_resp_app_id       IN NUMBER,
                        p_rtn_status       out VARCHAR2,
                        p_rtn_msg          out VARCHAR2) AUTHID DEFINER IS

  var_item            VARCHAR2(100);
  out_msg_count       NUMBER;
  out_msg_data        VARCHAR2(2000);
  out_return_status   VARCHAR2(10);
  l_item_tbl          EGO_ITEM_PUB.ITEM_TBL_TYPE;
  out_item_tbl        EGO_ITEM_PUB.ITEM_TBL_TYPE;
  l_role_grant_tbl    EGO_ITEM_PUB.ROLE_GRANT_TBL_TYPE := EGO_ITEM_PUB.G_MISS_ROLE_GRANT_TBL;
  tbl_message_list    Error_Handler.Error_Tbl_Type;

  REMOTE_COMMIT_EXCEPTION   EXCEPTION;

  pragma exception_init(REMOTE_COMMIT_EXCEPTION, -6519);

  PRAGMA AUTONOMOUS_TRANSACTION;

  begin
    FND_GLOBAL.apps_initialize(p_user_id, p_resp_id, p_resp_app_id);

    l_item_tbl(1).Transaction_Type    := 'UPDATE';
    l_item_tbl(1).organization_id     := p_organization_id;
    l_item_tbl(1).inventory_item_id   := p_inventory_item_id;
    l_item_tbl(1).planner_code        := p_planner_code;
    l_item_tbl(1).buyer_id            := p_buyer_id;
    l_item_tbl(1).list_price_per_unit := p_list_price;

    EGO_ITEM_PUB.PROCESS_ITEMS(
      p_api_version            => '1.0'
     ,p_init_msg_list         => FND_API.G_TRUE
     ,p_commit                => FND_API.G_TRUE
     ,p_item_tbl              => l_item_tbl
     ,p_role_grant_tbl        => l_role_grant_tbl
     ,x_item_tbl              => out_item_tbl
     ,x_return_status         => out_return_status
     ,x_msg_count             => out_msg_count);

    p_rtn_status := out_return_status;

    IF out_return_status <> FND_API.G_RET_STS_SUCCESS THEN
      p_rtn_msg := 'API Error: ' || out_return_status || '<br/>';
      IF out_msg_count > 0 THEN
          Error_Handler.GET_MESSAGE_LIST(x_message_list=>tbl_message_list);
          FOR i IN 1..tbl_message_list.COUNT LOOP
             p_rtn_msg := p_rtn_msg || '<br/>' || tbl_message_list(i).message_text;
          END LOOP;
      ELSE
        p_rtn_msg := p_rtn_msg || '<br/>' || out_msg_data;
      END IF;
    END IF;

    EXCEPTION
    WHEN REMOTE_COMMIT_EXCEPTION THEN
      NULL;
    WHEN OTHERS THEN
      p_rtn_status := 'U';
      p_rtn_msg := substr(SQLERRM, 1, 200);
END A2E_UPDATE_ITEM_PRC;
/