.class public Lnet/easyconn/platform/wrc/core/h;
.super Ljava/lang/Object;
.source "WrcConnectHelper.java"

# interfaces
.implements Lnet/easyconn/platform/wrc/core/b/a;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# static fields
.field private static final g:Ljava/lang/String;

.field private static h:Lnet/easyconn/platform/wrc/core/h;


# instance fields
.field private i:Landroid/bluetooth/BluetoothGatt;

.field private j:Lnet/easyconn/platform/wrc/core/a/a;

.field private k:Landroid/os/Handler;

.field private l:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Landroid/bluetooth/BluetoothGattCharacteristic;",
            ">;"
        }
    .end annotation
.end field

.field private m:Landroid/bluetooth/BluetoothGattCallback;

.field private n:Landroid/bluetooth/BluetoothGattCharacteristic;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lnet/easyconn/platform/wrc/core/h;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/easyconn/platform/wrc/core/h;->g:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Lnet/easyconn/platform/wrc/core/h$1;

    invoke-direct {v0, p0}, Lnet/easyconn/platform/wrc/core/h$1;-><init>(Lnet/easyconn/platform/wrc/core/h;)V

    iput-object v0, p0, Lnet/easyconn/platform/wrc/core/h;->m:Landroid/bluetooth/BluetoothGattCallback;

    .line 34
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lnet/easyconn/platform/wrc/core/h;->k:Landroid/os/Handler;

    .line 35
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lnet/easyconn/platform/wrc/core/h;->l:Ljava/util/LinkedList;

    .line 36
    return-void
.end method

