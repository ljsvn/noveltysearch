/**
 *copyright(C)2011
 *Ods信息技术软件有限公司 & Service Corporation All rights reserved
 */
package com.ods.util.jasper.util;

import java.util.ArrayList;
import java.util.List;

import net.sf.jasperreports.engine.JRElement;
import net.sf.jasperreports.engine.JRException;
import net.sf.jasperreports.engine.JRReport;
import net.sf.jasperreports.engine.design.JRDesignBand;
import net.sf.jasperreports.engine.design.JRDesignStaticText;
import net.sf.jasperreports.engine.design.JRDesignTextField;
import net.sf.jasperreports.engine.design.JasperDesign;
import net.sf.jasperreports.engine.xml.JRXmlLoader;

public class RptDesign4SD {
    public static JasperDesign getJasperDesign(String file) {
        JasperDesign design = null;
        try {
            design = JRXmlLoader.load(file);
            // JRField[] fieldList = design.getFields();
            JRElement[] elementList = design.getColumnHeader().getElements();
            List<JRElement> arr = new ArrayList<JRElement>();
            // 不显示密码列
            // int index = 0;
            for(JRElement element : elementList) {
                String key = element.getKey();
                System.out.println(key);
                if("static_pwd".equals(key) || "staticText-static".equals(key)) {
                    continue;
                }
                arr.add(element);
            }
            JRDesignBand band = new JRDesignBand();
            band.setHeight(30);
            int currentX = 0;
            for(JRElement element : arr) {
                element.setX(currentX);
                currentX += element.getWidth();
                band.addElement((JRDesignStaticText) element);
            }
            design.setColumnHeader(band);

            band = new JRDesignBand();
            band.setHeight(18);
            JRElement[] elementDetailList = design.getDetail().getElements();

            arr = new ArrayList<JRElement>();
            currentX = 0;
            for(JRElement field : elementDetailList) {
                String key = field.getKey();
                if("textField_pwd".equals(key) || "textField_status".equals(key)) {
                    continue;
                }
                arr.add(field);
            }
            for(JRElement element : arr) {
                element.setX(currentX);
                currentX += element.getWidth();
                band.addElement((JRDesignTextField) element);
            }
            design.setDetail(band);
        } catch(JRException e) {

            e.printStackTrace();
        }
        return design;
    }

    public static void main(String[] args) {
        JasperDesign design = RptDesign4SD.getJasperDesign("E:\\testAutoColumn.jrxml");
        try {
            // JasperCompileManager.compileReportToFile(design,
            // "E:\\achui.jrxml");
            net.sf.jasperreports.engine.xml.JRXmlWriter.writeReport((JRReport) design, "E:\\achui.jrxml", "UTF-8");
        } catch(JRException e) {

            e.printStackTrace();
        }
    }
}