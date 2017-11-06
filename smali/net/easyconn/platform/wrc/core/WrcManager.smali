.class public Lnet/easyconn/platform/wrc/core/WrcManager;
.super Ljava/lang/Object;
.source "WrcManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/easyconn/platform/wrc/core/WrcManager$NetWorkChangeReceiver;,
        Lnet/easyconn/platform/wrc/core/WrcManager$MyHandle;,
        Lnet/easyconn/platform/wrc/core/WrcManager$WrcCallback;,
        Lnet/easyconn/platform/wrc/core/WrcManager$ScanCallback;,
        Lnet/easyconn/platform/wrc/core/WrcManager$OtaCallback;
    }
.end annotation


# static fields
.field private static final APP_KEY_DEFAULT_MSG:I = 0x0

.field private static final APP_KEY_DEFAULT_VALUE:Z = true

.field public static final CONNECT_MESSAGE_DEVICE_IS_CONNECTED:I = 0x4

.field public static final ERROR_BLUETOOTH_TOGGLE_OFF:I = 0x2

.field public static final ERROR_CONNECT_DEVICE_IS_NULL:I = 0x3

.field public static final ERROR_WRC_NOT_SUPPORT:I = 0x1

.field public static final GATT_NULL:I = 0x5

.field private static final GET_MSG_CODE:Ljava/lang/String; = "code"

.field private static final MSG_CHECKING_KEY:I = 0x1

.field private static final MSG_KEY_CORRECT:I = 0x0

.field private static final MSG_KEY_INCORRECT:I = 0x232a

.field private static final MSG_KEY_NULL:I = 0x232c

.field private static final MSG_NO_NETWORK:I = 0x2

.field private static final MSG_PACKAGE_INCORRECT:I = 0x2329

.field private static final MSG_PACKAGE_NULL:I = 0x232b

.field private static final WRC_KEY_DEVICE:Ljava/lang/String; = "wrc.key.device"

.field private static final WRC_KEY_VALUE:Ljava/lang/String; = "wrc.key.value"

.field private static final WRC_NULL_DEVICE_MAC:Ljava/lang/String; = ""

.field private static final WRC_SHOW_TEXT_CHECK_KEY:Ljava/lang/String; = "\u6b63\u5728\u9a8c\u8bc1\u65b9\u63a7key\u3002\u3002\u3002"

.field private static final WRC_SHOW_TEXT_CHECK_KEY_SUS:Ljava/lang/String; = "\u9a8c\u8bc1\u6210\u529f"

.field private static final WRC_SHOW_TEXT_ILLEGAL_KEY:Ljava/lang/String; = "\u975e\u6cd5key\uff0c\u8bf7\u8054\u7cfb\u5ba2\u670d"

.field private static final WRC_SHOW_TEXT_NO_NETWORK:Ljava/lang/String; = "\u8bf7\u8054\u7f51\u9a8c\u8bc1\u65b9\u63a7key\uff01"

.field static final WRC_STORE_FILE:Ljava/lang/String; = "net.easyconn.platform.wrc"

.field private static mContext:Landroid/content/Context;

.field private static mErrorAlertDialog:Landroid/app/AlertDialog;

.field private static sInstance:Lnet/easyconn/platform/wrc/core/WrcManager;


# instance fields
.field private a:Lnet/easyconn/platform/wrc/core/WrcManager$NetWorkChangeReceiver;

.field private b:Lnet/easyconn/platform/wrc/core/WrcManager$MyHandle;

.field private c:Z

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Lnet/easyconn/platform/wrc/core/j;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object v1, p0, Lnet/easyconn/platform/wrc/core/WrcManager;->a:Lnet/easyconn/platform/wrc/core/WrcManager$NetWorkChangeReceiver;

    .line 55
    iput-object v1, p0, Lnet/easyconn/platform/wrc/core/WrcManager;->b:Lnet/easyconn/platform/wrc/core/WrcManager$MyHandle;

    .line 81
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/easyconn/platform/wrc/core/WrcManager;->c:Z

    .line 88
    iput-object v1, p0, Lnet/easyconn/platform/wrc/core/WrcManager;->h:Lnet/easyconn/platform/wrc/core/j;

    .line 92
    return-void