.method static synthetic a(Lnet/easyconn/platform/wrc/core/h;Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothGatt;
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lnet/easyconn/platform/wrc/core/h;->i:Landroid/bluetooth/BluetoothGatt;

    return-object p1
.end method

.method static synthetic a(Lnet/easyconn/platform/wrc/core/h;)Lnet/easyconn/platform/wrc/core/a/a;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/h;->j:Lnet/easyconn/platform/wrc/core/a/a;

    return-object v0
.end method

.method static a()Lnet/easyconn/platform/wrc/core/h;
    .locals 2

    .prologue
    .line 41
    sget-object v0, Lnet/easyconn/platform/wrc/core/h;->h:Lnet/easyconn/platform/wrc/core/h;

    if-nez v0, :cond_1

    .line 42
    const-class v1, Lnet/easyconn/platform/wrc/core/h;

    monitor-enter v1

    .line 43
    :try_start_0
    sget-object v0, Lnet/easyconn/platform/wrc/core/h;->h:Lnet/easyconn/platform/wrc/core/h;

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Lnet/easyconn/platform/wrc/core/h;

    invoke-direct {v0}, Lnet/easyconn/platform/wrc/core/h;-><init>()V

    sput-object v0, Lnet/easyconn/platform/wrc/core/h;->h:Lnet/easyconn/platform/wrc/core/h;

    .line 46
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    :cond_1
    sget-object v0, Lnet/easyconn/platform/wrc/core/h;->h:Lnet/easyconn/platform/wrc/core/h;

    return-object v0

    .line 46
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private a(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothGattService;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 212
    .line 216
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v1

    move-object v3, v1

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothGattService;

    .line 217
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v5

    .line 218
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattService;->getCharacteristics()Ljava/util/List;

    move-result-object v0

    .line 219
    sget-object v6, Lnet/easyconn/platform/wrc/core/h;->a:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 220
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 221
    sget-object v6, Lnet/easyconn/platform/wrc/core/h;->b:Ljava/util/List;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 222
    iput-object v0, p0, Lnet/easyconn/platform/wrc/core/h;->n:Landroid/bluetooth/BluetoothGattCharacteristic;

    goto :goto_0

    .line 225
    :cond_2
    sget-object v6, Lnet/easyconn/platform/wrc/core/h;->c:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 226
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 227
    sget-object v6, Lnet/easyconn/platform/wrc/core/h;->d:Ljava/util/List;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    move-object v8, v1

    move-object v1, v2

    move-object v2, v0

    move-object v0, v8

    :goto_2
    move-object v3, v2

    move-object v2, v1

    move-object v1, v0

    .line 234
    goto :goto_1

    .line 229
    :cond_3
    sget-object v6, Lnet/easyconn/platform/wrc/core/h;->e:Ljava/util/List;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    move-object v2, v3

    move-object v8, v0

    move-object v0, v1

    move-object v1, v8

    .line 230
    goto :goto_2

    .line 231
    :cond_4
    sget-object v6, Lnet/easyconn/platform/wrc/core/h;->f:Ljava/util/List;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    move-object v1, v2

    move-object v2, v3

    .line 232
    goto :goto_2

    .line 238
    :cond_5
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/h;->l:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 240
    if-eqz v3, :cond_6

    .line 241
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/h;->l:Ljava/util/LinkedList;

    invoke-virtual {v0, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 243
    :cond_6
    if-eqz v2, :cond_7

    .line 244
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/h;->l:Ljava/util/LinkedList;

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 246
    :cond_7
    if-eqz v1, :cond_8

    .line 247
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/h;->l:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 249
    :cond_8
    return-void

    :cond_9
    move-object v0, v1

    move-object v1, v2

    move-object v2, v3

    goto :goto_2
.end method

.method static synthetic a(Lnet/easyconn/platform/wrc/core/h;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lnet/easyconn/platform/wrc/core/h;->a(Ljava/util/List;)V

    return-void
.end method

.method static synthetic b(Lnet/easyconn/platform/wrc/core/h;)Landroid/bluetooth/BluetoothGatt;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/h;->i:Landroid/bluetooth/BluetoothGatt;

    return-object v0
.end method

.method static synthetic c(Lnet/easyconn/platform/wrc/core/h;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/h;->k:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic d(Lnet/easyconn/platform/wrc/core/h;)Landroid/bluetooth/BluetoothGattCharacteristic;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/h;->n:Landroid/bluetooth/BluetoothGattCharacteristic;

    return-object v0
.end method

.method private d()V
    .locals 4

    .prologue
    .line 267
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/h;->l:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 279
    :goto_0
    return-void

    .line 271
    :cond_0
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/h;->k:Landroid/os/Handler;

    new-instance v1, Lnet/easyconn/platform/wrc/core/h$3;

    invoke-direct {v1, p0}, Lnet/easyconn/platform/wrc/core/h$3;-><init>(Lnet/easyconn/platform/wrc/core/h;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private e()V
    .locals 3

    .prologue
    .line 283
    :try_start_0
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/h;->i:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "refresh"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 284
    if-eqz v0, :cond_0

    .line 285
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 286
    iget-object v1, p0, Lnet/easyconn/platform/wrc/core/h;->i:Landroid/bluetooth/BluetoothGatt;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    .line 295
    :cond_0
    :goto_0
    return-void

    .line 288
    :catch_0
    move-exception v0

    .line 289
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    .line 290
    :catch_1
    move-exception v0

    .line 291
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    .line 292
    :catch_2
    move-exception v0

    .line 293
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic e(Lnet/easyconn/platform/wrc/core/h;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lnet/easyconn/platform/wrc/core/h;->d()V

    return-void
.end method

.method static synthetic f(Lnet/easyconn/platform/wrc/core/h;)Ljava/util/LinkedList;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/h;->l:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic g(Lnet/easyconn/platform/wrc/core/h;)Landroid/bluetooth/BluetoothGattCallback;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/h;->m:Landroid/bluetooth/BluetoothGattCallback;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized a(Landroid/content/Context;Lnet/easyconn/platform/wrc/core/WrcDevice;Lnet/easyconn/platform/wrc/core/a/a;)V
    .locals 3

    .prologue
    .line 158
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lnet/easyconn/platform/wrc/core/l;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 159
    iput-object p3, p0, Lnet/easyconn/platform/wrc/core/h;->j:Lnet/easyconn/platform/wrc/core/a/a;

    .line 161
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 162
    invoke-virtual {p2}, Lnet/easyconn/platform/wrc/core/WrcDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 163
    if-nez v0, :cond_1

    .line 164
    if-eqz p3, :cond_0

    .line 165
    const/4 v0, 0x3

    invoke-interface {p3, v0}, Lnet/easyconn/platform/wrc/core/a/a;->a(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 170
    :cond_1
    :try_start_1
    iget-object v1, p0, Lnet/easyconn/platform/wrc/core/h;->k:Landroid/os/Handler;

    new-instance v2, Lnet/easyconn/platform/wrc/core/h$2;

    invoke-direct {v2, p0, v0, p1}, Lnet/easyconn/platform/wrc/core/h$2;-><init>(Lnet/easyconn/platform/wrc/core/h;Landroid/bluetooth/BluetoothDevice;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 158
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 180
    :cond_2
    if-eqz p3, :cond_0

    .line 181
    const/4 v0, 0x2

    :try_start_2
    invoke-interface {p3, v0}, Lnet/easyconn/platform/wrc/core/a/a;->b(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public a(Z)Z
    .locals 4

    .prologue
    .line 253
    :try_start_0
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/h;->i:Landroid/bluetooth/BluetoothGatt;

    iget-object v1, p0, Lnet/easyconn/platform/wrc/core/h;->n:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v0, v1, p1}, Landroid/bluetooth/BluetoothGatt;->setCharacteristicNotification(Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z

    move-result v1

    .line 254
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/h;->n:Landroid/bluetooth/BluetoothGattCharacteristic;

    const-string v2, "00002902-0000-1000-8000-00805f9b34fb"

    invoke-static {v2}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getDescriptor(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattDescriptor;

    move-result-object v2

    .line 255
    if-eqz p1, :cond_0

    sget-object v0, Landroid/bluetooth/BluetoothGattDescriptor;->ENABLE_NOTIFICATION_VALUE:[B

    :goto_0
    invoke-virtual {v2, v0}, Landroid/bluetooth/BluetoothGattDescriptor;->setValue([B)Z

    move-result v0

    .line 256
    iget-object v3, p0, Lnet/easyconn/platform/wrc/core/h;->i:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v3, v2}, Landroid/bluetooth/BluetoothGatt;->writeDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Z

    move-result v2

    .line 257
    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 258
    const/4 v0, 0x1

    .line 263
    :goto_1
    return v0

    .line 255
    :cond_0
    sget-object v0, Landroid/bluetooth/BluetoothGattDescriptor;->DISABLE_NOTIFICATION_VALUE:[B
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 260
    :catch_0
    move-exception v0

    .line 261
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 263
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public b()V
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/h;->i:Landroid/bluetooth/BluetoothGatt;

    if-eqz v0, :cond_0

    invoke-static {}, Lnet/easyconn/platform/wrc/core/l;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/h;->i:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->disconnect()V

    .line 190
    invoke-direct {p0}, Lnet/easyconn/platform/wrc/core/h;->e()V

    .line 192
    :cond_0
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 196
    invoke-virtual {p0}, Lnet/easyconn/platform/wrc/core/h;->b()V

    .line 197
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/h;->i:Landroid/bluetooth/BluetoothGatt;

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/h;->i:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->close()V

    .line 200
    :cond_0
    iput-object v1, p0, Lnet/easyconn/platform/wrc/core/h;->j:Lnet/easyconn/platform/wrc/core/a/a;

    .line 201
    iput-object v1, p0, Lnet/easyconn/platform/wrc/core/h;->i:Landroid/bluetooth/BluetoothGatt;

    .line 202
    iput-object v1, p0, Lnet/easyconn/platform/wrc/core/h;->m:Landroid/bluetooth/BluetoothGattCallback;

    .line 203
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/h;->k:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 204
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/h;->k:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 206
    :cond_1
    sput-object v1, Lnet/easyconn/platform/wrc/core/h;->h:Lnet/easyconn/platform/wrc/core/h;

    .line 207
    return-void
.end method
