.class public Lcom/ts/MainUI/AuthServer;
.super Ljava/lang/Object;
.source "AuthServer.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AuthServer"

.field private static mAuthServer:Lcom/ts/MainUI/AuthServer;


# instance fields
.field DataFormat:[B

.field EnvATC:Lcom/autochips/storage/EnvironmentATC;

.field Liscense:Ljava/lang/String;

.field LisencePath:Ljava/lang/String;

.field private final locationListener2:Landroid/location/LocationListener;

.field public m_GetID:Lcom/ts/MainUI/GetID;

.field mcontext:Landroid/content/Context;

.field nGetIdOk:I

.field nSendXy:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    sput-object v0, Lcom/ts/MainUI/AuthServer;->mAuthServer:Lcom/ts/MainUI/AuthServer;

    .line 20
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-string v0, "error"

    iput-object v0, p0, Lcom/ts/MainUI/AuthServer;->Liscense:Ljava/lang/String;

    .line 22
    iput v1, p0, Lcom/ts/MainUI/AuthServer;->nGetIdOk:I

    .line 23
    iput v1, p0, Lcom/ts/MainUI/AuthServer;->nSendXy:I

    .line 25
    invoke-static {}, Lcom/ts/MainUI/GetID;->getInstance()Lcom/ts/MainUI/GetID;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/MainUI/AuthServer;->m_GetID:Lcom/ts/MainUI/GetID;

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ts/MainUI/AuthServer;->EnvATC:Lcom/autochips/storage/EnvironmentATC;

    .line 201
    new-instance v0, Lcom/ts/MainUI/AuthServer$1;

    invoke-direct {v0, p0}, Lcom/ts/MainUI/AuthServer$1;-><init>(Lcom/ts/MainUI/AuthServer;)V

    iput-object v0, p0, Lcom/ts/MainUI/AuthServer;->locationListener2:Landroid/location/LocationListener;

    .line 17
    return-void
.end method

.method public static GetInstance()Lcom/ts/MainUI/AuthServer;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/ts/MainUI/AuthServer;->mAuthServer:Lcom/ts/MainUI/AuthServer;

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Lcom/ts/MainUI/AuthServer;

    invoke-direct {v0}, Lcom/ts/MainUI/AuthServer;-><init>()V

    sput-object v0, Lcom/ts/MainUI/AuthServer;->mAuthServer:Lcom/ts/MainUI/AuthServer;

    .line 44
    :cond_0
    sget-object v0, Lcom/ts/MainUI/AuthServer;->mAuthServer:Lcom/ts/MainUI/AuthServer;

    return-object v0
.end method


# virtual methods
.method public DestroyID()V
    .locals 4

    .prologue
    const/16 v3, 0x20

    .line 134
    new-array v0, v3, [B

    .line 135
    .local v0, "DataFormat2":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v3, :cond_0

    .line 139
    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/yyw/ts70xhw/Mcu;->SetXYZ([BI)I

    .line 140
    const/4 v2, 0x0

    const/16 v3, 0x99

    invoke-static {v2, v3}, Lcom/yyw/ts70xhw/Mcu;->SetXYZ([BI)I

    .line 141
    return-void

    .line 137
    :cond_0
    const/4 v2, -0x1

    aput-byte v2, v0, v1

    .line 135
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public GetMountedStorage()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 29
    const-string v0, "AuthServer"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "EnvATC =="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ts/MainUI/AuthServer;->EnvATC:Lcom/autochips/storage/EnvironmentATC;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    iget-object v0, p0, Lcom/ts/MainUI/AuthServer;->EnvATC:Lcom/autochips/storage/EnvironmentATC;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Lcom/autochips/storage/EnvironmentATC;

    iget-object v1, p0, Lcom/ts/MainUI/AuthServer;->mcontext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/autochips/storage/EnvironmentATC;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ts/MainUI/AuthServer;->EnvATC:Lcom/autochips/storage/EnvironmentATC;

    .line 35
    :cond_0
    iget-object v0, p0, Lcom/ts/MainUI/AuthServer;->EnvATC:Lcom/autochips/storage/EnvironmentATC;

    invoke-virtual {v0}, Lcom/autochips/storage/EnvironmentATC;->getStorageMountedPaths()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public GetnID()I
    .locals 2

    .prologue
    .line 123
    const/4 v0, 0x0

    .line 124
    .local v0, "nTEMP":I
    iget v1, p0, Lcom/ts/MainUI/AuthServer;->nGetIdOk:I

    if-lez v1, :cond_0

    .line 126
    iget v0, p0, Lcom/ts/MainUI/AuthServer;->nGetIdOk:I

    .line 127
    const/4 v1, 0x0

    iput v1, p0, Lcom/ts/MainUI/AuthServer;->nGetIdOk:I

    .line 129
    :cond_0
    return v0
.end method

.method public GettheLicense()Z
    .locals 6

    .prologue
    .line 70
    const/4 v0, 0x0

    .line 71
    .local v0, "LicStr":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/ts/MainUI/AuthServer;->GetMountedStorage()[Ljava/lang/String;

    move-result-object v2

    .line 72
    .local v2, "mCtouchPath":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v2

    if-lt v1, v3, :cond_0

    .line 85
    const-string v3, "AuthServer"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " GettheLicense = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    if-nez v0, :cond_2

    .line 88
    const/4 v3, 0x0

    .line 93
    :goto_1
    return v3

    .line 74
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    aget-object v4, v2, v1

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "License.dat"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/ts/MainUI/TsFile;->fileIsExists(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 77
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    aget-object v4, v2, v1

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "License.dat"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/ts/MainUI/TsFile;->readFileSdcardFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 78
    aget-object v3, v2, v1

    iput-object v3, p0, Lcom/ts/MainUI/AuthServer;->LisencePath:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 92
    :cond_2
    iput-object v0, p0, Lcom/ts/MainUI/AuthServer;->Liscense:Ljava/lang/String;

    .line 93
    const/4 v3, 0x1

    goto :goto_1

    .line 79
    :catch_0
    move-exception v3

    goto :goto_2
.end method

.method public IsAuthOk()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 49
    const/16 v1, 0x20

    new-array v1, v1, [B

    invoke-static {v1}, Lcom/yyw/ts70xhw/Mcu;->GetXYZ([B)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public IsNetOk(Landroid/content/Context;)Z
    .locals 7
    .param p1, "ct"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 54
    const-string v5, "connectivity"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 55
    .local v0, "con":Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v2

    .line 56
    .local v2, "wifi":Z
    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v1

    .line 57
    .local v1, "internet":Z
    or-int v5, v2, v1

    if-eqz v5, :cond_0

    .line 58
    const-string v4, "AuthServer"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, " wifi = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    const-string v4, "AuthServer"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, " internet = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    :goto_0
    return v3

    .line 62
    :cond_0
    const-string v3, "AuthServer"

    const-string v5, " IsNetOk = false"

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 63
    goto :goto_0
.end method

.method public SetnID(I)V
    .locals 0
    .param p1, "nData"    # I

    .prologue
    .line 145
    iput p1, p0, Lcom/ts/MainUI/AuthServer;->nGetIdOk:I

    .line 146
    return-void
.end method

.method public UpLoadTheLocation(Landroid/content/Context;)V
    .locals 8
    .param p1, "ct"    # Landroid/content/Context;

    .prologue
    .line 253
    const/4 v2, 0x0

    iput v2, p0, Lcom/ts/MainUI/AuthServer;->nSendXy:I

    .line 254
    iput-object p1, p0, Lcom/ts/MainUI/AuthServer;->mcontext:Landroid/content/Context;

    .line 256
    const-string v6, "location"

    .line 258
    .local v6, "contextService":Ljava/lang/String;
    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 259
    .local v0, "loctionManager":Landroid/location/LocationManager;
    const-string v1, "gps"

    .line 260
    .local v1, "provider":Ljava/lang/String;
    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v7

    .line 261
    .local v7, "location":Landroid/location/Location;
    if-eqz v7, :cond_0

    .line 263
    const-string v2, "AuthServer"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "location.getLatitude()"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    const-string v2, "AuthServer"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "location.getAltitude()"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Landroid/location/Location;->getAltitude()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    :cond_0
    const-wide/16 v2, 0x3e8

    const/high16 v4, 0x41200000    # 10.0f

    iget-object v5, p0, Lcom/ts/MainUI/AuthServer;->locationListener2:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 281
    return-void
.end method

.method public UpdateMcu()V
    .locals 2

    .prologue
    .line 196
    const/4 v0, 0x0

    const/16 v1, 0x55

    invoke-static {v0, v1}, Lcom/yyw/ts70xhw/Mcu;->SetXYZ([BI)I

    .line 197
    return-void
.end method

.method public Updateid()V
    .locals 1

    .prologue
    .line 150
    new-instance v0, Lcom/ts/MainUI/AuthServer$2;

    invoke-direct {v0, p0}, Lcom/ts/MainUI/AuthServer$2;-><init>(Lcom/ts/MainUI/AuthServer;)V

    .line 191
    invoke-virtual {v0}, Lcom/ts/MainUI/AuthServer$2;->start()V

    .line 192
    return-void
.end method

.method nFileWirte(Ljava/lang/String;)I
    .locals 5
    .param p1, "MyStr"    # Ljava/lang/String;

    .prologue
    .line 101
    const-string v2, "AuthServer"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " nFileWirte = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    invoke-virtual {p0}, Lcom/ts/MainUI/AuthServer;->GetMountedStorage()[Ljava/lang/String;

    move-result-object v1

    .line 103
    .local v1, "mCtouchPath":[Ljava/lang/String;
    const-string v2, "AuthServer"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " mCtouchPath.length = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-lt v0, v2, :cond_0

    .line 118
    const/4 v2, 0x1

    return v2

    .line 106
    :cond_0
    const-string v2, "AuthServer"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " mCtouchPath  "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v1, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "License.dat"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    new-instance v2, Ljava/lang/StringBuilder;

    aget-object v3, v1, v0

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "License.dat"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ts/MainUI/TsFile;->fileIsExists(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 109
    const-string v2, "AuthServer"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " nFileWirte  "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v1, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "License.dat"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    aget-object v3, v1, v0

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "License.dat"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/ts/MainUI/TsFile;->writeFileSdcardFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 112
    :catch_0
    move-exception v2

    goto :goto_1
.end method
