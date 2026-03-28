/******************************************************************************
 *
 * A P E X 2 E B S
 * Copyright (C) 2016 Christopher Ho / Symbol Three
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
 * $Archive: /TOOL/APEX2EBS/EBS/SQL/APEX2EBS_PRICE_LIST_RPC_PKG.SQL $
 * $Author: Christopher Ho $
 * $Date: 4/27/16 4:47a $
 * $Revision: 3 $
 ******************************************************************************/
 
CREATE OR REPLACE PACKAGE APEX2EBS_PRICE_LIST_RPC_PKG AUTHID DEFINER IS

  PROCEDURE deletePriceListLine(p_user_id      IN  NUMBER,
                                p_resp_id      IN  NUMBER,
                                p_resp_appl_id IN  NUMBER,
                                p_priceListID  IN  NUMBER,
                                p_listLineID   IN  NUMBER,
                                o_rtnStatus   OUT VARCHAR2,
                                o_rtnMsg      OUT VARCHAR2);

  PROCEDURE addPriceListLine(p_user_id       IN  NUMBER,
                             p_resp_id       IN  NUMBER,
                             p_resp_appl_id  IN  NUMBER,
                             p_priceListID   IN  NUMBER,
                             p_item_id       IN  NUMBER,
                             p_uom           IN  VARCHAR2,
                             p_new_price     IN  NUMBER,
                             p_new_startDate IN  DATE,
                             p_new_endDate   IN  DATE,
                             o_rtnStatus     OUT  VARCHAR2,
                             o_rtnMsg        OUT  VARCHAR2);

  PROCEDURE updatePriceListLine(p_user_id          IN  NUMBER,
                                p_resp_id          IN  NUMBER,
                                p_resp_appl_id     IN  NUMBER,
                                p_priceListID      IN  NUMBER,
                                p_listLineID       IN  NUMBER,
                                p_new_price        IN  NUMBER,
                                p_new_effStartDate IN  DATE,
                                p_new_effEndDate   IN  DATE,
                                o_rtnStatus       OUT VARCHAR2,
                                o_rtnMsg          OUT VARCHAR2);

END APEX2EBS_PRICE_LIST_RPC_PKG;
/


