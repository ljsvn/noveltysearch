/**
 *copyright(C)2011
 *Ods信息技术软件有限公司 & Service Corporation All rights reserved
 */
package com.ods.util.jasper.customizer;
 

import org.jfree.chart.JFreeChart; 
import org.jfree.chart.labels.ItemLabelAnchor;
import org.jfree.chart.labels.ItemLabelPosition;
import org.jfree.chart.labels.StandardCategoryItemLabelGenerator; 
import org.jfree.chart.plot.PiePlot3D;
import org.jfree.chart.renderer.category.BarRenderer;
import org.jfree.ui.TextAnchor;

import net.sf.jasperreports.engine.JRChart;
import net.sf.jasperreports.engine.JRChartCustomizer;

public class Pie3DChartCustomizer implements JRChartCustomizer {

    //
    @Override
    public void customize(JFreeChart chart, JRChart jasperChart) {
//        PiePlot3D renderer = (PiePlot3D) chart.getCategoryPlot().getRenderer();chart.getCategoryPlot()
//        renderer.setBaseItemLabelGenerator(new StandardCategoryItemLabelGenerator());
//        renderer.setBaseItemLabelsVisible(true);
//        renderer.setBasePositiveItemLabelPosition(new ItemLabelPosition(ItemLabelAnchor.OUTSIDE12, TextAnchor.TOP_CENTER));
//        renderer.setDrawBarOutline(true); 
//        renderer.setItemMargin(0.05);

    }

}
