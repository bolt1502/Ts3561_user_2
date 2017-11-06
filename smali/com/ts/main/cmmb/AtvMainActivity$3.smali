.class Lcom/ts/main/cmmb/AtvMainActivity$3;
.super Ljava/lang/Object;
.source "AtvMainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ts/main/cmmb/AtvMainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ts/main/cmmb/AtvMainActivity;


# direct methods
.method constructor <init>(Lcom/ts/main/cmmb/AtvMainActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ts/main/cmmb/AtvMainActivity$3;->this$0:Lcom/ts/main/cmmb/AtvMainActivity;

    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 213
    move-object v0, p1

    check-cast v0, Lcom/ts/other/ParamButton;

    .line 214
    .local v0, "btn":Lcom/ts/other/ParamButton;
    invoke-virtual {v0}, Lcom/ts/other/ParamButton;->getIntParam()I

    move-result v1

    .line 215
    .local v1, "id":I
    packed-switch v1, :pswitch_data_0

    .line 241
    :goto_0
    return-void

    .line 217
    :pswitch_0
    iget-object v2, p0, Lcom/ts/main/cmmb/AtvMainActivity$3;->this$0:Lcom/ts/main/cmmb/AtvMainActivity;

    iget-object v2, v2, Lcom/ts/main/cmmb/AtvMainActivity;->mCstTv:Lcom/ts/MainUI/CstTv;

    invoke-virtual {v2}, Lcom/ts/MainUI/CstTv;->AutoSearch()V

    goto :goto_0

    .line 220
    :pswitch_1
    invoke-static {}, Lcom/ts/main/common/MainVolume;->GetInstance()Lcom/ts/main/common/MainVolume;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ts/main/common/MainVolume;->VolWinShow()V

    goto :goto_0

    .line 223
    :pswitch_2
    iget-object v2, p0, Lcom/ts/main/cmmb/AtvMainActivity$3;->this$0:Lcom/ts/main/cmmb/AtvMainActivity;

    iget-object v2, v2, Lcom/ts/main/cmmb/AtvMainActivity;->mCstTv:Lcom/ts/MainUI/CstTv;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/ts/MainUI/CstTv;->PlayChg(B)Z

    goto :goto_0

    .line 226
    :pswitch_3
    iget-object v2, p0, Lcom/ts/main/cmmb/AtvMainActivity$3;->this$0:Lcom/ts/main/cmmb/AtvMainActivity;

    iget-object v2, v2, Lcom/ts/main/cmmb/AtvMainActivity;->mCstTv:Lcom/ts/MainUI/CstTv;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/ts/MainUI/CstTv;->PlayChg(B)Z

    goto :goto_0

    .line 229
    :pswitch_4
    invoke-static {}, Lcom/ts/main/common/WinShow;->TurnToEq()V

    goto :goto_0

    .line 232
    :pswitch_5
    iget-object v2, p0, Lcom/ts/main/cmmb/AtvMainActivity$3;->this$0:Lcom/ts/main/cmmb/AtvMainActivity;

    invoke-virtual {v2}, Lcom/ts/main/cmmb/AtvMainActivity;->ShowMode()V

    goto :goto_0

    .line 236
    :pswitch_6
    iget-object v2, p0, Lcom/ts/main/cmmb/AtvMainActivity$3;->this$0:Lcom/ts/main/cmmb/AtvMainActivity;

    invoke-virtual {v2}, Lcom/ts/main/cmmb/AtvMainActivity;->ShowList()V

    goto :goto_0

    .line 215
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
