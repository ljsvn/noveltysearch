/**
 *copyright(C)2011
 *Ods信息技术软件有限公司 & Service Corporation All rights reserved
 */
package com.ods.util.jasper.customizer;

import java.awt.Color;
import java.awt.Font;

import org.jfree.chart.JFreeChart;
import org.jfree.chart.axis.CategoryAxis;
import org.jfree.chart.axis.NumberAxis;
import org.jfree.chart.axis.ValueAxis;
import org.jfree.chart.labels.ItemLabelAnchor;
import org.jfree.chart.labels.ItemLabelPosition;
import org.jfree.chart.labels.StandardCategoryItemLabelGenerator;
import org.jfree.chart.plot.CategoryPlot;
import org.jfree.chart.renderer.category.BarRenderer;
import org.jfree.ui.TextAnchor;

import net.sf.jasperreports.engine.JRChart;
import net.sf.jasperreports.engine.JRChartCustomizer;

public class Bar3DChartCustomizer implements JRChartCustomizer {

    //
    @Override
    public void customize(JFreeChart chart, JRChart jasperChart) {
        BarRenderer renderer = (BarRenderer) chart.getCategoryPlot().getRenderer();
        renderer.setBaseItemLabelGenerator(new StandardCategoryItemLabelGenerator());
        renderer.setBaseItemLabelsVisible(true);
        renderer.setBasePositiveItemLabelPosition(new ItemLabelPosition(ItemLabelAnchor.OUTSIDE12, TextAnchor.TOP_CENTER));
        renderer.setDrawBarOutline(true);
        // 设置柱子宽度
        renderer.setMaximumBarWidth(0.05);
        // 设置柱子边框颜色
        renderer.setBaseOutlinePaint(Color.BLACK);
        // 格式化 图片
        CategoryPlot plot = chart.getCategoryPlot();
        // 没有数据是显示的消息
        plot.setNoDataMessage("没有数据！");
        Font noFont = new Font("SansSerif", Font.TRUETYPE_FONT, 48);
        // // 没有数据时显示的消息字体
        plot.setNoDataMessageFont(noFont);
        // // 没有数据时显示的消息颜色
        plot.setNoDataMessagePaint(Color.RED);
        ValueAxis valueaxis = plot.getRangeAxis();
        valueaxis.setPositiveArrowVisible(true);
        // // 数据轴精度
        NumberAxis vn = (NumberAxis) plot.getRangeAxis();
        // 设置刻度必须从0开始
        vn.setAutoRangeIncludesZero(true);
        vn.setAutoRange(true);

        // // 数据轴数据标签的显示格式
        CategoryAxis domainAxis = plot.getDomainAxis();

        // // 设置距离图片左端距离
        domainAxis.setLowerMargin(0.05);
        renderer.setItemMargin(0.05);

    }

}
