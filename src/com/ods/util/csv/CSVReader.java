/**
 * 包名：com.ods.util.csv
 * 类名：CSVReader
 * Ods信息技术软件有限公司研发中心
 */
package com.ods.util.csv;

import com.ods.util.type.StringUtil;
import java.io.*;
import java.util.Vector;

/**
 * 功能：读取CSV文件
 * 创建者: 10325431@qq.com
 * 修改者                   修改时间
 * 
 */
public class CSVReader extends CsvFile {

    /**
     * 是否添加行头信息
     */
    private boolean useHeaders = false;
    /**
     * csv的解析标志常数
     */
    private int parseType = PARSETYPE_STRINGPARSER;
    /**
     * 是否连接分隔符
     */
    private boolean csvConcatAdjoiningSeperator;
    /**
     * csv文件名称
     *
     */
    private String filename;
    /**
     * csv文件内容行集合
     */
    private String[] lines;
    /**
     * csv文件内容行号
     */
    private int lineIndex = 0;
    /**
     * 读取文件的数据流
     */
    private BufferedReader bufferedReader;
    /**
     * 是否双引号内的内容
     */
    private boolean inQuotedString = false;
    //string contains the
    private String value = "";
    /**
     *
     */
    private boolean isVirgin = true;

    //vector contains the columns of one line
    private Vector<String> values = new Vector<String>();

    /**
     * 无参数的构造方法
     */
    public CSVReader() {
    }

    /**
     *创建一个CSVReader对象，并为其‘CSV文件内容行集合’属性赋值，设定CSV的字符串解析标志常数
     * @param in CSV文件内容行集合
     */
    public CSVReader(String[] in) {
        lines = in;
        parseType = PARSETYPE_STRINGPARSER;
    }

    /**
     * 创建一个CSVReader对象，并为其‘文件名称’属性赋值，设定CSV文件解析标志常数
     * @param filename CSV文件名
     */
    public CSVReader(String filename) {
        this.filename = filename;
        parseType = PARSETYPE_FILEPARSER;
    }

    ///////////////////////////////////////////////////////////////////
    public boolean isCsvConcatAdjoiningSeperator() {
        return csvConcatAdjoiningSeperator;
    }

    public void setCsvConcatAdjoiningSeperator(boolean csvConcatAdjoiningSeperator) {
        this.csvConcatAdjoiningSeperator = csvConcatAdjoiningSeperator;
    }

    public void setUseHeaders(boolean bool) {
        this.useHeaders = bool;
    }

    public boolean isUseHeaders() {
        return this.useHeaders;
    }

    /**
     * 读取文件内容行集合
     * @param in CSV文件内容行集合
     */
    public void setItems(String[] in) {
        if (parseType != PARSETYPE_STRINGPARSER) {
            return;
        }
        lines = in;
    }

    /**
     * 解析CSV文件
     * @return CSV文件内容解析后的Vector<String[]>
     */
    public Vector<String[]> parseMessage() {
        Vector<String[]> result = new Vector<String[]>();

        try {
            File file = new File(filename);
            FileInputStream fis = new FileInputStream(file);
            InputStreamReader bis = new InputStreamReader(fis, getEncoding());
            bufferedReader = new BufferedReader(bis);
            String content = null;
            while ((content = bufferedReader.readLine()) != null) {
                try {
                    String[] temp = StringUtil.split(content,",");
                    if (useHeaders && isVirgin) {
                        continue;
                    }
                    if (                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 null != temp) {
                        result.add(temp);
                    } else {
                        break;
                    }

                } catch (Exception ex) {
                    ex.printStackTrace();
                } finally {
                    if (isVirgin) {
                        isVirgin = false;
                    }
                }
            }
        } catch (IOException ioe) {
            ioe.printStackTrace();
        }
        return result;
    }

