.class Lcom/ts/main/txz/TxzReg$10;
.super Ljava/lang/Object;
.source "TxzReg.java"

# interfaces
.implements Lcom/txznet/sdk/TXZNavManager$NavTool;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ts/main/txz/TxzReg;->InintNaviManage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ts/main/txz/TxzReg;


# direct methods
.method constructor <init>(Lcom/ts/main/txz/TxzReg;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ts/main/txz/TxzReg$10;->this$0:Lcom/ts/main/txz/TxzReg;

    .line 1919
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public enterNav()V
    .locals 3

    .prologue
    .line 1993
    invoke-static {}, Lcom/ts/main/common/MainSet;->GetInstance()Lcom/ts/main/common/MainSet;

    move-result-object v0

    iget-object v1, p0, Lcom/ts/main/txz/TxzReg$10;->this$0:Lcom/ts/main/txz/TxzReg;

    # getter for: Lcom/ts/main/txz/TxzReg;->myContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/ts/main/txz/TxzReg;->access$0(Lcom/ts/main/txz/TxzReg;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.papago.s1OBU"

    invoke-virtual {v0, v1, v2}, Lcom/ts/main/common/MainSet;->openApplication(Landroid/content/Context;Ljava/lang/String;)V

    .line 1995
    return-void
.end method

.method public exitNav()V
    .locals 0

    .prologue
    .line 1987
    return-void
.end method

.method public isInNav()Z
    .locals 1

    .prologue
    .line 1979
    const/4 v0, 0x0

    return v0
.end method

.method public navCompany()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1973
    return-void
.end method

.method public navHome()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1965
    return-void
.end method

.method public navToLoc(Lcom/txznet/sdk/bean/Poi;)V
    .locals 3
    .param p1, "arg0"    # Lcom/txznet/sdk/bean/Poi;

    .prologue
    .line 1954
    invoke-static {}, Lcom/ts/main/common/MainSet;->GetInstance()Lcom/ts/main/common/MainSet;

    move-result-object v0

    iget-object v1, p0, Lcom/ts/main/txz/TxzReg$10;->this$0:Lcom/ts/main/txz/TxzReg;

    # getter for: Lcom/ts/main/txz/TxzReg;->myContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/ts/main/txz/TxzReg;->access$0(Lcom/ts/main/txz/TxzReg;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.papago.s1OBU"

    invoke-virtual {v0, v1, v2}, Lcom/ts/main/common/MainSet;->openApplication(Landroid/content/Context;Ljava/lang/String;)V

    .line 1955
    iget-object v0, p0, Lcom/ts/main/txz/TxzReg$10;->this$0:Lcom/ts/main/txz/TxzReg;

    invoke-virtual {v0, p1}, Lcom/ts/main/txz/TxzReg;->PapaGoNaviToPoi(Lcom/txznet/sdk/bean/Poi;)V

    .line 1957
    return-void
.end method

.method public setCompanyLoc(Lcom/txznet/sdk/bean/Poi;)V
    .locals 3
    .param p1, "arg0"    # Lcom/txznet/sdk/bean/Poi;

    .prologue
    .line 1944
    invoke-static {}, Lcom/ts/main/common/MainSet;->GetInstance()Lcom/ts/main/common/MainSet;

    move-result-object v0

    iget-object v1, p0, Lcom/ts/main/txz/TxzReg$10;->this$0:Lcom/ts/main/txz/TxzReg;

    # getter for: Lcom/ts/main/txz/TxzReg;->myContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/ts/main/txz/TxzReg;->access$0(Lcom/ts/main/txz/TxzReg;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.papago.s1OBU"

    invoke-virtual {v0, v1, v2}, Lcom/ts/main/common/MainSet;->openApplication(Landroid/content/Context;Ljava/lang/String;)V

    .line 1945
    iget-object v0, p0, Lcom/ts/main/txz/TxzReg$10;->this$0:Lcom/ts/main/txz/TxzReg;

    invoke-virtual {v0, p1}, Lcom/ts/main/txz/TxzReg;->PapaGoNaviToPoi(Lcom/txznet/sdk/bean/Poi;)V

    .line 1947
    return-void
.end method

.method public setHomeLoc(Lcom/txznet/sdk/bean/Poi;)V
    .locals 3
    .param p1, "arg0"    # Lcom/txznet/sdk/bean/Poi;

    .prologue
    .line 1935
    invoke-static {}, Lcom/ts/main/common/MainSet;->GetInstance()Lcom/ts/main/common/MainSet;

    move-result-object v0

    iget-object v1, p0, Lcom/ts/main/txz/TxzReg$10;->this$0:Lcom/ts/main/txz/TxzReg;

    # getter for: Lcom/ts/main/txz/TxzReg;->myContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/ts/main/txz/TxzReg;->access$0(Lcom/ts/main/txz/TxzReg;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.papago.s1OBU"

    invoke-virtual {v0, v1, v2}, Lcom/ts/main/common/MainSet;->openApplication(Landroid/content/Context;Ljava/lang/String;)V

    .line 1936
    iget-object v0, p0, Lcom/ts/main/txz/TxzReg$10;->this$0:Lcom/ts/main/txz/TxzReg;

    invoke-virtual {v0, p1}, Lcom/ts/main/txz/TxzReg;->PapaGoNaviToPoi(Lcom/txznet/sdk/bean/Poi;)V

    .line 1938
    return-void
.end method

.method public setStatusListener(Lcom/txznet/sdk/TXZNavManager$NavToolStatusListener;)V
    .locals 1
    .param p1, "Listener"    # Lcom/txznet/sdk/TXZNavManager$NavToolStatusListener;

    .prologue
    .line 1926
    iget-object v0, p0, Lcom/ts/main/txz/TxzReg$10;->this$0:Lcom/ts/main/txz/TxzReg;

    iput-object p1, v0, Lcom/ts/main/txz/TxzReg;->myNavStatusListener:Lcom/txznet/sdk/TXZNavManager$NavToolStatusListener;

    .line 1929
    return-void
.end method
