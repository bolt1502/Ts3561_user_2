.class public final enum Lcom/txznet/sdk/TXZResourceManager$RecordWin$RecordWinOperateListener$ListType;
.super Ljava/lang/Enum;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/txznet/sdk/TXZResourceManager$RecordWin$RecordWinOperateListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ListType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/txznet/sdk/TXZResourceManager$RecordWin$RecordWinOperateListener$ListType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum AudioList:Lcom/txznet/sdk/TXZResourceManager$RecordWin$RecordWinOperateListener$ListType;

.field public static final enum CommList:Lcom/txznet/sdk/TXZResourceManager$RecordWin$RecordWinOperateListener$ListType;

.field public static final enum ContactList:Lcom/txznet/sdk/TXZResourceManager$RecordWin$RecordWinOperateListener$ListType;

.field public static final enum PoiList:Lcom/txznet/sdk/TXZResourceManager$RecordWin$RecordWinOperateListener$ListType;

.field private static final synthetic T:[Lcom/txznet/sdk/TXZResourceManager$RecordWin$RecordWinOperateListener$ListType;

.field public static final enum WxContactList:Lcom/txznet/sdk/TXZResourceManager$RecordWin$RecordWinOperateListener$ListType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 303
    new-instance v0, Lcom/txznet/sdk/TXZResourceManager$RecordWin$RecordWinOperateListener$ListType;

    const-string v1, "ContactList"

    invoke-direct {v0, v1, v2}, Lcom/txznet/sdk/TXZResourceManager$RecordWin$RecordWinOperateListener$ListType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/txznet/sdk/TXZResourceManager$RecordWin$RecordWinOperateListener$ListType;->ContactList:Lcom/txznet/sdk/TXZResourceManager$RecordWin$RecordWinOperateListener$ListType;

    .line 304
    new-instance v0, Lcom/txznet/sdk/TXZResourceManager$RecordWin$RecordWinOperateListener$ListType;

    const-string v1, "PoiList"

    invoke-direct {v0, v1, v3}, Lcom/txznet/sdk/TXZResourceManager$RecordWin$RecordWinOperateListener$ListType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/txznet/sdk/TXZResourceManager$RecordWin$RecordWinOperateListener$ListType;->PoiList:Lcom/txznet/sdk/TXZResourceManager$RecordWin$RecordWinOperateListener$ListType;

    .line 305
    new-instance v0, Lcom/txznet/sdk/TXZResourceManager$RecordWin$RecordWinOperateListener$ListType;

    const-string v1, "WxContactList"

    invoke-direct {v0, v1, v4}, Lcom/txznet/sdk/TXZResourceManager$RecordWin$RecordWinOperateListener$ListType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/txznet/sdk/TXZResourceManager$RecordWin$RecordWinOperateListener$ListType;->WxContactList:Lcom/txznet/sdk/TXZResourceManager$RecordWin$RecordWinOperateListener$ListType;

    .line 306
    new-instance v0, Lcom/txznet/sdk/TXZResourceManager$RecordWin$RecordWinOperateListener$ListType;

    const-string v1, "AudioList"

    invoke-direct {v0, v1, v5}, Lcom/txznet/sdk/TXZResourceManager$RecordWin$RecordWinOperateListener$ListType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/txznet/sdk/TXZResourceManager$RecordWin$RecordWinOperateListener$ListType;->AudioList:Lcom/txznet/sdk/TXZResourceManager$RecordWin$RecordWinOperateListener$ListType;

    .line 307
    new-instance v0, Lcom/txznet/sdk/TXZResourceManager$RecordWin$RecordWinOperateListener$ListType;

    const-string v1, "CommList"

    invoke-direct {v0, v1, v6}, Lcom/txznet/sdk/TXZResourceManager$RecordWin$RecordWinOperateListener$ListType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/txznet/sdk/TXZResourceManager$RecordWin$RecordWinOperateListener$ListType;->CommList:Lcom/txznet/sdk/TXZResourceManager$RecordWin$RecordWinOperateListener$ListType;

    .line 302
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/txznet/sdk/TXZResourceManager$RecordWin$RecordWinOperateListener$ListType;

    sget-object v1, Lcom/txznet/sdk/TXZResourceManager$RecordWin$RecordWinOperateListener$ListType;->ContactList:Lcom/txznet/sdk/TXZResourceManager$RecordWin$RecordWinOperateListener$ListType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/txznet/sdk/TXZResourceManager$RecordWin$RecordWinOperateListener$ListType;->PoiList:Lcom/txznet/sdk/TXZResourceManager$RecordWin$RecordWinOperateListener$ListType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/txznet/sdk/TXZResourceManager$RecordWin$RecordWinOperateListener$ListType;->WxContactList:Lcom/txznet/sdk/TXZResourceManager$RecordWin$RecordWinOperateListener$ListType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/txznet/sdk/TXZResourceManager$RecordWin$RecordWinOperateListener$ListType;->AudioList:Lcom/txznet/sdk/TXZResourceManager$RecordWin$RecordWinOperateListener$ListType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/txznet/sdk/TXZResourceManager$RecordWin$RecordWinOperateListener$ListType;->CommList:Lcom/txznet/sdk/TXZResourceManager$RecordWin$RecordWinOperateListener$ListType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/txznet/sdk/TXZResourceManager$RecordWin$RecordWinOperateListener$ListType;->T:[Lcom/txznet/sdk/TXZResourceManager$RecordWin$RecordWinOperateListener$ListType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 302
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/txznet/sdk/TXZResourceManager$RecordWin$RecordWinOperateListener$ListType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 302
    const-class v0, Lcom/txznet/sdk/TXZResourceManager$RecordWin$RecordWinOperateListener$ListType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/txznet/sdk/TXZResourceManager$RecordWin$RecordWinOperateListener$ListType;

    return-object v0
.end method

.method public static values()[Lcom/txznet/sdk/TXZResourceManager$RecordWin$RecordWinOperateListener$ListType;
    .locals 1

    .prologue
    .line 302
    sget-object v0, Lcom/txznet/sdk/TXZResourceManager$RecordWin$RecordWinOperateListener$ListType;->T:[Lcom/txznet/sdk/TXZResourceManager$RecordWin$RecordWinOperateListener$ListType;

    invoke-virtual {v0}, [Lcom/txznet/sdk/TXZResourceManager$RecordWin$RecordWinOperateListener$ListType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/txznet/sdk/TXZResourceManager$RecordWin$RecordWinOperateListener$ListType;

    return-object v0
.end method