    /**
     * 解析CSV文件
     * @return CSV文件内容解析后的Vector<String[]>
     */
    public Vector<String[]> parse() {
        Vector<String[]> result = new Vector<String[]>();
        if (parseType == PARSETYPE_STRINGPARSER) {
            if (null == lines) {
                return result;
            }
            lineIndex = 0;
            while (lineIndex < lines.length) {
                try {
                    String[] temp = parseCsvLine(lines[lineIndex]);
                    if (useHeaders && isVirgin) {
                        continue;
                    }

                    if (null != temp) {
                        result.add(temp);
                    } else {
                        break;
                    }
                } catch (Exception ex) {
                    ex.printStackTrace();
                } finally {
                    if (isVirgin) {
                        isVirgin = false;
                    }
                    lineIndex++;
                }

            }
        } else if (parseType == PARSETYPE_FILEPARSER) {
            try {
                File file = new File(filename);
                FileInputStream fis = new FileInputStream(file);
                InputStreamReader bis = new InputStreamReader(fis, getEncoding());
                bufferedReader = new BufferedReader(bis);
                String content = null;
                while ((content = bufferedReader.readLine()) != null) {
                    try {
                        //添加换行符号
                        content = content + System.getProperty("line.separator");
                        String[] temp = parseCsvLine(content);
                        if (useHeaders && isVirgin) {
                            continue;
                        }

                        if (null != temp) {
                            result.add(temp);
                        } else {
                            break;
                        }

                    } catch (Exception ex) {
                        ex.printStackTrace();
                    } finally {
                        if (isVirgin) {
                            isVirgin = false;
                        }
                    }
                }
            } catch (IOException ioe) {
                ioe.printStackTrace();
            }
        }
        return result;
    }

    /**
     * 解析CSV文件的一行内容
     * @param line CSV文件的一行内容
     * @return CSV文件行内容解析后的字符串数组
     * @throws java.lang.Exception 解析CSV文件的一行内容失败或错误
     */
    protected String[] parseCsvLine(String line) throws Exception {
        //String orgLine = line;
        int currentPos = 0;
        int fullLine = 0;
        char sep = getSeparator();
        boolean isEncolsedByEffective = isEnclosedByEffective();

        if (null == line) {
            inQuotedString = false;
            if (!value.equals("")) {
                values.add(value.trim());
                value = "";
            } else {
                return null;
            }
        } else {
            while (fullLine == 0) {
                currentPos = 0;
                line += sep;
                while (currentPos < line.length()) {
                    char currentChar = line.charAt(currentPos);

                    if (isEncolsedByEffective) {
                        if (value.length() == 0 && currentChar == '"' && !inQuotedString) {
                            currentPos++;
                            inQuotedString = true;
                            continue;
                        }

                        if (currentChar == '"') {
                            char nextChar = line.charAt(currentPos + 1);
                            if (nextChar == '"') {
                                value += currentChar;
                                if (inQuotedString) {
                                    currentPos++;
                                }
                            } else {
                                if (!inQuotedString) {                                    //throw new Exception("Unexpected '\"' in position " + currentPos + ". Line=" + orgLine);
                                    value += currentChar;
                                }
                                if (inQuotedString) {
                                    inQuotedString = false;
                                }
                            }
                        } else {
                            if (currentChar == sep) {
                                if (inQuotedString) {
                                    value += currentChar;
                                } else {
                                    boolean addValue = true;
                                    if (currentPos >= 1) {
                                        char prevChar = line.charAt(currentPos - 1);
                                        if (csvConcatAdjoiningSeperator && (prevChar == sep)) {
                                            addValue = false;
                                        }
                                    }
                                    if (addValue) {
                                        values.add(value.trim());
                                    }
                                    value = "";
                                }
                            } else {
                                value += currentChar;
                            }
                        }
                    } else {
                        if (currentChar == sep) {
                            boolean addValue = true;
                            if (currentPos >= 1) {
                                char prevChar = line.charAt(currentPos - 1);
                                if (csvConcatAdjoiningSeperator && (prevChar == sep)) {
                                    addValue = false;
                                }
                            }
                            if (addValue) {
                                values.add(value.trim());
                            }
                            value = "";
                        } else {
                            value += currentChar;
                        }
                    }
                    currentPos++;
                }

                if (inQuotedString) {
                    // Remove extra , added at start
                    value = value.substring(0, value.length() - 1);
                    if (parseType == PARSETYPE_STRINGPARSER) {
                        try {
                            line = lines[++lineIndex];
                        } catch (IndexOutOfBoundsException be) {
                            break;
                        }
                    } else if (parseType == PARSETYPE_FILEPARSER) {
                        line = bufferedReader.readLine();
                        if (line == null) {
                            break;
                        }
                        line = line + System.getProperty("line.separator");
                    }

                } else {
                    fullLine = 1;
                }
            }
        }

        if (fullLine == 1 || line == null) {
            String[] retVal = new String[values.size()];
            values.copyInto(retVal);
            // values = new Vector();
            return retVal;
        } else {
            return null;
        }
    }
}
