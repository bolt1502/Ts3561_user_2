.class Lcom/ts/MainUI/AuthServer$2;
.super Ljava/lang/Thread;
.source "AuthServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ts/MainUI/AuthServer;->Updateid()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ts/MainUI/AuthServer;


# direct methods
.method constructor <init>(Lcom/ts/MainUI/AuthServer;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ts/MainUI/AuthServer$2;->this$0:Lcom/ts/MainUI/AuthServer;

    .line 150
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x5

    const/4 v3, 0x1

    .line 153
    iget-object v0, p0, Lcom/ts/MainUI/AuthServer$2;->this$0:Lcom/ts/MainUI/AuthServer;

    iget-object v0, v0, Lcom/ts/MainUI/AuthServer;->Liscense:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ts/MainUI/AuthServer$2;->this$0:Lcom/ts/MainUI/AuthServer;

    iget-object v0, v0, Lcom/ts/MainUI/AuthServer;->Liscense:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v0, v4, :cond_2

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/ts/MainUI/AuthServer$2;->this$0:Lcom/ts/MainUI/AuthServer;

    const/4 v1, 0x3

    iput v1, v0, Lcom/ts/MainUI/AuthServer;->nGetIdOk:I

    .line 161
    :goto_0
    iget-object v0, p0, Lcom/ts/MainUI/AuthServer$2;->this$0:Lcom/ts/MainUI/AuthServer;

    iget v0, v0, Lcom/ts/MainUI/AuthServer;->nGetIdOk:I

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/ts/MainUI/AuthServer$2;->this$0:Lcom/ts/MainUI/AuthServer;

    iget-object v0, v0, Lcom/ts/MainUI/AuthServer;->m_GetID:Lcom/ts/MainUI/GetID;

    iget-object v0, v0, Lcom/ts/MainUI/GetID;->mDevice:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ts/MainUI/AuthServer$2;->this$0:Lcom/ts/MainUI/AuthServer;

    iget-object v0, v0, Lcom/ts/MainUI/AuthServer;->m_GetID:Lcom/ts/MainUI/GetID;

    iget-object v0, v0, Lcom/ts/MainUI/GetID;->mLicense:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 163
    iget-object v0, p0, Lcom/ts/MainUI/AuthServer$2;->this$0:Lcom/ts/MainUI/AuthServer;

    iget-object v1, p0, Lcom/ts/MainUI/AuthServer$2;->this$0:Lcom/ts/MainUI/AuthServer;

    iget-object v1, v1, Lcom/ts/MainUI/AuthServer;->m_GetID:Lcom/ts/MainUI/GetID;

    iget-object v1, v1, Lcom/ts/MainUI/GetID;->mDevice:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    iput-object v1, v0, Lcom/ts/MainUI/AuthServer;->DataFormat:[B

    .line 164
    iget-object v0, p0, Lcom/ts/MainUI/AuthServer$2;->this$0:Lcom/ts/MainUI/AuthServer;

    iget-object v0, v0, Lcom/ts/MainUI/AuthServer;->DataFormat:[B

    array-length v0, v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_4

    .line 166
    iget-object v0, p0, Lcom/ts/MainUI/AuthServer$2;->this$0:Lcom/ts/MainUI/AuthServer;

    iget-object v0, v0, Lcom/ts/MainUI/AuthServer;->DataFormat:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/yyw/ts70xhw/Mcu;->SetXYZ([BI)I

    move-result v0

    if-ne v0, v3, :cond_3

    .line 170
    iget-object v0, p0, Lcom/ts/MainUI/AuthServer$2;->this$0:Lcom/ts/MainUI/AuthServer;

    iget-object v0, v0, Lcom/ts/MainUI/AuthServer;->m_GetID:Lcom/ts/MainUI/GetID;

    iget-object v1, p0, Lcom/ts/MainUI/AuthServer$2;->this$0:Lcom/ts/MainUI/AuthServer;

    iget-object v1, v1, Lcom/ts/MainUI/AuthServer;->DataFormat:[B

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/GetID;->getIDok([B)Ljava/lang/String;

    .line 189
    :cond_1
    :goto_1
    return-void

    .line 159
    :cond_2
    iget-object v0, p0, Lcom/ts/MainUI/AuthServer$2;->this$0:Lcom/ts/MainUI/AuthServer;

    iget-object v1, p0, Lcom/ts/MainUI/AuthServer$2;->this$0:Lcom/ts/MainUI/AuthServer;

    iget-object v1, v1, Lcom/ts/MainUI/AuthServer;->m_GetID:Lcom/ts/MainUI/GetID;

    iget-object v2, p0, Lcom/ts/MainUI/AuthServer$2;->this$0:Lcom/ts/MainUI/AuthServer;

    iget-object v2, v2, Lcom/ts/MainUI/AuthServer;->Liscense:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/ts/MainUI/GetID;->getID(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/ts/MainUI/AuthServer;->nGetIdOk:I

    goto :goto_0

    .line 177
    :cond_3
    iget-object v0, p0, Lcom/ts/MainUI/AuthServer$2;->this$0:Lcom/ts/MainUI/AuthServer;

    iput v4, v0, Lcom/ts/MainUI/AuthServer;->nGetIdOk:I

    goto :goto_1

    .line 182
    :cond_4
    iget-object v0, p0, Lcom/ts/MainUI/AuthServer$2;->this$0:Lcom/ts/MainUI/AuthServer;

    const/4 v1, 0x4

    iput v1, v0, Lcom/ts/MainUI/AuthServer;->nGetIdOk:I

    goto :goto_1
.end method
