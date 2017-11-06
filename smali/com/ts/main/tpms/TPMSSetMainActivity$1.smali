.class Lcom/ts/main/tpms/TPMSSetMainActivity$1;
.super Ljava/lang/Object;
.source "TPMSSetMainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ts/main/tpms/TPMSSetMainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ts/main/tpms/TPMSSetMainActivity;


# direct methods
.method constructor <init>(Lcom/ts/main/tpms/TPMSSetMainActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ts/main/tpms/TPMSSetMainActivity$1;->this$0:Lcom/ts/main/tpms/TPMSSetMainActivity;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 69
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 70
    .local v0, "nTag":I
    packed-switch v0, :pswitch_data_0

    .line 79
    :goto_0
    iget-object v1, p0, Lcom/ts/main/tpms/TPMSSetMainActivity$1;->this$0:Lcom/ts/main/tpms/TPMSSetMainActivity;

    invoke-virtual {v1}, Lcom/ts/main/tpms/TPMSSetMainActivity;->UpdateTaiyaDw()V

    .line 80
    iget-object v1, p0, Lcom/ts/main/tpms/TPMSSetMainActivity$1;->this$0:Lcom/ts/main/tpms/TPMSSetMainActivity;

    invoke-virtual {v1}, Lcom/ts/main/tpms/TPMSSetMainActivity;->UpdateShowInfor()V

    .line 81
    return-void

    .line 73
    :pswitch_0
    iget-object v1, p0, Lcom/ts/main/tpms/TPMSSetMainActivity$1;->this$0:Lcom/ts/main/tpms/TPMSSetMainActivity;

    iget-object v1, v1, Lcom/ts/main/tpms/TPMSSetMainActivity;->mStTpms:Lcom/ts/MainUI/StTpms;

    iget-object v1, v1, Lcom/ts/MainUI/StTpms;->tpmsSave:Lcom/ts/MainUI/StTpms$TPMS_SAVE;

    const/4 v2, 0x0

    iput v2, v1, Lcom/ts/MainUI/StTpms$TPMS_SAVE;->nPskDW:I

    goto :goto_0

    .line 76
    :pswitch_1
    iget-object v1, p0, Lcom/ts/main/tpms/TPMSSetMainActivity$1;->this$0:Lcom/ts/main/tpms/TPMSSetMainActivity;

    iget-object v1, v1, Lcom/ts/main/tpms/TPMSSetMainActivity;->mStTpms:Lcom/ts/MainUI/StTpms;

    iget-object v1, v1, Lcom/ts/MainUI/StTpms;->tpmsSave:Lcom/ts/MainUI/StTpms$TPMS_SAVE;

    const/4 v2, 0x1

    iput v2, v1, Lcom/ts/MainUI/StTpms$TPMS_SAVE;->nPskDW:I

    goto :goto_0

    .line 70
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
