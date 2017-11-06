.class Lcom/ts/main/cmmb/CmmbMainActivity$1;
.super Ljava/lang/Object;
.source "CmmbMainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ts/main/cmmb/CmmbMainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ts/main/cmmb/CmmbMainActivity;


# direct methods
.method constructor <init>(Lcom/ts/main/cmmb/CmmbMainActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ts/main/cmmb/CmmbMainActivity$1;->this$0:Lcom/ts/main/cmmb/CmmbMainActivity;

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 80
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 81
    .local v0, "nTag":I
    const-string v1, "Cmmb"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "nTag=="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    iget-object v1, p0, Lcom/ts/main/cmmb/CmmbMainActivity$1;->this$0:Lcom/ts/main/cmmb/CmmbMainActivity;

    iget-object v1, v1, Lcom/ts/main/cmmb/CmmbMainActivity;->CMMBShow:Lcom/ts/main/avin/AvShowMainItem;

    invoke-virtual {v1}, Lcom/ts/main/avin/AvShowMainItem;->SetBtnDelay()V

    .line 83
    packed-switch v0, :pswitch_data_0

    .line 107
    :goto_0
    return-void

    .line 86
    :pswitch_0
    invoke-static {}, Lcom/ts/MainUI/Cmmb;->GetInstance()Lcom/ts/MainUI/Cmmb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ts/MainUI/Cmmb;->CmmbList()V

    goto :goto_0

    .line 89
    :pswitch_1
    invoke-static {}, Lcom/ts/MainUI/Cmmb;->GetInstance()Lcom/ts/MainUI/Cmmb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ts/MainUI/Cmmb;->CmmbUp()V

    goto :goto_0

    .line 92
    :pswitch_2
    invoke-static {}, Lcom/ts/MainUI/Cmmb;->GetInstance()Lcom/ts/MainUI/Cmmb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ts/MainUI/Cmmb;->CmmbDn()V

    goto :goto_0

    .line 95
    :pswitch_3
    invoke-static {}, Lcom/ts/MainUI/Cmmb;->GetInstance()Lcom/ts/MainUI/Cmmb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ts/MainUI/Cmmb;->CmmbLeft()V

    goto :goto_0

    .line 98
    :pswitch_4
    invoke-static {}, Lcom/ts/MainUI/Cmmb;->GetInstance()Lcom/ts/MainUI/Cmmb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ts/MainUI/Cmmb;->CmmbRight()V

    goto :goto_0

    .line 101
    :pswitch_5
    invoke-static {}, Lcom/ts/MainUI/Cmmb;->GetInstance()Lcom/ts/MainUI/Cmmb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ts/MainUI/Cmmb;->CmmbEnter()V

    goto :goto_0

    .line 104
    :pswitch_6
    invoke-static {}, Lcom/ts/MainUI/Cmmb;->GetInstance()Lcom/ts/MainUI/Cmmb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ts/MainUI/Cmmb;->CmmbReturn()V

    goto :goto_0

    .line 83
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
