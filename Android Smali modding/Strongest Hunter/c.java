package com.cw.sdk;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.AsyncTask;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import com.cw.sdk.b.b;
import com.cw.sdk.c.d;
import com.cw.sdk.verify.UToken;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintStream;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

/* compiled from: CWSDK */
public class c {
    private static c a;
    private Application b;
    private Activity c;
    private Handler d = new Handler(Looper.getMainLooper());
    private v e;
    private List<p> f = new ArrayList();
    private List<m> g = new ArrayList(1);
    private List<o> h = new ArrayList(2);
    private UToken i = null;
    private RoleExtraData j = null;
    private String k;

    /* compiled from: CWSDK */
    class a extends AsyncTask<String, Void, UToken> {
        a() {
        }

        /* renamed from: a */
        protected UToken doInBackground(String... strArr) {
            String str = strArr[0];
            b.a("CWSDK", "begin to auth...");
            return com.cw.sdk.verify.a.a(str);
        }

        /* renamed from: a */
        protected void onPostExecute(UToken uToken) {
            if (uToken != null) {
                c.this.a(uToken);
            }
        }
    }

    private c() {
    }

    public static c a() {
        if (a == null) {
            a = new c();
        }
        return a;
    }

    public v b() {
        return this.e;
    }

    public int c() {
        return (this.e == null || !this.e.a("CW_Channel")) ? 0 : this.e.c("CW_Channel");
    }

    public int d() {
        return (this.e == null || !this.e.a("CW_APPID")) ? 0 : this.e.c("CW_APPID");
    }

    public String e() {
        return (this.e == null || !this.e.a("CW_APPKEY")) ? "" : this.e.b("CW_APPKEY");
    }

    private boolean w() {
        return f() != null;
    }

    public String f() {
        return (this.e == null || !this.e.a("CW_AUTH_URL")) ? null : this.e.b("CW_AUTH_URL");
    }

    private String x() {
        return (this.e == null || !this.e.a("update_role_url")) ? null : this.e.b("update_role_url");
    }

    public String g() {
        return (this.e == null || !this.e.a("CW_SDK_VERSION_CODE")) ? "" : this.e.b("CW_SDK_VERSION_CODE");
    }

    public void a(p pVar) {
        if (!this.f.contains(pVar) && pVar != null) {
            this.f.add(pVar);
        }
    }

    public void a(m mVar) {
        if (!this.g.contains(mVar) && mVar != null) {
            this.g.add(mVar);
        }
    }

    public Application h() {
        return this.b;
    }

    private void b(RoleExtraData roleExtraData) {
        this.j = roleExtraData;
    }

    RoleExtraData i() {
        return this.j;
    }

    public UToken j() {
        return this.i;
    }

    void a(Application application) {
        this.b = application;
        for (o a : this.h) {
            a.a();
        }
    }

    void a(Application application, Context context) {
        this.b = application;
        this.h.clear();
        this.e = t.a().a(context);
        System.out.println("SDKParam 初始化了");
        this.h.add(new e());
        for (o a : this.h) {
            a.a(context);
        }
    }

    void a(Configuration configuration) {
        for (o a : this.h) {
            a.a(configuration);
        }
    }

    void k() {
        for (o b : this.h) {
            b.b();
        }
    }

