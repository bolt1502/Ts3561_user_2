.class Lcom/ts/main/tpms/TPMSSetMainActivity$3;
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
    iput-object p1, p0, Lcom/ts/main/tpms/TPMSSetMainActivity$3;->this$0:Lcom/ts/main/tpms/TPMSSetMainActivity;

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    const/16 v2, 0xa

    .line 132
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 133
    .local v0, "nTag":I
    packed-switch v0, :pswitch_data_0

    .line 154
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/ts/main/tpms/TPMSSetMainActivity$3;->this$0:Lcom/ts/main/tpms/TPMSSetMainActivity;

    invoke-virtual {v1}, Lcom/ts/main/tpms/TPMSSetMainActivity;->UpdateShowInfor()V

    .line 155
    return-void

    .line 136
    :pswitch_0
    iget-object v1, p0, Lcom/ts/main/tpms/TPMSSetMainActivity$3;->this$0:Lcom/ts/main/tpms/TPMSSetMainActivity;

    iget-object v1, v1, Lcom/ts/main/tpms/TPMSSetMainActivity;->mStTpms:Lcom/ts/MainUI/StTpms;

    iget-object v1, v1, Lcom/ts/MainUI/StTpms;->tpmsSave:Lcom/ts/MainUI/StTpms$TPMS_SAVE;

    iget v1, v1, Lcom/ts/MainUI/StTpms$TPMS_SAVE;->nTempHigh:I

    if-lt v1, v2, :cond_0

    .line 138
    iget-object v1, p0, Lcom/ts/main/tpms/TPMSSetMainActivity$3;->this$0:Lcom/ts/main/tpms/TPMSSetMainActivity;

    iget-object v1, v1, Lcom/ts/main/tpms/TPMSSetMainActivity;->mStTpms:Lcom/ts/MainUI/StTpms;

    iget-object v1, v1, Lcom/ts/MainUI/StTpms;->tpmsSave:Lcom/ts/MainUI/StTpms$TPMS_SAVE;

    iget v2, v1, Lcom/ts/MainUI/StTpms$TPMS_SAVE;->nTempHigh:I

    add-int/lit8 v2, v2, -0xa

    iput v2, v1, Lcom/ts/MainUI/StTpms$TPMS_SAVE;->nTempHigh:I

    goto :goto_0

    .line 142
    :pswitch_1
    iget-object v1, p0, Lcom/ts/main/tpms/TPMSSetMainActivity$3;->this$0:Lcom/ts/main/tpms/TPMSSetMainActivity;

    iget-object v1, v1, Lcom/ts/main/tpms/TPMSSetMainActivity;->mStTpms:Lcom/ts/MainUI/StTpms;

    iget-object v1, v1, Lcom/ts/MainUI/StTpms;->tpmsSave:Lcom/ts/MainUI/StTpms$TPMS_SAVE;

    iget v1, v1, Lcom/ts/MainUI/StTpms$TPMS_SAVE;->nPskHigh:I

    const/16 v2, 0xc8

    if-le v1, v2, :cond_0

    .line 144
    iget-object v1, p0, Lcom/ts/main/tpms/TPMSSetMainActivity$3;->this$0:Lcom/ts/main/tpms/TPMSSetMainActivity;

    iget-object v1, v1, Lcom/ts/main/tpms/TPMSSetMainActivity;->mStTpms:Lcom/ts/MainUI/StTpms;

    iget-object v1, v1, Lcom/ts/MainUI/StTpms;->tpmsSave:Lcom/ts/MainUI/StTpms$TPMS_SAVE;

    iget v2, v1, Lcom/ts/MainUI/StTpms$TPMS_SAVE;->nPskHigh:I

    add-int/lit8 v2, v2, -0xa

    iput v2, v1, Lcom/ts/MainUI/StTpms$TPMS_SAVE;->nPskHigh:I

    goto :goto_0

    .line 148
    :pswitch_2
    iget-object v1, p0, Lcom/ts/main/tpms/TPMSSetMainActivity$3;->this$0:Lcom/ts/main/tpms/TPMSSetMainActivity;

    iget-object v1, v1, Lcom/ts/main/tpms/TPMSSetMainActivity;->mStTpms:Lcom/ts/MainUI/StTpms;

    iget-object v1, v1, Lcom/ts/MainUI/StTpms;->tpmsSave:Lcom/ts/MainUI/StTpms$TPMS_SAVE;

    iget v1, v1, Lcom/ts/MainUI/StTpms$TPMS_SAVE;->nPskLow:I

    if-le v1, v2, :cond_0

    .line 150
    iget-object v1, p0, Lcom/ts/main/tpms/TPMSSetMainActivity$3;->this$0:Lcom/ts/main/tpms/TPMSSetMainActivity;

    iget-object v1, v1, Lcom/ts/main/tpms/TPMSSetMainActivity;->mStTpms:Lcom/ts/MainUI/StTpms;

    iget-object v1, v1, Lcom/ts/MainUI/StTpms;->tpmsSave:Lcom/ts/MainUI/StTpms$TPMS_SAVE;

    iget v2, v1, Lcom/ts/MainUI/StTpms$TPMS_SAVE;->nPskLow:I

    add-int/lit8 v2, v2, -0xa

    iput v2, v1, Lcom/ts/MainUI/StTpms$TPMS_SAVE;->nPskLow:I

    goto :goto_0

    .line 133
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
