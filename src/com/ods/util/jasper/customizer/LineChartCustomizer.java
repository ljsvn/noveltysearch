/**
 *copyright(C)2011
 *Ods信息技术软件有限公司 & Service Corporation All rights reserved
 */
package com.ods.util.jasper.customizer;
 

import org.jfree.chart.JFreeChart;
import org.jfree.chart.axis.ValueAxis;
import org.jfree.chart.labels.ItemLabelAnchor;
import org.jfree.chart.labels.ItemLabelPosition;
import org.jfree.chart.labels.StandardCategoryItemLabelGenerator;  
import org.jfree.chart.plot.CategoryPlot;
import org.jfree.chart.renderer.category.LineAndShapeRenderer;
import org.jfree.ui.TextAnchor;

import net.sf.jasperreports.engine.JRChart;
import net.sf.jasperreports.engine.JRChartCustomizer;

public class LineChartCustomizer implements JRChartCustomizer {

    //
    @Override
    public void customize(JFreeChart chart, JRChart jasperChart) {
        LineAndShapeRenderer renderer = (LineAndShapeRenderer) chart.getCategoryPlot().getRenderer(); 
        renderer.setBaseItemLabelGenerator(new StandardCategoryItemLabelGenerator()); 
        renderer.setBaseItemLabelsVisible(true); 
        renderer.setBasePositiveItemLabelPosition(new ItemLabelPosition(ItemLabelAnchor.OUTSIDE3, TextAnchor.BASELINE_LEFT));
//      格式化 图片      
        CategoryPlot plot = chart.getCategoryPlot();   
        ValueAxis valueaxis = plot.getRangeAxis(); 
        valueaxis.setPositiveArrowVisible(true); 
        valueaxis.setNegativeArrowVisible(true);
    }

}
