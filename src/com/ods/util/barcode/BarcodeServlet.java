/**
*copyright(C)2011
*Ods信息技术软件有限公司 & Service Corporation All rights reserved
*/
package com.ods.util.barcode;

import java.awt.image.BufferedImage;
import java.io.ByteArrayOutputStream;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.xml.transform.Result;
import javax.xml.transform.Source;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerFactory;

import org.apache.avalon.framework.configuration.Configuration;
import org.apache.avalon.framework.configuration.DefaultConfiguration;
import org.apache.avalon.framework.logger.ConsoleLogger;
import org.apache.avalon.framework.logger.Logger;
import org.krysalis.barcode4j.BarcodeGenerator;
import org.krysalis.barcode4j.BarcodeUtil;
import org.krysalis.barcode4j.output.bitmap.BitmapCanvasProvider;
import org.krysalis.barcode4j.output.eps.EPSCanvasProvider;
import org.krysalis.barcode4j.output.svg.SVGCanvasProvider;
import org.krysalis.barcode4j.tools.MimeTypes;

/**
 *<b>系统名称:</b><b>
 *武警遵义支队按纲建队系统
 *</b>
 *&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 *
 *
 *<b>文件名:</b><br>
 *
 *BarcodeServlet.java<br>
 *&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 *
 *<b>类名:</b><br>
 *&nbsp;&nbsp;&nbsp;&nbsp;
 *
 *BarcodeServlet类.<br>
 *&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 *
 *<br>
 *<b>概要说明</b><br>
 *&nbsp;&nbsp;&nbsp;&nbsp;
 *
 *
 *BarcodeServlet类的概要说明<br>
 **&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;
 *
 *条码图形的修改<br>
 *
 *<b>***History*** </b/><br>
 *更新年月日， 更改原因，   姓名，   		更新内容<br>
 *2011-3-1,    cause,    10325431@qq.com,   	新建<br>
 *
 *@author :pu_xiaolong
 *@since  :2011-3-1
 *@version:1.0
 */
public class BarcodeServlet extends HttpServlet {

    private static final long serialVersionUID = -1612710758060435089L;

    /** Parameter name for the message */
    public static final String BARCODE_MSG                 = "msg";
    /** Parameter name for the barcode type */
    public static final String BARCODE_TYPE                = "type";
    /** Parameter name for the barcode height */
    public static final String BARCODE_HEIGHT              = "height";
    /** Parameter name for the module width */
    public static final String BARCODE_MODULE_WIDTH        = "mw";
    /** Parameter name for the wide factor */
    public static final String BARCODE_WIDE_FACTOR         = "wf";
    /** Parameter name for the quiet zone */
    public static final String BARCODE_QUIET_ZONE          = "qz";
    /** Parameter name for the human-readable placement */
    public static final String BARCODE_HUMAN_READABLE_POS  = "hrp";
    /** Parameter name for the output format */
    public static final String BARCODE_FORMAT              = "fmt";
    /** Parameter name for the image resolution (for bitmaps) */
    public static final String BARCODE_IMAGE_RESOLUTION    = "res";
    /** Parameter name for the grayscale or b/w image (for bitmaps) */
    public static final String BARCODE_IMAGE_GRAYSCALE     = "gray";
    /** Parameter name for the font size of the human readable display */
    public static final String BARCODE_HUMAN_READABLE_SIZE = "hrsize";
    /** Parameter name for the font name of the human readable display */
    public static final String BARCODE_HUMAN_READABLE_FONT = "hrfont";
    /** Parameter name for the pattern to format the human readable message */
    public static final String BARCODE_HUMAN_READABLE_PATTERN = "hrpattern";


    private transient Logger log = new ConsoleLogger(ConsoleLogger.LEVEL_INFO);

