.class Lcom/ts/MainUI/AuthServer$1$1;
.super Ljava/lang/Thread;
.source "AuthServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ts/MainUI/AuthServer$1;->onLocationChanged(Landroid/location/Location;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ts/MainUI/AuthServer$1;

.field private final synthetic val$x:I

.field private final synthetic val$y:I


# direct methods
.method constructor <init>(Lcom/ts/MainUI/AuthServer$1;II)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ts/MainUI/AuthServer$1$1;->this$1:Lcom/ts/MainUI/AuthServer$1;

    iput p2, p0, Lcom/ts/MainUI/AuthServer$1$1;->val$x:I

    iput p3, p0, Lcom/ts/MainUI/AuthServer$1$1;->val$y:I

    .line 214
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 217
    const/16 v1, 0x20

    new-array v0, v1, [B

    .line 218
    .local v0, "id":[B
    invoke-static {v0}, Lcom/yyw/ts70xhw/Mcu;->GetXYZ([B)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 220
    invoke-static {}, Lcom/ts/MainUI/GetID;->getInstance()Lcom/ts/MainUI/GetID;

    move-result-object v1

    iget v2, p0, Lcom/ts/MainUI/AuthServer$1$1;->val$x:I

    iget v3, p0, Lcom/ts/MainUI/AuthServer$1$1;->val$y:I

    invoke-virtual {v1, v0, v2, v3}, Lcom/ts/MainUI/GetID;->update([BII)Ljava/lang/String;

    .line 224
    :cond_0
    return-void
.end method