.end method

.method static synthetic a()Landroid/content/Context;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lnet/easyconn/platform/wrc/core/WrcManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private a(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 383
    :try_start_0
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 384
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 386
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 387
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 392
    :cond_0
    :goto_0
    return-object v0

    .line 389
    :catch_0
    move-exception v0

    .line 390
    const-string v0, ""

    goto :goto_0
.end method

.method static synthetic a(Lnet/easyconn/platform/wrc/core/WrcManager;)Lnet/easyconn/platform/wrc/core/j;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/WrcManager;->h:Lnet/easyconn/platform/wrc/core/j;

    return-object v0
.end method

.method static synthetic a(Lnet/easyconn/platform/wrc/core/WrcManager;Lnet/easyconn/platform/wrc/core/j;)Lnet/easyconn/platform/wrc/core/j;
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lnet/easyconn/platform/wrc/core/WrcManager;->h:Lnet/easyconn/platform/wrc/core/j;

    return-object p1
.end method

.method private a(I)V
    .locals 1

    .prologue
    .line 493
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/WrcManager;->b:Lnet/easyconn/platform/wrc/core/WrcManager$MyHandle;

    if-eqz v0, :cond_0

    .line 494
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/WrcManager;->b:Lnet/easyconn/platform/wrc/core/WrcManager$MyHandle;

    invoke-virtual {v0, p1}, Lnet/easyconn/platform/wrc/core/WrcManager$MyHandle;->sendEmptyMessage(I)Z

    .line 496
    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 414
    sget-object v0, Lnet/easyconn/platform/wrc/core/WrcManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lnet/easyconn/platform/wrc/core/WrcManager;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 490
    :goto_0
    return-void

    .line 418
    :cond_0
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/WrcManager;->a:Lnet/easyconn/platform/wrc/core/WrcManager$NetWorkChangeReceiver;

    if-eqz v0, :cond_1

    .line 419
    sget-object v0, Lnet/easyconn/platform/wrc/core/WrcManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lnet/easyconn/platform/wrc/core/WrcManager;->a:Lnet/easyconn/platform/wrc/core/WrcManager$NetWorkChangeReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 420
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/easyconn/platform/wrc/core/WrcManager;->a:Lnet/easyconn/platform/wrc/core/WrcManager$NetWorkChangeReceiver;

    .line 423
    :cond_1
    new-instance v0, Lnet/easyconn/platform/wrc/core/WrcManager$3;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lnet/easyconn/platform/wrc/core/WrcManager$3;-><init>(Lnet/easyconn/platform/wrc/core/WrcManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    invoke-virtual {v0}, Lnet/easyconn/platform/wrc/core/WrcManager$3;->start()V

    goto :goto_0
.end method

.method static synthetic a(Lnet/easyconn/platform/wrc/core/WrcManager;I)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lnet/easyconn/platform/wrc/core/WrcManager;->a(I)V

    return-void
.end method

.method static synthetic a(Lnet/easyconn/platform/wrc/core/WrcManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3, p4}, Lnet/easyconn/platform/wrc/core/WrcManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Landroid/content/SharedPreferences;)Z
    .locals 5

    .prologue
    .line 568
    const-string v0, "checkdate"

    const-string v1, ""

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 569
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 570
    new-instance v2, Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getYear()I

    move-result v3

    invoke-virtual {v1}, Ljava/util/Date;->getMonth()I

    move-result v4

    invoke-virtual {v1}, Ljava/util/Date;->getDate()I

    move-result v1

    invoke-direct {v2, v3, v4, v1}, Ljava/util/Date;-><init>(III)V

    .line 571
    invoke-virtual {v2}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lnet/easyconn/platform/wrc/core/WrcManager;Z)Z
    .locals 0

    .prologue
    .line 29
    iput-boolean p1, p0, Lnet/easyconn/platform/wrc/core/WrcManager;->c:Z

    return p1