    /**
     * @see javax.servlet.http.HttpServlet#doGet(HttpServletRequest, HttpServletResponse)
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
                throws ServletException, IOException {

        try {
            String format = determineFormat(request);
            int orientation = 0;

            Configuration cfg = buildCfg(request);

            String msg = request.getParameter(BARCODE_MSG);
            if (msg == null) {
                msg = "0123456789";
            }

            BarcodeUtil util = BarcodeUtil.getInstance();
            BarcodeGenerator gen = util.createBarcodeGenerator(cfg);

            ByteArrayOutputStream bout = new ByteArrayOutputStream(4096);
            try {
                if (format.equals(MimeTypes.MIME_SVG)) {
                    //Create Barcode and render it to SVG
                    SVGCanvasProvider svg = new SVGCanvasProvider(false, orientation);
                    gen.generateBarcode(svg, msg);
                    org.w3c.dom.DocumentFragment frag = svg.getDOMFragment();

                    //Serialize SVG barcode
                    TransformerFactory factory = TransformerFactory.newInstance();
                    Transformer trans = factory.newTransformer();
                    Source src = new javax.xml.transform.dom.DOMSource(frag);
                    Result res = new javax.xml.transform.stream.StreamResult(bout);
                    trans.transform(src, res);
                } else if (format.equals(MimeTypes.MIME_EPS)) {
                    EPSCanvasProvider eps = new EPSCanvasProvider(bout, orientation);
                    gen.generateBarcode(eps, msg);
                    eps.finish();
                } else {
                    String resText = request.getParameter(BARCODE_IMAGE_RESOLUTION);
                    int resolution = 300; //dpi
                    if (resText != null) {
                        resolution = Integer.parseInt(resText);
                    }
                    if (resolution > 2400) {
                        throw new IllegalArgumentException(
                            "Resolutions above 2400dpi are not allowed");
                    }
                    if (resolution < 10) {
                        throw new IllegalArgumentException(
                            "Minimum resolution must be 10dpi");
                    }
                    String gray = request.getParameter(BARCODE_IMAGE_GRAYSCALE);
                    BitmapCanvasProvider bitmap = ("true".equalsIgnoreCase(gray)
                        ? new BitmapCanvasProvider(
                                bout, format, resolution,
                                BufferedImage.TYPE_BYTE_GRAY, true, orientation)
                        : new BitmapCanvasProvider(
                                bout, format, resolution,
                                BufferedImage.TYPE_BYTE_BINARY, false, orientation));
                    gen.generateBarcode(bitmap, msg);
                    bitmap.finish();
                }
            } finally {
                bout.close();
            }
            response.setContentType(format);
            response.setContentLength(bout.size());
            response.getOutputStream().write(bout.toByteArray());
            response.getOutputStream().flush();
        } catch (Exception e) {
            log.error("Error while generating barcode", e);
            throw new ServletException(e);
        } catch (Throwable t) {
            log.error("Error while generating barcode", t);
            throw new ServletException(t);
        }
    }

    /**
     * Check the request for the desired output format.
     * @param request the request to use
     * @return MIME type of the desired output format.
     */
    protected String determineFormat(HttpServletRequest request) {
        String format = request.getParameter(BARCODE_FORMAT);
        format = MimeTypes.expandFormat(format);
        if (format == null) {
            format = MimeTypes.MIME_GIF;
        }
        return format;
    }

    /**
     * Build an Avalon Configuration object from the request.
     * @param request the request to use
     * @return the newly built COnfiguration object
     * @todo Change to bean API
     */
    protected Configuration buildCfg(HttpServletRequest request) {
        DefaultConfiguration cfg = new DefaultConfiguration("barcode");
        //Get type
        String type = request.getParameter(BARCODE_TYPE);
        if (type == null) {
            type = "code128";
        }
        DefaultConfiguration child = new DefaultConfiguration(type);
        cfg.addChild(child);
        //Get additional attributes
        DefaultConfiguration attr;
        String height = request.getParameter(BARCODE_HEIGHT);
        if (height != null) {
            attr = new DefaultConfiguration("height");
            attr.setValue(height);
            child.addChild(attr);
        }
        String moduleWidth = request.getParameter(BARCODE_MODULE_WIDTH);
        if (moduleWidth != null) {
            attr = new DefaultConfiguration("module-width");
            attr.setValue(moduleWidth);
            child.addChild(attr);
        }
        String wideFactor = request.getParameter(BARCODE_WIDE_FACTOR);
        if (wideFactor != null) {
            attr = new DefaultConfiguration("wide-factor");
            attr.setValue(wideFactor);
            child.addChild(attr);
        }
        String quietZone = request.getParameter(BARCODE_QUIET_ZONE);
        if (quietZone != null) {
            attr = new DefaultConfiguration("quiet-zone");
            if (quietZone.startsWith("disable")) {
                attr.setAttribute("enabled", "false");
            } else {
                attr.setValue(quietZone);
            }
            child.addChild(attr);
        }

        // creating human readable configuration according to the new Barcode Element Mappings
        // where the human-readable has children for font name, font size, placement and
        // custom pattern.
        String humanReadablePosition = request.getParameter(BARCODE_HUMAN_READABLE_POS);
        String pattern = request.getParameter(BARCODE_HUMAN_READABLE_PATTERN);
        String humanReadableSize = request.getParameter(BARCODE_HUMAN_READABLE_SIZE);
        String humanReadableFont = request.getParameter(BARCODE_HUMAN_READABLE_FONT);

        if (!((humanReadablePosition == null)
                && (pattern == null)
                && (humanReadableSize == null)
                && (humanReadableFont == null))) {
            attr = new DefaultConfiguration("human-readable");

            DefaultConfiguration subAttr;
            if (pattern != null) {
                subAttr = new DefaultConfiguration("pattern");
                subAttr.setValue(pattern);
                attr.addChild(subAttr);
            }
            if (humanReadableSize != null) {
                subAttr = new DefaultConfiguration("font-size");
                subAttr.setValue(humanReadableSize);
                attr.addChild(subAttr);
            }
            if (humanReadableFont != null) {
                subAttr = new DefaultConfiguration("font-name");
                subAttr.setValue(humanReadableFont);
                attr.addChild(subAttr);
            }
            if (humanReadablePosition != null) {
              subAttr = new DefaultConfiguration("placement");
              subAttr.setValue(humanReadablePosition);
              attr.addChild(subAttr);
            }

            child.addChild(attr);
        }

        return cfg;
    }

}