CREATE OR REPLACE PACKAGE BODY APEX2EBS_PRICE_LIST_RPC_PKG IS

  PROCEDURE INIT(p_user_id IN NUMBER, p_resp_id IN NUMBER, p_resp_appl_id IN NUMBER) IS
  BEGIN
    fnd_global.apps_initialize (user_id      => p_user_id
                               ,resp_id      => p_resp_id
                               ,resp_appl_id => p_resp_appl_id);
  END;

  PROCEDURE deletePriceListLine(p_user_id      IN  NUMBER,
                                p_resp_id      IN  NUMBER,
                                p_resp_appl_id IN  NUMBER,
                                p_priceListID  IN  NUMBER,
                                p_listLineID   IN  NUMBER,
                                o_rtnStatus    OUT VARCHAR2,
                                o_rtnMsg       OUT VARCHAR2) IS

    in_return_status             VARCHAR2 (1) := NULL;
    in_msg_count                 NUMBER := 0;
    in_msg_data                  VARCHAR2 (2000);

    -- IN record type
    in_price_list_rec            QP_PRICE_LIST_PUB.Price_List_Rec_Type;
    in_price_list_val_rec        QP_PRICE_LIST_PUB.Price_List_Val_Rec_Type;

    in_price_list_line_tbl       QP_PRICE_LIST_PUB.Price_List_Line_Tbl_Type;
    in_price_list_line_val_tbl   QP_PRICE_LIST_PUB.Price_List_Line_Val_Tbl_Type;

    in_pricing_attr_tbl          QP_PRICE_LIST_PUB.Pricing_Attr_Tbl_Type;
    in_pricing_attr_val_tbl      QP_PRICE_LIST_PUB.Pricing_Attr_Val_Tbl_Type;

    in_qualifiers_tbl            QP_QUALIFIER_RULES_PUB.Qualifiers_Tbl_Type;
    in_qualifiers_val_tbl        QP_QUALIFIER_RULES_PUB.Qualifiers_Val_Tbl_Type;

    -- OUT record type
    out_price_list_rec           QP_PRICE_LIST_PUB.Price_List_Rec_Type;
    out_price_list_val_rec       QP_PRICE_LIST_PUB.Price_List_Val_Rec_Type;

    out_price_list_line_tbl      QP_PRICE_LIST_PUB.Price_List_Line_Tbl_Type;
    out_price_list_line_val_tbl  QP_PRICE_LIST_PUB.Price_List_Line_Val_Tbl_Type;

    out_pricing_attr_tbl         QP_PRICE_LIST_PUB.Pricing_Attr_Tbl_Type;
    out_pricing_attr_val_tbl     QP_PRICE_LIST_PUB.Pricing_Attr_Val_Tbl_Type;

    out_qualifiers_tbl           QP_QUALIFIER_RULES_PUB.Qualifiers_Tbl_Type;
    out_qualifiers_val_tbl       QP_QUALIFIER_RULES_PUB.Qualifiers_Val_Tbl_Type;

  BEGIN
    in_price_list_rec.list_header_id  := p_priceListID;

    in_price_list_line_tbl (1).operation         := QP_GLOBALS.G_OPR_DELETE;
    in_price_list_line_tbl (1).list_line_id      := p_listLineID;

    INIT(p_user_id, p_resp_id, p_resp_appl_id);

    QP_PRICE_LIST_PUB.Process_Price_List (
    p_api_version_number        => 1,
    p_init_msg_list             => FND_API.G_TRUE,
    p_return_values             => FND_API.G_FALSE,
    p_commit                    => FND_API.G_FALSE,
    x_return_status             => in_return_status,
    x_msg_count                 => in_msg_count,
    x_msg_data                  => in_msg_data,
    p_PRICE_LIST_rec            => in_price_list_rec,
    p_PRICE_LIST_LINE_tbl       => in_price_list_line_tbl,
    p_PRICING_ATTR_tbl          => in_pricing_attr_tbl,
    x_PRICE_LIST_rec            => out_price_list_rec,
    x_PRICE_LIST_val_rec        => out_price_list_val_rec,
    x_PRICE_LIST_LINE_tbl       => out_price_list_line_tbl,
    x_PRICE_LIST_LINE_val_tbl   => out_price_list_line_val_tbl,
    x_QUALIFIERS_tbl            => out_qualifiers_tbl,
    x_QUALIFIERS_val_tbl        => out_qualifiers_val_tbl,
    x_PRICING_ATTR_tbl          => out_pricing_attr_tbl,
    x_PRICING_ATTR_val_tbl      => out_pricing_attr_val_tbl);

    o_rtnStatus := in_return_status;

    IF in_return_status <> FND_API.G_RET_STS_SUCCESS THEN -- S, FND_API.G_RET_STS_ERROR is E

      IF in_msg_count > 0 THEN
        FOR k IN 1 .. in_msg_count
        LOOP
          in_msg_data := oe_msg_pub.get (p_msg_index => k, p_encoded => 'F');
          o_rtnMsg    := o_rtnMsg || chr(10) || in_msg_data;
        END LOOP;
      END IF;
    END IF;

    EXCEPTION
    WHEN OTHERS THEN
        o_rtnStatus := FND_API.G_RET_STS_UNEXP_ERROR;  -- U
        o_rtnMsg := SUBSTR(SQLERRM,1,500);
  END deletePriceListLine;

  PROCEDURE addPriceListLine(p_user_id       IN  NUMBER,
                             p_resp_id       IN  NUMBER,
                             p_resp_appl_id  IN  NUMBER,
                             p_priceListID   IN  NUMBER,
                             p_item_id       IN  NUMBER,
                             p_uom           IN  VARCHAR2,
                             p_new_price     IN  NUMBER,
                             p_new_startDate IN  DATE,
                             p_new_endDate   IN  DATE,
                             o_rtnStatus     OUT  VARCHAR2,
                             o_rtnMsg        OUT  VARCHAR2) IS

    in_return_status             VARCHAR2 (1) := NULL;
    in_msg_count                 NUMBER := 0;
    in_msg_data                  VARCHAR2 (2000);

    -- IN record type
    in_price_list_rec            QP_PRICE_LIST_PUB.Price_List_Rec_Type;
    in_price_list_val_rec        QP_PRICE_LIST_PUB.Price_List_Val_Rec_Type;

    in_price_list_line_tbl       QP_PRICE_LIST_PUB.Price_List_Line_Tbl_Type;
    in_price_list_line_val_tbl   QP_PRICE_LIST_PUB.Price_List_Line_Val_Tbl_Type;

    in_pricing_attr_tbl          QP_PRICE_LIST_PUB.Pricing_Attr_Tbl_Type;
    in_pricing_attr_val_tbl      QP_PRICE_LIST_PUB.Pricing_Attr_Val_Tbl_Type;

    in_qualifiers_tbl            QP_QUALIFIER_RULES_PUB.Qualifiers_Tbl_Type;
    in_qualifiers_val_tbl        QP_QUALIFIER_RULES_PUB.Qualifiers_Val_Tbl_Type;

    -- OUT record type
    out_price_list_rec           QP_PRICE_LIST_PUB.Price_List_Rec_Type;
    out_price_list_val_rec       QP_PRICE_LIST_PUB.Price_List_Val_Rec_Type;

    out_price_list_line_tbl      QP_PRICE_LIST_PUB.Price_List_Line_Tbl_Type;
    out_price_list_line_val_tbl  QP_PRICE_LIST_PUB.Price_List_Line_Val_Tbl_Type;

    out_pricing_attr_tbl         QP_PRICE_LIST_PUB.Pricing_Attr_Tbl_Type;
    out_pricing_attr_val_tbl     QP_PRICE_LIST_PUB.Pricing_Attr_Val_Tbl_Type;

    out_qualifiers_tbl           QP_QUALIFIER_RULES_PUB.Qualifiers_Tbl_Type;
    out_qualifiers_val_tbl       QP_QUALIFIER_RULES_PUB.Qualifiers_Val_Tbl_Type;

  BEGIN
    in_price_list_rec.list_header_id  := p_priceListID;

    in_price_list_line_tbl (1).operation         := QP_GLOBALS.G_OPR_CREATE;
    in_price_list_line_tbl (1).list_line_id      := FND_API.G_MISS_NUM;
    in_price_list_line_tbl (1).operand           := p_new_price;
    in_price_list_line_tbl (1).start_date_active := p_new_startDate;
    in_price_list_line_tbl (1).end_date_active   := p_new_endDate;

    in_pricing_attr_tbl (1).price_list_line_index     := 1;
    in_pricing_attr_tbl (1).operation                 := QP_GLOBALS.G_OPR_CREATE;
    in_pricing_attr_tbl (1).product_attribute_context := 'ITEM';
    in_pricing_attr_tbl (1).product_attribute         := 'PRICING_ATTRIBUTE1';
    in_pricing_attr_tbl (1).product_attr_value        := to_char(p_item_id);
    in_pricing_attr_tbl (1).PRODUCT_UOM_CODE          := p_uom;

    INIT(p_user_id, p_resp_id, p_resp_appl_id);

    QP_PRICE_LIST_PUB.Process_Price_List (
    p_api_version_number        => 1,
    p_init_msg_list             => FND_API.G_TRUE,
    p_return_values             => FND_API.G_FALSE,
    p_commit                    => FND_API.G_FALSE,
    x_return_status             => in_return_status,
    x_msg_count                 => in_msg_count,
    x_msg_data                  => in_msg_data,
    p_PRICE_LIST_rec            => in_price_list_rec,
    p_PRICE_LIST_LINE_tbl       => in_price_list_line_tbl,
    p_PRICING_ATTR_tbl          => in_pricing_attr_tbl,
    x_PRICE_LIST_rec            => out_price_list_rec,
    x_PRICE_LIST_val_rec        => out_price_list_val_rec,
    x_PRICE_LIST_LINE_tbl       => out_price_list_line_tbl,
    x_PRICE_LIST_LINE_val_tbl   => out_price_list_line_val_tbl,
    x_QUALIFIERS_tbl            => out_qualifiers_tbl,
    x_QUALIFIERS_val_tbl        => out_qualifiers_val_tbl,
    x_PRICING_ATTR_tbl          => out_pricing_attr_tbl,
    x_PRICING_ATTR_val_tbl      => out_pricing_attr_val_tbl);

    o_rtnStatus := in_return_status;

    DBMS_OUTPUT.PUT_LINE('addPriceListLine result : ' || o_rtnStatus);

    IF o_rtnStatus <> FND_API.G_RET_STS_SUCCESS THEN
      IF in_msg_count > 0 THEN
        FOR k IN 1 .. in_msg_count
        LOOP
          in_msg_data := oe_msg_pub.get (p_msg_index => k, p_encoded => 'F');
          o_rtnMsg    := o_rtnMsg || chr(10) || in_msg_data;
        END LOOP;
      END IF;
    END IF;

    EXCEPTION
    WHEN OTHERS THEN
      o_rtnStatus := FND_API.G_RET_STS_UNEXP_ERROR;
      o_rtnMsg := SUBSTR(SQLERRM,1,500);
  END addPriceListLine;


  PROCEDURE updatePriceListLine(p_user_id          IN  NUMBER,
                                p_resp_id          IN  NUMBER,
                                p_resp_appl_id     IN  NUMBER,
                                p_priceListID      IN  NUMBER,
                                p_listLineID       IN  NUMBER,
                                p_new_price        IN  NUMBER,
                                p_new_effStartDate IN  DATE,
                                p_new_effEndDate   IN  DATE,
                                o_rtnStatus       OUT VARCHAR2,
                                o_rtnMsg          OUT VARCHAR2) IS


    in_return_status             VARCHAR2 (1) := NULL;
    in_msg_count                 NUMBER := 0;
    in_msg_data                  VARCHAR2 (2000);

    -- IN record type
    in_price_list_rec            QP_PRICE_LIST_PUB.Price_List_Rec_Type;
    in_price_list_val_rec        QP_PRICE_LIST_PUB.Price_List_Val_Rec_Type;

    in_price_list_line_tbl       QP_PRICE_LIST_PUB.Price_List_Line_Tbl_Type;
    in_price_list_line_val_tbl   QP_PRICE_LIST_PUB.Price_List_Line_Val_Tbl_Type;

    in_pricing_attr_tbl          QP_PRICE_LIST_PUB.Pricing_Attr_Tbl_Type;
    in_pricing_attr_val_tbl      QP_PRICE_LIST_PUB.Pricing_Attr_Val_Tbl_Type;

    in_qualifiers_tbl            QP_QUALIFIER_RULES_PUB.Qualifiers_Tbl_Type;
    in_qualifiers_val_tbl        QP_QUALIFIER_RULES_PUB.Qualifiers_Val_Tbl_Type;

    -- OUT record type
    out_price_list_rec           QP_PRICE_LIST_PUB.Price_List_Rec_Type;
    out_price_list_val_rec       QP_PRICE_LIST_PUB.Price_List_Val_Rec_Type;

    out_price_list_line_tbl      QP_PRICE_LIST_PUB.Price_List_Line_Tbl_Type;
    out_price_list_line_val_tbl  QP_PRICE_LIST_PUB.Price_List_Line_Val_Tbl_Type;

    out_pricing_attr_tbl         QP_PRICE_LIST_PUB.Pricing_Attr_Tbl_Type;
    out_pricing_attr_val_tbl     QP_PRICE_LIST_PUB.Pricing_Attr_Val_Tbl_Type;

    out_qualifiers_tbl           QP_QUALIFIER_RULES_PUB.Qualifiers_Tbl_Type;
    out_qualifiers_val_tbl       QP_QUALIFIER_RULES_PUB.Qualifiers_Val_Tbl_Type;

