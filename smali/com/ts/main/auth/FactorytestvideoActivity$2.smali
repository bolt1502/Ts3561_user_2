.class Lcom/ts/main/auth/FactorytestvideoActivity$2;
.super Ljava/lang/Object;
.source "FactorytestvideoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ts/main/auth/FactorytestvideoActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ts/main/auth/FactorytestvideoActivity;


# direct methods
.method constructor <init>(Lcom/ts/main/auth/FactorytestvideoActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ts/main/auth/FactorytestvideoActivity$2;->this$0:Lcom/ts/main/auth/FactorytestvideoActivity;

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 65
    invoke-static {}, Lcom/ts/backcar/BackcarService;->getInstance()Lcom/ts/backcar/BackcarService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ts/backcar/BackcarService;->StopCamera()V

    .line 66
    iget-object v0, p0, Lcom/ts/main/auth/FactorytestvideoActivity$2;->this$0:Lcom/ts/main/auth/FactorytestvideoActivity;

    iput-boolean v4, v0, Lcom/ts/main/auth/FactorytestvideoActivity;->bBt2:Z

    .line 68
    invoke-static {}, Lcom/ts/main/common/MainSet;->GetInstance()Lcom/ts/main/common/MainSet;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/ts/main/common/MainSet;->SetVideoChannel(I)V

    .line 69
    invoke-static {}, Lcom/ts/backcar/BackcarService;->getInstance()Lcom/ts/backcar/BackcarService;

    move-result-object v1

    iget-object v0, p0, Lcom/ts/main/auth/FactorytestvideoActivity$2;->this$0:Lcom/ts/main/auth/FactorytestvideoActivity;

    sget v2, Lcom/ts/MainUI/R$id;->testvideo:I

    invoke-virtual {v0, v2}, Lcom/ts/main/auth/FactorytestvideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ts/backcar/AutoFitTextureView;

    invoke-virtual {v1, v0}, Lcom/ts/backcar/BackcarService;->StartCamera(Lcom/ts/backcar/AutoFitTextureView;)V

    .line 70
    iget-object v0, p0, Lcom/ts/main/auth/FactorytestvideoActivity$2;->this$0:Lcom/ts/main/auth/FactorytestvideoActivity;

    iget-object v0, v0, Lcom/ts/main/auth/FactorytestvideoActivity;->BtnVideo:[Landroid/widget/Button;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 71
    iget-object v0, p0, Lcom/ts/main/auth/FactorytestvideoActivity$2;->this$0:Lcom/ts/main/auth/FactorytestvideoActivity;

    iget-object v0, v0, Lcom/ts/main/auth/FactorytestvideoActivity;->BtnVideo:[Landroid/widget/Button;

    aget-object v0, v0, v4

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 72
    return-void
.end method
