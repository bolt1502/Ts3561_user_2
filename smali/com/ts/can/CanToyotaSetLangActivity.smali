.class public Lcom/ts/can/CanToyotaSetLangActivity;
.super Lcom/ts/can/CanToyotaBaseActivity;
.source "CanToyotaSetLangActivity.java"

# interfaces
.implements Lcom/ts/canview/CanItemPopupList$onPopItemClick;
.implements Lcom/ts/MainUI/UserCallBack;


# static fields
.field protected static final ITEM_LANG_SET:I = 0x1

.field public static final TAG:Ljava/lang/String; = "CanToyotaSetLangActivity"

.field protected static final mLangIndex:[I


# instance fields
.field protected mItemLang:Lcom/ts/canview/CanItemPopupList;

.field protected mLangVal:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 17
    const/4 v0, 0x2

    new-array v0, v0, [I

    aput v1, v0, v1

    sput-object v0, Lcom/ts/can/CanToyotaSetLangActivity;->mLangIndex:[I

    .line 19
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/ts/can/CanToyotaBaseActivity;-><init>()V

    .line 23
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 24
    sget v2, Lcom/ts/MainUI/R$string;->lang_cn:I

    aput v2, v0, v1

    const/4 v1, 0x1

    .line 25
    sget v2, Lcom/ts/MainUI/R$string;->lang_en_uk:I

    aput v2, v0, v1

    iput-object v0, p0, Lcom/ts/can/CanToyotaSetLangActivity;->mLangVal:[I

    .line 12
    return-void
.end method


# virtual methods
.method protected ResetData(Z)V
    .locals 0
    .param p1, "check"    # Z

    .prologue
    .line 74
    return-void
.end method

.method public UserAll()V
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ts/can/CanToyotaSetLangActivity;->ResetData(Z)V

    .line 81
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 31
    invoke-super {p0, p1}, Lcom/ts/can/CanToyotaBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    sget v1, Lcom/ts/MainUI/R$layout;->activity_can_comm_list:I

    invoke-virtual {p0, v1}, Lcom/ts/can/CanToyotaSetLangActivity;->setContentView(I)V

    .line 34
    new-instance v1, Lcom/ts/canview/CanItemPopupList;

    sget v2, Lcom/ts/MainUI/R$string;->can_lang_set:I

    iget-object v3, p0, Lcom/ts/can/CanToyotaSetLangActivity;->mLangVal:[I

    invoke-direct {v1, p0, v2, v3, p0}, Lcom/ts/canview/CanItemPopupList;-><init>(Landroid/content/Context;I[ILcom/ts/canview/CanItemPopupList$onPopItemClick;)V

    iput-object v1, p0, Lcom/ts/can/CanToyotaSetLangActivity;->mItemLang:Lcom/ts/canview/CanItemPopupList;

    .line 35
    iget-object v1, p0, Lcom/ts/can/CanToyotaSetLangActivity;->mItemLang:Lcom/ts/canview/CanItemPopupList;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanItemPopupList;->SetId(I)V

    .line 37
    new-instance v0, Lcom/ts/canview/CanScrollList;

    invoke-direct {v0, p0}, Lcom/ts/canview/CanScrollList;-><init>(Landroid/app/Activity;)V

    .line 38
    .local v0, "sl":Lcom/ts/canview/CanScrollList;
    iget-object v1, p0, Lcom/ts/can/CanToyotaSetLangActivity;->mItemLang:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v1}, Lcom/ts/canview/CanItemPopupList;->GetView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 41
    return-void
.end method

.method public onItem(II)V
    .locals 2
    .param p1, "Id"    # I
    .param p2, "item"    # I

    .prologue
    .line 47
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 49
    const/16 v0, 0x24

    sget-object v1, Lcom/ts/can/CanToyotaSetLangActivity;->mLangIndex:[I

    aget v1, v1, p2

    invoke-virtual {p0, v0, v1}, Lcom/ts/can/CanToyotaSetLangActivity;->CarSet(II)V

    .line 51
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 57
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 58
    invoke-super {p0}, Lcom/ts/can/CanToyotaBaseActivity;->onPause()V

    .line 59
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 65
    invoke-super {p0}, Lcom/ts/can/CanToyotaBaseActivity;->onResume()V

    .line 66
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 67
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ts/can/CanToyotaSetLangActivity;->ResetData(Z)V

    .line 68
    return-void
.end method