BEGIN

  in_price_list_rec.list_header_id  := p_priceListID;

  in_price_list_line_tbl (1).operation         := QP_GLOBALS.G_OPR_UPDATE;
  in_price_list_line_tbl (1).list_line_id      := p_listLineID;
  in_price_list_line_tbl (1).operand           := p_new_price;
  in_price_list_line_tbl (1).start_date_active := FND_API.G_MISS_DATE;
  in_price_list_line_tbl (1).start_date_active := p_new_effStartDate;
  in_price_list_line_tbl (1).end_date_active := p_new_effEndDate;

  INIT(p_user_id, p_resp_id, p_resp_appl_id);

  QP_PRICE_LIST_PUB.Process_Price_List (
  p_api_version_number        => 1,
  p_init_msg_list             => FND_API.G_TRUE,
  p_return_values             => FND_API.G_FALSE,
  p_commit                    => FND_API.G_FALSE,
  x_return_status             => in_return_status,
  x_msg_count                 => in_msg_count,
  x_msg_data                  => in_msg_data,
  p_PRICE_LIST_rec            => in_price_list_rec,
  p_PRICE_LIST_LINE_tbl       => in_price_list_line_tbl,
  p_PRICING_ATTR_tbl          => in_pricing_attr_tbl,
  x_PRICE_LIST_rec            => out_price_list_rec,
  x_PRICE_LIST_val_rec        => out_price_list_val_rec,
  x_PRICE_LIST_LINE_tbl       => out_price_list_line_tbl,
  x_PRICE_LIST_LINE_val_tbl   => out_price_list_line_val_tbl,
  x_QUALIFIERS_tbl            => out_qualifiers_tbl,
  x_QUALIFIERS_val_tbl        => out_qualifiers_val_tbl,
  x_PRICING_ATTR_tbl          => out_pricing_attr_tbl,
  x_PRICING_ATTR_val_tbl      => out_pricing_attr_val_tbl);

    o_rtnStatus := in_return_status;

    DBMS_OUTPUT.PUT_LINE('updatePriceListLine result : ' || o_rtnStatus);

    IF o_rtnStatus <> FND_API.G_RET_STS_SUCCESS THEN
      IF in_msg_count > 0 THEN
        FOR k IN 1 .. in_msg_count
        LOOP
          in_msg_data := oe_msg_pub.get (p_msg_index => k, p_encoded => 'F');
          IF k=1 THEN
          	o_rtnMsg    := in_msg_data;
          ELSE
            o_rtnMsg    := o_rtnMsg || chr(10) || in_msg_data;
          END IF;
        END LOOP;
      END IF;
    END IF;

    EXCEPTION
    WHEN OTHERS THEN
      o_rtnStatus := FND_API.G_RET_STS_UNEXP_ERROR;
      o_rtnMsg := SUBSTR(SQLERRM,1,500);

  END updatePriceListLine;


END APEX2EBS_PRICE_LIST_RPC_PKG;
/
