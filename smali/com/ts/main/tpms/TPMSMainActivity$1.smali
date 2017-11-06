.class Lcom/ts/main/tpms/TPMSMainActivity$1;
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
    iput-object p1, p0, Lcom/ts/main/tpms/TPMSMainActivity$1;->this$0:Lcom/ts/main/tpms/TPMSMainActivity;

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    .line 79
    iget-object v0, p0, Lcom/ts/main/tpms/TPMSMainActivity$1;->this$0:Lcom/ts/main/tpms/TPMSMainActivity;

    iget-object v0, v0, Lcom/ts/main/tpms/TPMSMainActivity;->mStTpms:Lcom/ts/MainUI/StTpms;

    iget-object v0, v0, Lcom/ts/MainUI/StTpms;->tpmsSave:Lcom/ts/MainUI/StTpms$TPMS_SAVE;

    iget v0, v0, Lcom/ts/MainUI/StTpms$TPMS_SAVE;->nOnOffFlag:I

    if-nez v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/ts/main/tpms/TPMSMainActivity$1;->this$0:Lcom/ts/main/tpms/TPMSMainActivity;

    iget-object v0, v0, Lcom/ts/main/tpms/TPMSMainActivity;->mStTpms:Lcom/ts/MainUI/StTpms;

    iget-object v0, v0, Lcom/ts/MainUI/StTpms;->tpmsSave:Lcom/ts/MainUI/StTpms$TPMS_SAVE;

    iput v1, v0, Lcom/ts/MainUI/StTpms$TPMS_SAVE;->nOnOffFlag:I

    .line 92
    :goto_0
    iget-object v0, p0, Lcom/ts/main/tpms/TPMSMainActivity$1;->this$0:Lcom/ts/main/tpms/TPMSMainActivity;

    invoke-virtual {v0}, Lcom/ts/main/tpms/TPMSMainActivity;->UpdateBtnOff()V

    .line 93
    return-void

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/ts/main/tpms/TPMSMainActivity$1;->this$0:Lcom/ts/main/tpms/TPMSMainActivity;

    iget-object v0, v0, Lcom/ts/main/tpms/TPMSMainActivity;->mStTpms:Lcom/ts/MainUI/StTpms;

    iget-object v0, v0, Lcom/ts/MainUI/StTpms;->tpmsSave:Lcom/ts/MainUI/StTpms$TPMS_SAVE;

    iget v0, v0, Lcom/ts/MainUI/StTpms$TPMS_SAVE;->nOnOffFlag:I

    if-ne v0, v1, :cond_1

    .line 85
    iget-object v0, p0, Lcom/ts/main/tpms/TPMSMainActivity$1;->this$0:Lcom/ts/main/tpms/TPMSMainActivity;

    iget-object v0, v0, Lcom/ts/main/tpms/TPMSMainActivity;->mStTpms:Lcom/ts/MainUI/StTpms;

    iget-object v0, v0, Lcom/ts/MainUI/StTpms;->tpmsSave:Lcom/ts/MainUI/StTpms$TPMS_SAVE;

    const/4 v1, 0x2

    iput v1, v0, Lcom/ts/MainUI/StTpms$TPMS_SAVE;->nOnOffFlag:I

    goto :goto_0

    .line 90
    :cond_1
    iget-object v0, p0, Lcom/ts/main/tpms/TPMSMainActivity$1;->this$0:Lcom/ts/main/tpms/TPMSMainActivity;

    iget-object v0, v0, Lcom/ts/main/tpms/TPMSMainActivity;->mStTpms:Lcom/ts/MainUI/StTpms;

    iget-object v0, v0, Lcom/ts/MainUI/StTpms;->tpmsSave:Lcom/ts/MainUI/StTpms$TPMS_SAVE;

    const/4 v1, 0x0

    iput v1, v0, Lcom/ts/MainUI/StTpms$TPMS_SAVE;->nOnOffFlag:I

    goto :goto_0
.end method
