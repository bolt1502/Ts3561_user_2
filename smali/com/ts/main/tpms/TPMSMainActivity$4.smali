.class Lcom/ts/main/tpms/TPMSMainActivity$4;
.super Ljava/lang/Object;
.source "TPMSMainActivity.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ts/main/tpms/TPMSMainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ts/main/tpms/TPMSMainActivity;


# direct methods
.method constructor <init>(Lcom/ts/main/tpms/TPMSMainActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ts/main/tpms/TPMSMainActivity$4;->this$0:Lcom/ts/main/tpms/TPMSMainActivity;

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 6
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    .line 140
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 141
    .local v1, "nTag":I
    iget-object v2, p0, Lcom/ts/main/tpms/TPMSMainActivity$4;->this$0:Lcom/ts/main/tpms/TPMSMainActivity;

    iget-object v2, v2, Lcom/ts/main/tpms/TPMSMainActivity;->mStTpms:Lcom/ts/MainUI/StTpms;

    iget-object v2, v2, Lcom/ts/MainUI/StTpms;->TpmsDisp:Lcom/ts/MainUI/StTpms$TPMSDisp;

    iget-object v2, v2, Lcom/ts/MainUI/StTpms$TPMSDisp;->info:[Lcom/ts/MainUI/StTpms$TPMSInfo;

    aget-object v2, v2, v1

    iget v0, v2, Lcom/ts/MainUI/StTpms$TPMSInfo;->nState:I

    .line 142
    .local v0, "nState":I
    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 144
    :cond_0
    iget-object v2, p0, Lcom/ts/main/tpms/TPMSMainActivity$4;->this$0:Lcom/ts/main/tpms/TPMSMainActivity;

    iget-object v2, v2, Lcom/ts/main/tpms/TPMSMainActivity;->mStTpms:Lcom/ts/MainUI/StTpms;

    invoke-virtual {v2, v1}, Lcom/ts/MainUI/StTpms;->UnStudy(I)V

    .line 145
    iget-object v2, p0, Lcom/ts/main/tpms/TPMSMainActivity$4;->this$0:Lcom/ts/main/tpms/TPMSMainActivity;

    iget-object v3, p0, Lcom/ts/main/tpms/TPMSMainActivity$4;->this$0:Lcom/ts/main/tpms/TPMSMainActivity;

    invoke-virtual {v3}, Lcom/ts/main/tpms/TPMSMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/ts/MainUI/R$string;->tpms_general_end:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 153
    :goto_0
    return v5

    .line 149
    :cond_1
    iget-object v2, p0, Lcom/ts/main/tpms/TPMSMainActivity$4;->this$0:Lcom/ts/main/tpms/TPMSMainActivity;

    iget-object v2, v2, Lcom/ts/main/tpms/TPMSMainActivity;->mStTpms:Lcom/ts/MainUI/StTpms;

    invoke-virtual {v2, v1}, Lcom/ts/MainUI/StTpms;->Study(I)V

    .line 150
    iget-object v2, p0, Lcom/ts/main/tpms/TPMSMainActivity$4;->this$0:Lcom/ts/main/tpms/TPMSMainActivity;

    iget-object v3, p0, Lcom/ts/main/tpms/TPMSMainActivity$4;->this$0:Lcom/ts/main/tpms/TPMSMainActivity;

    invoke-virtual {v3}, Lcom/ts/main/tpms/TPMSMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/ts/MainUI/R$string;->tpms_general_satrt:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
