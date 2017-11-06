.class Lcom/ts/main/tpms/TPMSMainActivity$3;
.super Ljava/lang/Object;
.source "TPMSMainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    iput-object p1, p0, Lcom/ts/main/tpms/TPMSMainActivity$3;->this$0:Lcom/ts/main/tpms/TPMSMainActivity;

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 125
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 126
    .local v1, "nTag":I
    iget-object v2, p0, Lcom/ts/main/tpms/TPMSMainActivity$3;->this$0:Lcom/ts/main/tpms/TPMSMainActivity;

    iget-object v2, v2, Lcom/ts/main/tpms/TPMSMainActivity;->mStTpms:Lcom/ts/MainUI/StTpms;

    iget-object v2, v2, Lcom/ts/MainUI/StTpms;->TpmsDisp:Lcom/ts/MainUI/StTpms$TPMSDisp;

    iget-object v2, v2, Lcom/ts/MainUI/StTpms$TPMSDisp;->info:[Lcom/ts/MainUI/StTpms$TPMSInfo;

    aget-object v2, v2, v1

    iget v0, v2, Lcom/ts/MainUI/StTpms$TPMSInfo;->nState:I

    .line 127
    .local v0, "nState":I
    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    .line 132
    :cond_0
    return-void
.end method
