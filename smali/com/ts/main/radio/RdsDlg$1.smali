.class Lcom/ts/main/radio/RdsDlg$1;
.super Ljava/lang/Object;
.source "RadioMainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ts/main/radio/RdsDlg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ts/main/radio/RdsDlg;


# direct methods
.method constructor <init>(Lcom/ts/main/radio/RdsDlg;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ts/main/radio/RdsDlg$1;->this$0:Lcom/ts/main/radio/RdsDlg;

    .line 1206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1212
    move-object v0, p1

    check-cast v0, Lcom/ts/other/ParamButton;

    .line 1213
    .local v0, "btn":Lcom/ts/other/ParamButton;
    invoke-virtual {v0}, Lcom/ts/other/ParamButton;->getIntParam()I

    move-result v1

    .line 1214
    .local v1, "id":I
    iget-object v2, p0, Lcom/ts/main/radio/RdsDlg$1;->this$0:Lcom/ts/main/radio/RdsDlg;

    # getter for: Lcom/ts/main/radio/RdsDlg;->mId:I
    invoke-static {v2}, Lcom/ts/main/radio/RdsDlg;->access$0(Lcom/ts/main/radio/RdsDlg;)I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 1216
    iget-object v2, p0, Lcom/ts/main/radio/RdsDlg$1;->this$0:Lcom/ts/main/radio/RdsDlg;

    # getter for: Lcom/ts/main/radio/RdsDlg;->mBtnList:[Lcom/ts/other/ParamButton;
    invoke-static {v2}, Lcom/ts/main/radio/RdsDlg;->access$1(Lcom/ts/main/radio/RdsDlg;)[Lcom/ts/other/ParamButton;

    move-result-object v2

    iget-object v3, p0, Lcom/ts/main/radio/RdsDlg$1;->this$0:Lcom/ts/main/radio/RdsDlg;

    # getter for: Lcom/ts/main/radio/RdsDlg;->mId:I
    invoke-static {v3}, Lcom/ts/main/radio/RdsDlg;->access$0(Lcom/ts/main/radio/RdsDlg;)I

    move-result v3

    aget-object v2, v2, v3

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/ts/other/ParamButton;->setSelected(Z)V

    .line 1217
    iget-object v2, p0, Lcom/ts/main/radio/RdsDlg$1;->this$0:Lcom/ts/main/radio/RdsDlg;

    # getter for: Lcom/ts/main/radio/RdsDlg;->mBtnList:[Lcom/ts/other/ParamButton;
    invoke-static {v2}, Lcom/ts/main/radio/RdsDlg;->access$1(Lcom/ts/main/radio/RdsDlg;)[Lcom/ts/other/ParamButton;

    move-result-object v2

    aget-object v2, v2, v1

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/ts/other/ParamButton;->setSelected(Z)V

    .line 1218
    iget-object v2, p0, Lcom/ts/main/radio/RdsDlg$1;->this$0:Lcom/ts/main/radio/RdsDlg;

    invoke-static {v2, v1}, Lcom/ts/main/radio/RdsDlg;->access$2(Lcom/ts/main/radio/RdsDlg;I)V

    .line 1220
    :cond_0
    return-void
.end method
