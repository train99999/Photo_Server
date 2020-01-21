package com.quan.utils;



import org.apache.commons.net.ftp.FTPClient;

import java.io.IOException;
import java.io.InputStream;

public class FtpUtil {
    public static boolean uploadFile(String host, int port, String username,String password, String filename,InputStream stream) throws IOException {

        FTPClient ftp = new FTPClient();
        ftp.connect(host,port);
        ftp.login(username,password);
        ftp.enterLocalPassiveMode();
        ftp.setFileType(FTPClient.BINARY_FILE_TYPE);

        ftp.storeFile(filename,stream);
        ftp.logout();
        return true;
    }
}
