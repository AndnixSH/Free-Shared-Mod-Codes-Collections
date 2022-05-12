package com.applovin.sdk.applovinsdkattributioninterface;

import android.content.Context;
import android.content.pm.Signature;
import java.io.ByteArrayInputStream;
import java.security.MessageDigest;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;

public class Attribution
{
  public static String byte2HexFormatted(byte[] paramArrayOfByte)
  {
    StringBuilder localStringBuilder = new StringBuilder(paramArrayOfByte.length * 2);
    for (int i = 0; i < paramArrayOfByte.length; i++)
    {
      Object localObject2 = Integer.toHexString(paramArrayOfByte[i]);
      int j = ((String)localObject2).length();
      Object localObject1 = localObject2;
      if (j == 1) {
        localObject1 = "0" + (String)localObject2;
      }
      localObject2 = localObject1;
      if (j > 2) {
        localObject2 = ((String)localObject1).substring(j - 2, j);
      }
      localStringBuilder.append(((String)localObject2).toUpperCase());
      if (i < paramArrayOfByte.length - 1) {
        localStringBuilder.append(':');
      }
    }
    return localStringBuilder.toString();
  }
  
  public static String getAttribution(Context paramContext)
  {
    try
    {
      byte[] arrayOfByte = paramContext.getPackageManager().getPackageInfo(paramContext.getPackageName(), 64).signatures[0].toByteArray();
      paramContext = CertificateFactory.getInstance("X509");
      ByteArrayInputStream localByteArrayInputStream = new java/io/ByteArrayInputStream;
      localByteArrayInputStream.<init>(arrayOfByte);
      paramContext = (X509Certificate)paramContext.generateCertificate(localByteArrayInputStream);
      paramContext = byte2HexFormatted(MessageDigest.getInstance("SHA1").digest(paramContext.getEncoded()));
      return paramContext;
    }
    catch (Exception paramContext)
    {
      for (;;)
      {
        paramContext = "";
      }
    }
  }
}