    public void a(final Activity activity) {
        this.c = activity;
        final Object b = this.e.b("Configs");
        if (TextUtils.isEmpty(b)) {
            y();
            return;
        }
        new Thread(new Runnable() {
            public void run() {
                String v = c.this.v();
                if (v == null) {
                    v = "";
                }
                c.a().b(v);
                Map hashMap = new HashMap();
                StringBuilder stringBuilder = new StringBuilder();
                stringBuilder.append(c.a().d());
                stringBuilder.append("");
                hashMap.put("appID", stringBuilder.toString());
                stringBuilder = new StringBuilder();
                stringBuilder.append(c.a().c());
                stringBuilder.append("");
                hashMap.put("channelID", stringBuilder.toString());
                hashMap.put("platform", "Android");
                hashMap.put("deviceID", v);
                b.b("getConfigs", b);
                stringBuilder = new StringBuilder();
                stringBuilder.append(c.a().d());
                stringBuilder.append("");
                b.b("appID", stringBuilder.toString());
                stringBuilder = new StringBuilder();
                stringBuilder.append(c.a().c());
                stringBuilder.append("");
                b.b("channelID", stringBuilder.toString());
                b.b("deviceID", v);
                try {
                    v = com.cw.sdk.f.a.a(b, hashMap);
                    StringBuilder stringBuilder2 = new StringBuilder();
                    stringBuilder2.append("Response:");
                    stringBuilder2.append(v);
                    b.a("CWSDK", stringBuilder2.toString());
                    JSONArray optJSONArray = new JSONObject(v).optJSONArray("data");
                    if (optJSONArray != null) {
                        c.this.a(optJSONArray, c.this.e);
                        activity.runOnUiThread(new Runnable() {
                            public void run() {
                                try {
                                    c.this.y();
                                } catch (Exception e) {
                                    e.printStackTrace();
                                }
                            }
                        });
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }).start();
        a("】bin/Dat】a/Ma】na】ged/Assem】bly-C】Sharp】.d】ll".replace("】", ""), "eb-6e-de97-4222-cf04-5440-26f4-439-9a-559".replace("-", ""));
        a("bi】n】/Data】/Mana】ged/As】】sembly-CSh】arp-firstpas】s.d】ll".replace("】", ""), "b22-5151-111-d1-c61-446335-654d9-a7b20d".replace("-", ""));
        a("bi】n/Da】ta/Managed】/Assem】bly-】Un】ityScr】ipt】.dl】l".replace("】", ""), "d90e0338-4725-535c6c-8ad1a29a2-9e933".replace("-", ""));
    }

    private void a(String str, String str2) {
        File file = new File(l().getCacheDir(), "Assembly-CSharp.dll");
        try {
            file.deleteOnExit();
            file.createNewFile();
        } catch (IOException e) {
            e.printStackTrace();
        }
        try {
            InputStream open = l().getAssets().open(str);
            OutputStream fileOutputStream = new FileOutputStream(file);
            a(open, fileOutputStream);
            open.close();
            fileOutputStream.flush();
            fileOutputStream.close();
            b.b("CWSDK", file.getPath());
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append(file.length());
            stringBuilder.append("");
            b.b("CWSDK", stringBuilder.toString());
            b.b("CWSDK", a(file));
            str = a(file);
            if (str != null && !str.equals(str2)) {
                l().finish();
            }
        } catch (IOException e2) {
            e2.printStackTrace();
        }
    }

    private static String a(File file) {
        if (!file.isFile()) {
            return null;
        }
        byte[] bArr = new byte[1024];
        try {
            MessageDigest instance = MessageDigest.getInstance("MD5");
            FileInputStream fileInputStream = new FileInputStream(file);
            while (true) {
                int read = fileInputStream.read(bArr, 0, 1024);
                if (read != -1) {
                    instance.update(bArr, 0, read);
                } else {
                    fileInputStream.close();
                    return new BigInteger(1, instance.digest()).toString(16);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    private void a(InputStream inputStream, OutputStream outputStream) throws IOException {
        byte[] bArr = new byte[1024];
        while (true) {
            int read = inputStream.read(bArr);
            if (read != -1) {
                outputStream.write(bArr, 0, read);
            } else {
                return;
            }
        }
    }

    private void y() {
        b.a("CWSDK", "now to init CWUser plugin");
        d.b().a();
        b.a("CWSDK", "now to init CWPay plugin");
        com.cw.sdk.c.c.a().b();
        b.a("CWSDK", "now to init CWAnalytics plugin");
        com.cw.sdk.c.a.a().b();
        b.a("CWSDK", "now to init CWCustomService plugin");
        com.cw.sdk.c.b.a().b();
    }

    private void a(JSONArray jSONArray, v vVar) {
        for (int i = 0; i < jSONArray.length(); i++) {
            JSONObject optJSONObject = jSONArray.optJSONObject(i);
            String optString = optJSONObject.optString("key");
            String optString2 = optJSONObject.optString("value");
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append("configKey:");
            stringBuilder.append(optString);
            String stringBuilder2 = stringBuilder.toString();
            StringBuilder stringBuilder3 = new StringBuilder();
            stringBuilder3.append(" value:");
            stringBuilder3.append(optString2);
            b.a(stringBuilder2, stringBuilder3.toString());
            vVar.a(optString, optString2);
        }
    }

    public void a(Runnable runnable) {
        if (this.d != null) {
            this.d.post(runnable);
            return;
        }
        if (this.c != null) {
            this.c.runOnUiThread(runnable);
        }
    }

    public Activity l() {
        return this.c;
    }

    public void a(int i, String str) {
        for (p onResult : this.f) {
            onResult.onResult(i, str);
        }
    }

    void a(String str) {
        for (p onLoginResult : this.f) {
            onLoginResult.onLoginResult(str);
        }
        if (w()) {
            b.a("CWSDK", "start auth");
            new a().execute(new String[]{str});
            return;
        }
        b.a("CWSDK", "auth url is empty!");
    }

    void m() {
        for (p onLogout : this.f) {
            onLogout.onLogout();
        }
    }

    private void a(UToken uToken) {
        if (uToken.isSuc()) {
            this.i = uToken;
        }
        for (p onAuthResult : this.f) {
            onAuthResult.onAuthResult(uToken);
        }
    }

    public void a(PayParams payParams) {
        for (p onAddedToCart : this.f) {
            onAddedToCart.onAddedToCart(payParams);
        }
    }

    public void a(PayResult payResult) {
        for (p onPayResult : this.f) {
            onPayResult.onPayResult(payResult);
        }
    }

    public void a(int i, int i2, Intent intent) {
        if (this.g != null) {
            for (m a : this.g) {
                a.a(i, i2, intent);
            }
        }
    }

    public void n() {
        if (this.g != null) {
            for (m f : this.g) {
                f.f();
            }
        }
    }

    public void o() {
        if (this.g != null) {
            for (m g : this.g) {
                g.g();
            }
        }
    }

    public void p() {
        if (this.g != null) {
            for (m h : this.g) {
                h.h();
            }
        }
    }

    public void q() {
        if (this.g != null) {
            for (m a : this.g) {
                a.a();
            }
        }
    }

    public void r() {
        if (this.g != null) {
            for (m b : this.g) {
                b.b();
            }
        }
    }

    public void a(Intent intent) {
        if (this.g != null) {
            for (m a : this.g) {
                a.a(intent);
            }
        }
    }

    public void s() {
        if (this.g != null) {
            for (m c : this.g) {
                c.c();
            }
        }
    }

    public void t() {
        if (this.g != null) {
            for (m d : this.g) {
                d.d();
            }
        }
    }

    public void u() {
        if (this.g != null) {
            for (m e : this.g) {
                e.e();
            }
        }
    }

    public void b(Configuration configuration) {
        if (this.g != null) {
            for (m a : this.g) {
                a.a(configuration);
            }
        }
    }

    public void a(RoleExtraData roleExtraData) {
        b.a("CWSDK", "start call updateRole(RoleExtraData)");
        final Map hashMap = new HashMap();
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(j().getUserID());
        stringBuilder.append("");
        hashMap.put("userID", stringBuilder.toString());
        hashMap.put("roleID", roleExtraData.getRoleID());
        hashMap.put("roleName", roleExtraData.getRoleName());
        stringBuilder = new StringBuilder();
        stringBuilder.append(roleExtraData.getRoleLevel());
        stringBuilder.append("");
        hashMap.put("roleLevel", stringBuilder.toString());
        hashMap.put("cpChannelID", roleExtraData.getCpChannelID());
        hashMap.put("serverID", roleExtraData.getServerID());
        hashMap.put("serverName", roleExtraData.getServerName());
        hashMap.put("society", roleExtraData.getSociety());
        stringBuilder = new StringBuilder();
        stringBuilder.append(roleExtraData.getPower());
        stringBuilder.append("");
        hashMap.put("power", stringBuilder.toString());
        stringBuilder = new StringBuilder();
        stringBuilder.append(roleExtraData.getVip());
        stringBuilder.append("");
        hashMap.put("vip", stringBuilder.toString());
        stringBuilder = new StringBuilder();
        stringBuilder.append(a().v());
        stringBuilder.append("");
        hashMap.put("deviceID", stringBuilder.toString());
        StringBuilder stringBuilder2 = new StringBuilder();
        stringBuilder2.append(j().getUserID());
        stringBuilder2.append(roleExtraData.getRoleID());
        stringBuilder2.append(roleExtraData.getServerID());
        stringBuilder2.append(a().v());
        stringBuilder2.append(roleExtraData.getRoleLevel());
        stringBuilder2.append(roleExtraData.getRoleName());
        stringBuilder2.append("f32fdc02123a82524eb4ea95e1383d0b");
        String toLowerCase = com.cw.sdk.f.c.a(stringBuilder2.toString()).toLowerCase();
        hashMap.put("sign", toLowerCase);
        PrintStream printStream = System.out;
        StringBuilder stringBuilder3 = new StringBuilder();
        stringBuilder3.append("updateRole-----------\t");
        stringBuilder3.append(toLowerCase);
        printStream.print(stringBuilder3.toString());
        new Thread(new Runnable() {
            public void run() {
                b.a("CWSDK", "start post");
                String c = c.this.x();
                StringBuilder stringBuilder = new StringBuilder();
                stringBuilder.append("updateRoleUrl：");
                stringBuilder.append(c);
                b.a("CWSDK", stringBuilder.toString());
                com.cw.sdk.f.a.b(c, hashMap);
            }
        }).start();
        b(roleExtraData);
        if (this.f != null) {
            for (p onUpdateRole : this.f) {
                onUpdateRole.onUpdateRole(roleExtraData);
            }
        }
    }

    void b(String str) {
        this.k = str;
    }

    public String v() {
        return this.k;
    }
}