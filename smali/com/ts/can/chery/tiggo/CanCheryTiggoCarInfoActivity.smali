.class public Lcom/ts/can/chery/tiggo/CanCheryTiggoCarInfoActivity;
.super Lcom/ts/can/CanBaseActivity;
.source "CanCheryTiggoCarInfoActivity.java"

# interfaces
.implements Lcom/ts/MainUI/UserCallBack;
.implements Lcom/ts/canview/CanItemPopupList$onPopItemClick;


# static fields
.field public static final ITEM_LANG:I = 0x1

.field private static final TAG:Ljava/lang/String; = "CanCheryTiggoCarInfoActivity"


# instance fields
.field protected mItemLang:Lcom/ts/canview/CanItemPopupList;

.field protected mLangArr:[Ljava/lang/String;

.field private mManager:Lcom/ts/canview/CanScrollList;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/ts/can/CanBaseActivity;-><init>()V

    .line 22
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "\u4e2d\u6587"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "English"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/ts/can/chery/tiggo/CanCheryTiggoCarInfoActivity;->mLangArr:[Ljava/lang/String;

    .line 15
    return-void
.end method


# virtual methods
.method protected AddPopupItem(II[Ljava/lang/String;I)Lcom/ts/canview/CanItemPopupList;
    .locals 6
    .param p1, "text"    # I
    .param p2, "icon"    # I
    .param p3, "val"    # [Ljava/lang/String;
    .param p4, "id"    # I

    .prologue
    .line 49
    new-instance v0, Lcom/ts/canview/CanItemPopupList;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/ts/canview/CanItemPopupList;-><init>(Landroid/content/Context;II[Ljava/lang/String;Lcom/ts/canview/CanItemPopupList$onPopItemClick;)V

    .line 50
    .local v0, "item":Lcom/ts/canview/CanItemPopupList;
    invoke-virtual {v0, p4}, Lcom/ts/canview/CanItemPopupList;->SetId(I)V

    .line 51
    iget-object v1, p0, Lcom/ts/can/chery/tiggo/CanCheryTiggoCarInfoActivity;->mManager:Lcom/ts/canview/CanScrollList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemPopupList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 52
    return-object v0
.end method

.method protected InitUI()V
    .locals 4

    .prologue
    .line 41
    new-instance v0, Lcom/ts/canview/CanScrollList;

    invoke-direct {v0, p0}, Lcom/ts/canview/CanScrollList;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/ts/can/chery/tiggo/CanCheryTiggoCarInfoActivity;->mManager:Lcom/ts/canview/CanScrollList;

    .line 43
    sget v0, Lcom/ts/MainUI/R$string;->can_language:I

    sget v1, Lcom/ts/MainUI/R$drawable;->can_icon_setup:I

    iget-object v2, p0, Lcom/ts/can/chery/tiggo/CanCheryTiggoCarInfoActivity;->mLangArr:[Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/ts/can/chery/tiggo/CanCheryTiggoCarInfoActivity;->AddPopupItem(II[Ljava/lang/String;I)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/chery/tiggo/CanCheryTiggoCarInfoActivity;->mItemLang:Lcom/ts/canview/CanItemPopupList;

    .line 45
    return-void
.end method

.method public UserAll()V
    .locals 0

    .prologue
    .line 73
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 31
    invoke-super {p0, p1}, Lcom/ts/can/CanBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    sget v0, Lcom/ts/MainUI/R$layout;->activity_can_comm_list:I

    invoke-virtual {p0, v0}, Lcom/ts/can/chery/tiggo/CanCheryTiggoCarInfoActivity;->setContentView(I)V

    .line 34
    const-string v0, "CanCheryTiggoCarInfoActivity"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    invoke-virtual {p0}, Lcom/ts/can/chery/tiggo/CanCheryTiggoCarInfoActivity;->InitUI()V

    .line 37
    return-void
.end method

.method public onItem(II)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "item"    # I

    .prologue
    .line 78
    packed-switch p1, :pswitch_data_0

    .line 84
    :goto_0
    return-void

    .line 81
    :pswitch_0
    invoke-static {p2}, Lcom/lgb/canmodule/CanJni;->TiggoCarLangSet(I)V

    goto :goto_0

    .line 78
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 65
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 66
    invoke-super {p0}, Lcom/ts/can/CanBaseActivity;->onPause()V

    .line 67
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 58
    invoke-super {p0}, Lcom/ts/can/CanBaseActivity;->onResume()V

    .line 59
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 60
    return-void
.end method