.end method

.method private b()V
    .locals 4

    .prologue
    .line 558
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 559
    new-instance v1, Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getYear()I

    move-result v2

    invoke-virtual {v0}, Ljava/util/Date;->getMonth()I

    move-result v3

    invoke-virtual {v0}, Ljava/util/Date;->getDate()I

    move-result v0

    invoke-direct {v1, v2, v3, v0}, Ljava/util/Date;-><init>(III)V

    .line 560
    sget-object v0, Lnet/easyconn/platform/wrc/core/WrcManager;->mContext:Landroid/content/Context;

    const-string v2, "net.easyconn.platform.wrc"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 561
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 562
    const-string v2, "checkdate"

    invoke-virtual {v1}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 563
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 564
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 565
    return-void
.end method

.method private b(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 396
    const/4 v1, 0x0

    .line 397
    if-eqz p1, :cond_1

    .line 399
    :try_start_0
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 400
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 401
    if-eqz v0, :cond_0

    .line 402
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    move v1, v0

    .line 410
    :cond_0
    return v1

    .line 406
    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method static synthetic b(Lnet/easyconn/platform/wrc/core/WrcManager;)Z
    .locals 1

    .prologue
    .line 29
    iget-boolean v0, p0, Lnet/easyconn/platform/wrc/core/WrcManager;->c:Z

    return v0
.end method

.method static synthetic c(Lnet/easyconn/platform/wrc/core/WrcManager;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lnet/easyconn/platform/wrc/core/WrcManager;->b()V

    return-void
.end method

.method static synthetic d(Lnet/easyconn/platform/wrc/core/WrcManager;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/WrcManager;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lnet/easyconn/platform/wrc/core/WrcManager;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/WrcManager;->g:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lnet/easyconn/platform/wrc/core/WrcManager;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/WrcManager;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lnet/easyconn/platform/wrc/core/WrcManager;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/WrcManager;->d:Ljava/lang/String;

    return-object v0
.end method

.method public static getInstance()Lnet/easyconn/platform/wrc/core/WrcManager;
    .locals 2

    .prologue
    .line 97
    sget-object v0, Lnet/easyconn/platform/wrc/core/WrcManager;->sInstance:Lnet/easyconn/platform/wrc/core/WrcManager;

    if-nez v0, :cond_1

    .line 98
    const-class v1, Lnet/easyconn/platform/wrc/core/WrcManager;

    monitor-enter v1

    .line 99
    :try_start_0
    sget-object v0, Lnet/easyconn/platform/wrc/core/WrcManager;->sInstance:Lnet/easyconn/platform/wrc/core/WrcManager;

    if-nez v0, :cond_0

    .line 100
    new-instance v0, Lnet/easyconn/platform/wrc/core/WrcManager;

    invoke-direct {v0}, Lnet/easyconn/platform/wrc/core/WrcManager;-><init>()V

    sput-object v0, Lnet/easyconn/platform/wrc/core/WrcManager;->sInstance:Lnet/easyconn/platform/wrc/core/WrcManager;

    .line 102
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    :cond_1
    sget-object v0, Lnet/easyconn/platform/wrc/core/WrcManager;->sInstance:Lnet/easyconn/platform/wrc/core/WrcManager;

    return-object v0

    .line 102
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public closeBluetooth()V
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/WrcManager;->h:Lnet/easyconn/platform/wrc/core/j;

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/WrcManager;->h:Lnet/easyconn/platform/wrc/core/j;

    invoke-virtual {v0}, Lnet/easyconn/platform/wrc/core/j;->d()V

    .line 175
    :cond_0
    return-void
.end method

.method public connectWrc(Lnet/easyconn/platform/wrc/core/WrcDevice;Lnet/easyconn/platform/wrc/core/WrcManager$WrcCallback;)V
    .locals 4

    .prologue
    .line 238
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/WrcManager;->b:Lnet/easyconn/platform/wrc/core/WrcManager$MyHandle;

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/WrcManager;->b:Lnet/easyconn/platform/wrc/core/WrcManager$MyHandle;

    new-instance v1, Lnet/easyconn/platform/wrc/core/WrcManager$2;

    invoke-direct {v1, p0, p1, p2}, Lnet/easyconn/platform/wrc/core/WrcManager$2;-><init>(Lnet/easyconn/platform/wrc/core/WrcManager;Lnet/easyconn/platform/wrc/core/WrcDevice;Lnet/easyconn/platform/wrc/core/WrcManager$WrcCallback;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lnet/easyconn/platform/wrc/core/WrcManager$MyHandle;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 252
    :cond_0
    return-void
.end method

.method public destroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 199
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/WrcManager;->a:Lnet/easyconn/platform/wrc/core/WrcManager$NetWorkChangeReceiver;

    if-eqz v0, :cond_0

    .line 200
    sget-object v0, Lnet/easyconn/platform/wrc/core/WrcManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lnet/easyconn/platform/wrc/core/WrcManager;->a:Lnet/easyconn/platform/wrc/core/WrcManager$NetWorkChangeReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 201
    iput-object v2, p0, Lnet/easyconn/platform/wrc/core/WrcManager;->a:Lnet/easyconn/platform/wrc/core/WrcManager$NetWorkChangeReceiver;

    .line 204
    :cond_0
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/WrcManager;->b:Lnet/easyconn/platform/wrc/core/WrcManager$MyHandle;

    if-eqz v0, :cond_1

    .line 205
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/WrcManager;->b:Lnet/easyconn/platform/wrc/core/WrcManager$MyHandle;

    invoke-virtual {v0, v2}, Lnet/easyconn/platform/wrc/core/WrcManager$MyHandle;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 206
    iput-object v2, p0, Lnet/easyconn/platform/wrc/core/WrcManager;->b:Lnet/easyconn/platform/wrc/core/WrcManager$MyHandle;

    .line 209
    :cond_1
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/WrcManager;->h:Lnet/easyconn/platform/wrc/core/j;

    if-eqz v0, :cond_2

    .line 210
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/WrcManager;->h:Lnet/easyconn/platform/wrc/core/j;

    invoke-virtual {v0}, Lnet/easyconn/platform/wrc/core/j;->i()V

    .line 211
    iput-object v2, p0, Lnet/easyconn/platform/wrc/core/WrcManager;->h:Lnet/easyconn/platform/wrc/core/j;

    .line 214
    :cond_2
    sput-object v2, Lnet/easyconn/platform/wrc/core/WrcManager;->mContext:Landroid/content/Context;

    .line 215
    sput-object v2, Lnet/easyconn/platform/wrc/core/WrcManager;->sInstance:Lnet/easyconn/platform/wrc/core/WrcManager;

    .line 216
    return-void
.end method

.method public disconnect()V
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/WrcManager;->h:Lnet/easyconn/platform/wrc/core/j;

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/WrcManager;->h:Lnet/easyconn/platform/wrc/core/j;

    invoke-virtual {v0}, Lnet/easyconn/platform/wrc/core/j;->h()V

    .line 195
    :cond_0
    return-void
.end method

.method public init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 108
    if-eqz p1, :cond_2

    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/WrcManager;->b:Lnet/easyconn/platform/wrc/core/WrcManager$MyHandle;

    if-nez v0, :cond_2

    .line 109
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/WrcManager;->b:Lnet/easyconn/platform/wrc/core/WrcManager$MyHandle;

    if-nez v0, :cond_1

    .line 110
    const-class v1, Lnet/easyconn/platform/wrc/core/WrcManager;

    monitor-enter v1

    .line 111
    :try_start_0
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/WrcManager;->b:Lnet/easyconn/platform/wrc/core/WrcManager$MyHandle;

    if-nez v0, :cond_0

    .line 112
    new-instance v0, Lnet/easyconn/platform/wrc/core/WrcManager$MyHandle;

    invoke-direct {v0, p1}, Lnet/easyconn/platform/wrc/core/WrcManager$MyHandle;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lnet/easyconn/platform/wrc/core/WrcManager;->b:Lnet/easyconn/platform/wrc/core/WrcManager$MyHandle;

    .line 114
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 118
    const/16 v0, 0x2329

    invoke-direct {p0, v0}, Lnet/easyconn/platform/wrc/core/WrcManager;->a(I)V

    .line 149
    :cond_2
    :goto_0
    return-void

    .line 114
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 122
    :cond_3
    const-string v0, "net.easyconn.platform.wrc"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 123
    sput-object p1, Lnet/easyconn/platform/wrc/core/WrcManager;->mContext:Landroid/content/Context;

    .line 125
    invoke-direct {p0, v0}, Lnet/easyconn/platform/wrc/core/WrcManager;->a(Landroid/content/SharedPreferences;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 126
    invoke-direct {p0, p1}, Lnet/easyconn/platform/wrc/core/WrcManager;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lnet/easyconn/platform/wrc/core/WrcManager;->d:Ljava/lang/String;

    .line 127
    const-string v1, "wrc.key.value"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lnet/easyconn/platform/wrc/core/WrcManager;->c:Z

    .line 128
    const-string v1, "wrc.key.device"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/easyconn/platform/wrc/core/WrcManager;->e:Ljava/lang/String;

    .line 129
    iput-object p2, p0, Lnet/easyconn/platform/wrc/core/WrcManager;->f:Ljava/lang/String;

    .line 130
    iput-object p3, p0, Lnet/easyconn/platform/wrc/core/WrcManager;->g:Ljava/lang/String;

    .line 132
    new-instance v0, Lnet/easyconn/platform/wrc/core/WrcManager$NetWorkChangeReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lnet/easyconn/platform/wrc/core/WrcManager$NetWorkChangeReceiver;-><init>(Lnet/easyconn/platform/wrc/core/WrcManager;Lnet/easyconn/platform/wrc/core/WrcManager$1;)V

    iput-object v0, p0, Lnet/easyconn/platform/wrc/core/WrcManager;->a:Lnet/easyconn/platform/wrc/core/WrcManager$NetWorkChangeReceiver;

    .line 133
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 134
    sget-object v1, Lnet/easyconn/platform/wrc/core/WrcManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lnet/easyconn/platform/wrc/core/WrcManager;->a:Lnet/easyconn/platform/wrc/core/WrcManager$NetWorkChangeReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 136
    iget-boolean v0, p0, Lnet/easyconn/platform/wrc/core/WrcManager;->c:Z

    if-nez v0, :cond_5

    .line 137
    sget-object v0, Lnet/easyconn/platform/wrc/core/WrcManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lnet/easyconn/platform/wrc/core/WrcManager;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 138
    invoke-direct {p0, v3}, Lnet/easyconn/platform/wrc/core/WrcManager;->a(I)V

    goto :goto_0

    .line 140
    :cond_4
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lnet/easyconn/platform/wrc/core/WrcManager;->a(I)V

    goto :goto_0

    .line 146
    :cond_5
    invoke-static {}, Lnet/easyconn/platform/wrc/core/j;->a()Lnet/easyconn/platform/wrc/core/j;

    move-result-object v0

    iput-object v0, p0, Lnet/easyconn/platform/wrc/core/WrcManager;->h:Lnet/easyconn/platform/wrc/core/j;

    .line 147
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/WrcManager;->h:Lnet/easyconn/platform/wrc/core/j;

    invoke-virtual {v0, p1, p2, p3}, Lnet/easyconn/platform/wrc/core/j;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isBluetoothEnabled()Z
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/WrcManager;->h:Lnet/easyconn/platform/wrc/core/j;

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/WrcManager;->h:Lnet/easyconn/platform/wrc/core/j;

    invoke-virtual {v0}, Lnet/easyconn/platform/wrc/core/j;->b()Z

    move-result v0

    .line 162
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isConnectWrc()Z
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/WrcManager;->h:Lnet/easyconn/platform/wrc/core/j;

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/WrcManager;->h:Lnet/easyconn/platform/wrc/core/j;

    invoke-virtual {v0}, Lnet/easyconn/platform/wrc/core/j;->f()Z

    move-result v0

    .line 181
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOnConnecting()Z
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/WrcManager;->h:Lnet/easyconn/platform/wrc/core/j;

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/WrcManager;->h:Lnet/easyconn/platform/wrc/core/j;

    invoke-virtual {v0}, Lnet/easyconn/platform/wrc/core/j;->g()Z

    move-result v0

    .line 188
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isWrcSupport(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/WrcManager;->h:Lnet/easyconn/platform/wrc/core/j;

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/WrcManager;->h:Lnet/easyconn/platform/wrc/core/j;

    invoke-virtual {v0, p1}, Lnet/easyconn/platform/wrc/core/j;->a(Landroid/content/Context;)Z

    move-result v0

    .line 155
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public openBluetooth()V
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/WrcManager;->h:Lnet/easyconn/platform/wrc/core/j;

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/WrcManager;->h:Lnet/easyconn/platform/wrc/core/j;

    invoke-virtual {v0}, Lnet/easyconn/platform/wrc/core/j;->c()V

    .line 169
    :cond_0
    return-void
.end method

.method public startWrcOta(Ljava/lang/String;Lnet/easyconn/platform/wrc/core/WrcManager$OtaCallback;)V
    .locals 1

    .prologue
    .line 255
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    iget-boolean v0, p0, Lnet/easyconn/platform/wrc/core/WrcManager;->c:Z

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/WrcManager;->h:Lnet/easyconn/platform/wrc/core/j;

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/WrcManager;->h:Lnet/easyconn/platform/wrc/core/j;

    invoke-virtual {v0, p1, p2}, Lnet/easyconn/platform/wrc/core/j;->a(Ljava/lang/String;Lnet/easyconn/platform/wrc/core/WrcManager$OtaCallback;)V

    .line 260
    :cond_0
    return-void
.end method

.method public startWrcScan(Lnet/easyconn/platform/wrc/core/WrcManager$ScanCallback;)V
    .locals 4

    .prologue
    .line 219
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/WrcManager;->b:Lnet/easyconn/platform/wrc/core/WrcManager$MyHandle;

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/WrcManager;->b:Lnet/easyconn/platform/wrc/core/WrcManager$MyHandle;

    new-instance v1, Lnet/easyconn/platform/wrc/core/WrcManager$1;

    invoke-direct {v1, p0, p1}, Lnet/easyconn/platform/wrc/core/WrcManager$1;-><init>(Lnet/easyconn/platform/wrc/core/WrcManager;Lnet/easyconn/platform/wrc/core/WrcManager$ScanCallback;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lnet/easyconn/platform/wrc/core/WrcManager$MyHandle;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 229
    :cond_0
    return-void
.end method

.method public stopWrcScan()V
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/WrcManager;->h:Lnet/easyconn/platform/wrc/core/j;

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/WrcManager;->h:Lnet/easyconn/platform/wrc/core/j;

    invoke-virtual {v0}, Lnet/easyconn/platform/wrc/core/j;->e()V

    .line 235
    :cond_0
    return-void
.end method
