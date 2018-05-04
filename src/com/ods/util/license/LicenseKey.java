package com.ods.util.license;

import java.io.BufferedInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.InetAddress;  
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.text.ParseException;
import java.util.StringTokenizer;

public class LicenseKey {

	public  String getLicenseKey() {
		String ipAdress="";
		String macAdress="";
		try {
			//获得IP地址
			ipAdress = InetAddress.getLocalHost().getHostAddress();
			System.out.println("ipAdress=" + ipAdress);
			//获得Mac地址
			 macAdress = getMacAddress(); 
		} catch (Throwable e) {
		}
		
		return MD5(ipAdress + macAdress); 
	} 
	 
	private final static String getMacAddress() throws IOException {
		String os = System.getProperty("os.name");
		try {
			if (os.startsWith("Windows")) {
				return parseMacAddress(ipConfigCommand(0));
			} else if (os.startsWith("Linux")) {
				return parseMacAddress(ipConfigCommand(1));
			} else {
				throw new IOException("unknown operating system: " + os);
			}
		} catch (ParseException ex) {
			ex.printStackTrace();
			throw new IOException(ex.getMessage());
		}
	}

	// 调用cmd命令，获取ipconfig信息
	private final static String ipConfigCommand(int flag) throws IOException {
		InputStream stdoutStream = null;
		String outputText = "";
		try {
			Process p = null;
			if (flag == 0) {// Windows
				p = Runtime.getRuntime().exec("ipconfig /all");
			} else if (flag == 1) {// Linux
				p = Runtime.getRuntime().exec("ifconfig");
			}
			stdoutStream = new BufferedInputStream(p.getInputStream());
			StringBuffer buffer = new StringBuffer();
			for (;;) {
				int c = stdoutStream.read();
				if (c == -1)
					break;
				buffer.append((char) c);
			}
			outputText = buffer.toString();
		} finally {
			if (stdoutStream != null) {
				stdoutStream.close();
			}
		}
		return new String(outputText.getBytes("ISO-8859-1"), "GB2312");
	}

	// 获取计算机MAC地址
	private final static String parseMacAddress(String ipConfigResponse)
			throws ParseException {

		StringTokenizer tokenizer = new StringTokenizer(ipConfigResponse, "\n");
		String lastMacAddress = null;

		while (tokenizer.hasMoreTokens()) {
			String line = tokenizer.nextToken().trim();
			if (line.indexOf("Physical Address") != -1
					|| line.indexOf("物理地址") != -1) {
				int macAddressPosition = line.indexOf(":");
				if (macAddressPosition <= 0) {

				}
				String macAddressCandidate = line.substring(
						macAddressPosition + 1).trim();
				if (macAddressCandidate == null
						|| macAddressCandidate.equals("")) {
					continue;
				}
				lastMacAddress = macAddressCandidate;
				break;
			}

		}
		return lastMacAddress;
	}
	private static String MD5(String str) {
		try {
			MessageDigest md = MessageDigest.getInstance("MD5");
			byte[] md5 = md.digest(str.getBytes());
			StringBuffer sb = new StringBuffer();
			String part = null;
			for (int i = 0; i < md5.length; i++) {
				part = Integer.toHexString(md5[i] & 0xFF);
				if (part.length() == 1) {
					part = "0" + part;
				}
				sb.append(part);
			}
			return sb.toString();
		} catch (NoSuchAlgorithmException ex) {
			ex.printStackTrace();
			return str;
		}
	}
}
