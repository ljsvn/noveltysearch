/**
 *copyright(C)2011
 *Ods信息技术软件有限公司 & Service Corporation All rights reserved
 */
package com.ods.util.type;

/**
 *<b>系统名称:</b><b>
 *武警遵义支队按纲建队系统
 *</b>
 *&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 *
 *
 *<b>文件名:</b><br>
 *
 *ImageUtil.java<br>
 *&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 *
 *<b>类名:</b><br>
 *&nbsp;&nbsp;&nbsp;&nbsp;
 *
 *ImageUtil类.<br>
 *&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 *
 *<br>
 *<b>概要说明</b><br>
 *&nbsp;&nbsp;&nbsp;&nbsp;
 *
 *
 *ImageUtil类的概要说明<br>
 **&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;
 *
 *图片生成拼接工具类<br>
 *
 *<b>***History*** </b/><br>
 *更新年月日， 更改原因，   姓名，   		更新内容<br>
 *2011-2-27,    cause,    10325431@qq.com,   	新建<br>
 *
 *@author :pu_xiaolong
 *@since  :2011-2-27
 *@version:1.0
 */
import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics;
import java.awt.Graphics2D;
import java.awt.Image;
import java.awt.RenderingHints;
import java.awt.Toolkit;
import java.awt.geom.AffineTransform;
import java.awt.image.BufferedImage;
import java.awt.image.ColorModel;
import java.awt.image.CropImageFilter;
import java.awt.image.FilteredImageSource;
import java.awt.image.ImageFilter;
import java.awt.image.WritableRaster;
import java.io.File;

import javax.imageio.ImageIO;

public class ImageUtil {
    /**
     * 处理图像
     * 
     * @param source 原图像
     * @param targetW 目标宽度
     * @param targetH 目标高度
     * @return 处理完图像（略缩图）
     */
    public static BufferedImage resize(BufferedImage source, int targetW, int targetH) {

        // targetW，targetH分别表示目标长和宽
        int type = source.getType();
        BufferedImage target = null;
        double sx = (double) targetW / source.getWidth();
        double sy = (double) targetH / source.getHeight();
        // 这里想实现在targetW，targetH范围内实现等比缩放。如果不需要等比缩放
        // 则将下面的if else语句注释即可
        if(sx > sy) {
            sx = sy;
            targetW = (int) (sx * source.getWidth());
        } else {
            sy = sx;
            targetH = (int) (sy * source.getHeight());
        }

        if(type == BufferedImage.TYPE_CUSTOM) { // handmade
            ColorModel cm = source.getColorModel();
            WritableRaster raster = cm.createCompatibleWritableRaster(targetW, targetH);
            boolean alphaPremultiplied = cm.isAlphaPremultiplied();
            target = new BufferedImage(cm, raster, alphaPremultiplied, null);
        } else {
            target = new BufferedImage(targetW, targetH, type);
        }

        Graphics2D g = target.createGraphics();
        // smoother than exlax:
        g.setRenderingHint(RenderingHints.KEY_RENDERING, RenderingHints.VALUE_RENDER_QUALITY);
        g.drawRenderedImage(source, AffineTransform.getScaleInstance(sx, sy));
        g.dispose();

        return target;
    }

    /**
     * 保存图片
     * 
     * @param fromFileStr 来自图片
     * @param saveToFileStr 保存图片
     * @param width 保存宽度
     * @param hight 保存高度
     * @throws Exception 异常
     */
    public static void saveImageAsJpg(String fromFileStr, String saveToFileStr, int width, int hight) throws Exception {
        BufferedImage srcImage;
        // String ex =
        // fromFileStr.substring(fromFileStr.indexOf("."),fromFileStr.length());
        String imgType = "JPEG";
        if(fromFileStr.toLowerCase().endsWith(".png")) {
            imgType = "PNG";
        }
        File saveFile = new File(saveToFileStr);
        File fromFile = new File(fromFileStr);
        srcImage = ImageIO.read(fromFile);
        if(width > 0 || hight > 0) {
            srcImage = resize(srcImage, width, hight);
        }
        ImageIO.write(srcImage, imgType, saveFile);
    }

