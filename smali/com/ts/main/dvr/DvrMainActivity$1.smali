.class Lcom/ts/main/dvr/DvrMainActivity$1;
.super Ljava/lang/Object;
.source "DvrMainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ts/main/dvr/DvrMainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ts/main/dvr/DvrMainActivity;


# direct methods
.method constructor <init>(Lcom/ts/main/dvr/DvrMainActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ts/main/dvr/DvrMainActivity$1;->this$0:Lcom/ts/main/dvr/DvrMainActivity;

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 97
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 98
    .local v0, "nTag":I
    iget-object v1, p0, Lcom/ts/main/dvr/DvrMainActivity$1;->this$0:Lcom/ts/main/dvr/DvrMainActivity;

    iget-object v1, v1, Lcom/ts/main/dvr/DvrMainActivity;->DvrShow:Lcom/ts/main/avin/AvShowMainItem;

    invoke-virtual {v1}, Lcom/ts/main/avin/AvShowMainItem;->SetBtnDelay()V

    .line 99
    invoke-static {}, Lcom/ts/MainUI/Dvr;->GetInstance()Lcom/ts/MainUI/Dvr;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ts/MainUI/Dvr;->BtnFun(I)I

    .line 101
    return-void
.end method