    /**
     * 左右连接2张图片
     * 
     * **/
    public static BufferedImage leftJoin(BufferedImage ImageOne, BufferedImage ImageTwo) {
        int width1, width2, height1, height2, height;
        try {
            width1 = ImageOne.getWidth();// 图片宽度
            height1 = ImageOne.getHeight();// 图片高度
            width2 = ImageTwo.getWidth();// 图片宽度
            height2 = ImageTwo.getHeight();// 图片高度
            if(height1 > height2)
                height = height1;
            else
                height = height2;
            // 从图片中读取RGB
            int[] ImageArrayOne = new int[width1 * height1];
            ImageArrayOne = ImageOne.getRGB(0, 0, width1, height1, ImageArrayOne, 0, width1);

            int[] ImageArrayTwo = new int[width2 * height2];
            ImageArrayTwo = ImageTwo.getRGB(0, 0, width2, height2, ImageArrayTwo, 0, width2);

            // 生成新图片
            BufferedImage ImageNew = new BufferedImage(width1 + width2, height, BufferedImage.TYPE_INT_RGB);
            ImageNew.setRGB(0, 0, width1, height1, ImageArrayOne, 0, width1);// 设置左半部分的RGB
            ImageNew.setRGB(width1, 0, width2, height, ImageArrayTwo, 0, width2);// 设置右半部分的RGB
            return ImageNew;
        } catch(Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    /**
     * 上下连接2张图片
     * 
     * **/
    public static BufferedImage topJoin(BufferedImage ImageOne, BufferedImage ImageTwo) {
        int width1, width2, height1, height2, width;
        try {
            width1 = ImageOne.getWidth();// 图片宽度
            height1 = ImageOne.getHeight();// 图片高度
            width2 = ImageTwo.getWidth();// 图片宽度
            height2 = ImageTwo.getHeight();// 图片高度
            if(width1 > width2)
                width = width1;
            else
                width = width2;
            // 从图片中读取RGB
            int[] ImageArrayOne = new int[width1 * height1];
            ImageArrayOne = ImageOne.getRGB(0, 0, width1, height1, ImageArrayOne, 0, width1);

            int[] ImageArrayTwo = new int[width2 * height2];
            ImageArrayTwo = ImageTwo.getRGB(0, 0, width2, height2, ImageArrayTwo, 0, width2);

            // 生成新图片
            BufferedImage ImageNew = new BufferedImage(width, height1 + height2, BufferedImage.TYPE_INT_RGB);
            ImageNew.setRGB(0, 0, width1, height1, ImageArrayOne, 0, width1);// 设置上半部分的RGB
            ImageNew.setRGB(0, height1, width2, height2, ImageArrayTwo, 0, width);// 设置下半部分的RGB
            return ImageNew;
        } catch(Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    /**
     * 图片切割
     * 
     * @param fromImage 图片
     * @param startX 开始x结点（left）
     * @param startY 开始y结点（top）
     * @param w 切割宽度
     * @param h 切割高度
     */

    public static BufferedImage cut(BufferedImage fromImage, int startX, int startY, int w, int h) {
        try {
            Image img;
            ImageFilter cropFilter;
            // 读取源图像
            int height = fromImage.getHeight();
            int width = fromImage.getWidth();
            if(width >= w && height >= h) {
                Image image = fromImage.getScaledInstance(width, height, Image.SCALE_DEFAULT);
                // 剪切起始坐标点
                int x = startX;
                int y = startY;
                int destWidth = w; // 切片宽度
                int destHeight = h; // 切片高度
                // 图片比例
                double pw = width;
                double ph = height;
                double m = (double) width / pw;
                double n = (double) height / ph;
                int wth = (int) (destWidth * m);
                int hth = (int) (destHeight * n);
                int xx = (int) (x * m);
                int yy = (int) (y * n);
                // 四个参数分别为图像起点坐标和宽高
                // 即: CropImageFilter(int x,int y,int width,int height)
                cropFilter = new CropImageFilter(xx, yy, wth, hth);
                img = Toolkit.getDefaultToolkit().createImage(new FilteredImageSource(image.getSource(), cropFilter));
                BufferedImage tag = new BufferedImage(w, h, BufferedImage.TYPE_INT_RGB);
                Graphics g = tag.getGraphics();
                g.drawImage(img, 0, 0, null); // 绘制缩小后的图
                g.dispose();
                return tag;
            }
        } catch(Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    /** 图片上加文字 **/
    public static void image_text(BufferedImage tag, String text, Font font, int x, int y) {
        Graphics g = tag.getGraphics();
        // g.setColor(Color.BLACK); //以下设置前景色
        g.setXORMode(Color.GREEN);
        g.setFont(font);// new Font("宋体", Font.ITALIC, 24));
        g.drawString(text, x, y);
        g.dispose();
    }

    public static void main(String args[]) {
        try { 
            File f1 = new File("d:\\3.jpg");
            BufferedImage img1 = ImageIO.read(f1);
             
        } catch(Exception e) {
            e.printStackTrace();
        }
    }
}
