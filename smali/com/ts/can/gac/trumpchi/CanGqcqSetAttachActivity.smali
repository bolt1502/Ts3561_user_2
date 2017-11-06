.class public Lcom/ts/can/gac/trumpchi/CanGqcqSetAttachActivity;
.super Lcom/ts/can/gac/trumpchi/CanGqcqBaseActivity;
.source "CanGqcqSetAttachActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/ts/MainUI/UserCallBack;
.implements Lcom/ts/canview/CanItemPopupList$onPopItemClick;


# static fields
.field public static final ITEM_CSSS:I = 0x2

.field public static final ITEM_DDZDYG:I = 0x6

.field public static final ITEM_HSJZD:I = 0x7

.field public static final ITEM_JSBSTSY:I = 0x8

.field private static final ITEM_MAX:I = 0xa

.field private static final ITEM_MIN:I = 0x1

.field public static final ITEM_YGWH:I = 0x5

.field public static final ITEM_YKJS:I = 0x1

.field public static final ITEM_YKQCTC:I = 0x4

.field public static final ITEM_ZDJS:I = 0x3

.field public static final ITEM_ZNZDBS:I = 0x9

.field public static final ITEM_ZNZDJS:I = 0xa

.field public static final TAG:Ljava/lang/String; = "CanGqcqSetAttachActivity"


# instance fields
.field private mItemCsss:Lcom/ts/canview/CanItemPopupList;

.field private mItemDdzdyg:Lcom/ts/canview/CanItemPopupList;

.field private mItemHsjzd:Lcom/ts/canview/CanItemPopupList;

.field private mItemJsbstsy:Lcom/ts/canview/CanItemPopupList;

.field private mItemYgwh:Lcom/ts/canview/CanItemPopupList;

.field private mItemYkjs:Lcom/ts/canview/CanItemPopupList;

.field private mItemYkqctc:Lcom/ts/canview/CanItemPopupList;

.field private mItemZdjs:Lcom/ts/canview/CanItemPopupList;

.field private mItemZnzdbs:Lcom/ts/canview/CanItemPopupList;

.field private mItemZnzdjs:Lcom/ts/canview/CanItemPopupList;

.field private mManager:Lcom/ts/canview/CanScrollList;

.field protected mYkjsArr:[I

.field private mbLayout:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/ts/can/gac/trumpchi/CanGqcqBaseActivity;-><init>()V

    .line 37
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 38
    sget v2, Lcom/ts/MainUI/R$string;->can_sym:I

    aput v2, v0, v1

    const/4 v1, 0x1

    .line 39
    sget v2, Lcom/ts/MainUI/R$string;->can_jsym:I

    aput v2, v0, v1

    iput-object v0, p0, Lcom/ts/can/gac/trumpchi/CanGqcqSetAttachActivity;->mYkjsArr:[I

    .line 18
    return-void
.end method


# virtual methods
.method protected AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;
    .locals 3
    .param p1, "resId"    # I
    .param p2, "Id"    # I

    .prologue
    .line 254
    new-instance v0, Lcom/ts/canview/CanItemSwitchList;

    invoke-direct {v0, p0, p1}, Lcom/ts/canview/CanItemSwitchList;-><init>(Landroid/content/Context;I)V

    .line 255
    .local v0, "item":Lcom/ts/canview/CanItemSwitchList;
    invoke-virtual {v0, p0, p2}, Lcom/ts/canview/CanItemSwitchList;->SetIdClickListener(Landroid/view/View$OnClickListener;I)V

    .line 256
    iget-object v1, p0, Lcom/ts/can/gac/trumpchi/CanGqcqSetAttachActivity;->mManager:Lcom/ts/canview/CanScrollList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemSwitchList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 257
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    .line 258
    return-object v0
.end method

.method protected AddPopupItem(I[II)Lcom/ts/canview/CanItemPopupList;
    .locals 3
    .param p1, "text"    # I
    .param p2, "val"    # [I
    .param p3, "id"    # I

    .prologue
    .line 263
    new-instance v0, Lcom/ts/canview/CanItemPopupList;

    invoke-direct {v0, p0, p1, p2, p0}, Lcom/ts/canview/CanItemPopupList;-><init>(Landroid/content/Context;I[ILcom/ts/canview/CanItemPopupList$onPopItemClick;)V

    .line 264
    .local v0, "item":Lcom/ts/canview/CanItemPopupList;
    invoke-virtual {v0, p3}, Lcom/ts/canview/CanItemPopupList;->SetId(I)V

    .line 265
    iget-object v1, p0, Lcom/ts/can/gac/trumpchi/CanGqcqSetAttachActivity;->mManager:Lcom/ts/canview/CanScrollList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemPopupList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 266
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    .line 267
    return-object v0
.end method

.method protected InitUI()V
    .locals 3

    .prologue
    .line 120
    new-instance v0, Lcom/ts/canview/CanScrollList;

    invoke-direct {v0, p0}, Lcom/ts/canview/CanScrollList;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/ts/can/gac/trumpchi/CanGqcqSetAttachActivity;->mManager:Lcom/ts/canview/CanScrollList;

    .line 122
    sget v0, Lcom/ts/MainUI/R$string;->can_ykjs:I

    iget-object v1, p0, Lcom/ts/can/gac/trumpchi/CanGqcqSetAttachActivity;->mYkjsArr:[I

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/gac/trumpchi/CanGqcqSetAttachActivity;->AddPopupItem(I[II)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/gac/trumpchi/CanGqcqSetAttachActivity;->mItemYkjs:Lcom/ts/canview/CanItemPopupList;

    .line 123
    sget v0, Lcom/ts/MainUI/R$string;->can_csss:I

    iget-object v1, p0, Lcom/ts/can/gac/trumpchi/CanGqcqSetAttachActivity;->mSWArr:[I

    const/4 v2, 0x2

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/gac/trumpchi/CanGqcqSetAttachActivity;->AddPopupItem(I[II)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/gac/trumpchi/CanGqcqSetAttachActivity;->mItemCsss:Lcom/ts/canview/CanItemPopupList;

    .line 124
    sget v0, Lcom/ts/MainUI/R$string;->can_zdjs:I

    iget-object v1, p0, Lcom/ts/can/gac/trumpchi/CanGqcqSetAttachActivity;->mSWArr:[I

    const/4 v2, 0x3

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/gac/trumpchi/CanGqcqSetAttachActivity;->AddPopupItem(I[II)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/gac/trumpchi/CanGqcqSetAttachActivity;->mItemZdjs:Lcom/ts/canview/CanItemPopupList;

    .line 125
    sget v0, Lcom/ts/MainUI/R$string;->can_ykqctc:I

    iget-object v1, p0, Lcom/ts/can/gac/trumpchi/CanGqcqSetAttachActivity;->mSWArr:[I

    const/4 v2, 0x4

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/gac/trumpchi/CanGqcqSetAttachActivity;->AddPopupItem(I[II)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/gac/trumpchi/CanGqcqSetAttachActivity;->mItemYkqctc:Lcom/ts/canview/CanItemPopupList;

    .line 126
    sget v0, Lcom/ts/MainUI/R$string;->can_ygwh:I

    iget-object v1, p0, Lcom/ts/can/gac/trumpchi/CanGqcqSetAttachActivity;->mSWArr:[I

    const/4 v2, 0x5

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/gac/trumpchi/CanGqcqSetAttachActivity;->AddPopupItem(I[II)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/gac/trumpchi/CanGqcqSetAttachActivity;->mItemYgwh:Lcom/ts/canview/CanItemPopupList;

    .line 127
    sget v0, Lcom/ts/MainUI/R$string;->can_ddzdhyg:I

    iget-object v1, p0, Lcom/ts/can/gac/trumpchi/CanGqcqSetAttachActivity;->mSWArr:[I

    const/4 v2, 0x6

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/gac/trumpchi/CanGqcqSetAttachActivity;->AddPopupItem(I[II)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/gac/trumpchi/CanGqcqSetAttachActivity;->mItemDdzdyg:Lcom/ts/canview/CanItemPopupList;

    .line 128
    sget v0, Lcom/ts/MainUI/R$string;->can_hsjzdzd:I

    iget-object v1, p0, Lcom/ts/can/gac/trumpchi/CanGqcqSetAttachActivity;->mSWArr:[I

    const/4 v2, 0x7

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/gac/trumpchi/CanGqcqSetAttachActivity;->AddPopupItem(I[II)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/gac/trumpchi/CanGqcqSetAttachActivity;->mItemHsjzd:Lcom/ts/canview/CanItemPopupList;

    .line 129
    sget v0, Lcom/ts/MainUI/R$string;->can_gqcq_gs4_jsbstsy:I

    iget-object v1, p0, Lcom/ts/can/gac/trumpchi/CanGqcqSetAttachActivity;->mSWArr:[I

    const/16 v2, 0x8

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/gac/trumpchi/CanGqcqSetAttachActivity;->AddPopupItem(I[II)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/gac/trumpchi/CanGqcqSetAttachActivity;->mItemJsbstsy:Lcom/ts/canview/CanItemPopupList;

    .line 130
    sget v0, Lcom/ts/MainUI/R$string;->can_gs8_znzdbs:I

    iget-object v1, p0, Lcom/ts/can/gac/trumpchi/CanGqcqSetAttachActivity;->mSWArr:[I

    const/16 v2, 0x9

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/gac/trumpchi/CanGqcqSetAttachActivity;->AddPopupItem(I[II)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/gac/trumpchi/CanGqcqSetAttachActivity;->mItemZnzdbs:Lcom/ts/canview/CanItemPopupList;

    .line 131
    sget v0, Lcom/ts/MainUI/R$string;->can_gs8_znzdjs:I

    iget-object v1, p0, Lcom/ts/can/gac/trumpchi/CanGqcqSetAttachActivity;->mSWArr:[I

    const/16 v2, 0xa

    invoke-virtual {p0, v0, v1, v2}, Lcom/ts/can/gac/trumpchi/CanGqcqSetAttachActivity;->AddPopupItem(I[II)Lcom/ts/canview/CanItemPopupList;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/gac/trumpchi/CanGqcqSetAttachActivity;->mItemZnzdjs:Lcom/ts/canview/CanItemPopupList;

    .line 133
    invoke-virtual {p0}, Lcom/ts/can/gac/trumpchi/CanGqcqSetAttachActivity;->LayoutUI()V

    .line 135
    return-void
.end method

.method protected IsHaveItem(I)Z
    .locals 3
    .param p1, "item"    # I

    .prologue
    const/4 v2, 0x6

    .line 149
    const/4 v0, 0x0

    .line 151
    .local v0, "ret":I
    packed-switch p1, :pswitch_data_0

    .line 196
    :cond_0
    :goto_0
    invoke-static {v0}, Lcom/ts/can/gac/trumpchi/CanGqcqSetAttachActivity;->i2b(I)Z

    move-result v1

    return v1

    .line 154
    :pswitch_0
    const/4 v0, 0x1

    .line 155
    goto :goto_0

    .line 157
    :pswitch_1
    const/4 v0, 0x1

    .line 158
    goto :goto_0

    .line 160
    :pswitch_2
    const/4 v0, 0x1

    .line 161
    goto :goto_0

    .line 163
    :pswitch_3
    const/4 v0, 0x1

    .line 164
    goto :goto_0

    .line 166
    :pswitch_4
    const/4 v0, 0x1

    .line 167
    goto :goto_0

    .line 169
    :pswitch_5
    const/4 v0, 0x1

    .line 170
    goto :goto_0

    .line 172
    :pswitch_6
    const/4 v0, 0x1

    .line 173
    goto :goto_0

    .line 175
    :pswitch_7
    const/4 v1, 0x5

    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetSubType()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 177
    const/4 v0, 0x1

    .line 179
    goto :goto_0

    .line 182
    :pswitch_8
    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetSubType()I

    move-result v1

    if-ne v2, v1, :cond_0

    .line 184
    const/4 v0, 0x1

    .line 186
    goto :goto_0

    .line 188
    :pswitch_9
    invoke-static {}, Lcom/lgb/canmodule/CanJni;->GetSubType()I

    move-result v1

    if-ne v2, v1, :cond_0

    .line 190
    const/4 v0, 0x1

    .line 192
    goto :goto_0

    .line 151
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
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method protected LayoutUI()V
    .locals 2

    .prologue
    .line 141
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    const/16 v1, 0xa

    if-le v0, v1, :cond_0

    .line 145
    return-void

    .line 143
    :cond_0
    invoke-virtual {p0, v0}, Lcom/ts/can/gac/trumpchi/CanGqcqSetAttachActivity;->ShowItem(I)V

    .line 141
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected QueryData()V
    .locals 0

    .prologue
    .line 96
    return-void
.end method

.method protected ResetData(Z)V
    .locals 3
    .param p1, "check"    # Z

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/ts/can/gac/trumpchi/CanGqcqSetAttachActivity;->GetSetData()V

    .line 71
    iget-object v0, p0, Lcom/ts/can/gac/trumpchi/CanGqcqSetAttachActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$GS4Set;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$GS4Set;->UpdateOnce:I

    invoke-static {v0}, Lcom/ts/can/gac/trumpchi/CanGqcqSetAttachActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 73
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ts/can/gac/trumpchi/CanGqcqSetAttachActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$GS4Set;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$GS4Set;->Update:I

    invoke-static {v0}, Lcom/ts/can/gac/trumpchi/CanGqcqSetAttachActivity;->i2b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/ts/can/gac/trumpchi/CanGqcqSetAttachActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$GS4Set;

    const/4 v1, 0x0

    iput v1, v0, Lcom/lgb/canmodule/CanDataInfo$GS4Set;->Update:I

    .line 76
    iget-object v0, p0, Lcom/ts/can/gac/trumpchi/CanGqcqSetAttachActivity;->mItemYkjs:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/gac/trumpchi/CanGqcqSetAttachActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$GS4Set;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$GS4Set;->YkUnlck:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 77
    iget-object v0, p0, Lcom/ts/can/gac/trumpchi/CanGqcqSetAttachActivity;->mItemCsss:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/gac/trumpchi/CanGqcqSetAttachActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$GS4Set;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$GS4Set;->SpeedLock:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 78
    iget-object v0, p0, Lcom/ts/can/gac/trumpchi/CanGqcqSetAttachActivity;->mItemZdjs:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/gac/trumpchi/CanGqcqSetAttachActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$GS4Set;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$GS4Set;->AutoUnlock:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 79
    iget-object v0, p0, Lcom/ts/can/gac/trumpchi/CanGqcqSetAttachActivity;->mItemYkqctc:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/gac/trumpchi/CanGqcqSetAttachActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$GS4Set;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$GS4Set;->Ykzqctc:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 80
    iget-object v0, p0, Lcom/ts/can/gac/trumpchi/CanGqcqSetAttachActivity;->mItemYgwh:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/gac/trumpchi/CanGqcqSetAttachActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$GS4Set;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$GS4Set;->Qygwh:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 81
    iget-object v0, p0, Lcom/ts/can/gac/trumpchi/CanGqcqSetAttachActivity;->mItemDdzdyg:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/gac/trumpchi/CanGqcqSetAttachActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$GS4Set;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$GS4Set;->Hygdd:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 82
    iget-object v0, p0, Lcom/ts/can/gac/trumpchi/CanGqcqSetAttachActivity;->mItemHsjzd:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/gac/trumpchi/CanGqcqSetAttachActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$GS4Set;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$GS4Set;->Hsjzd:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 84
    iget-object v0, p0, Lcom/ts/can/gac/trumpchi/CanGqcqSetAttachActivity;->mItemZnzdbs:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/gac/trumpchi/CanGqcqSetAttachActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$GS4Set;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$GS4Set;->Znzdbs:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 85
    iget-object v0, p0, Lcom/ts/can/gac/trumpchi/CanGqcqSetAttachActivity;->mItemZnzdjs:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/gac/trumpchi/CanGqcqSetAttachActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$GS4Set;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$GS4Set;->Znzdjs:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 87
    const-string v0, "HAHA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/ts/can/gac/trumpchi/CanGqcqSetAttachActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$GS4Set;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$GS4Set;->Jsgstsy:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    iget-object v0, p0, Lcom/ts/can/gac/trumpchi/CanGqcqSetAttachActivity;->mItemJsbstsy:Lcom/ts/canview/CanItemPopupList;

    iget-object v1, p0, Lcom/ts/can/gac/trumpchi/CanGqcqSetAttachActivity;->mSetData:Lcom/lgb/canmodule/CanDataInfo$GS4Set;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$GS4Set;->Jsgstsy:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemPopupList;->SetSel(I)V

    .line 91
    :cond_1
    return-void
.end method

.method protected ShowItem(I)V
    .locals 2
    .param p1, "item"    # I

    .prologue
    .line 203
    invoke-virtual {p0, p1}, Lcom/ts/can/gac/trumpchi/CanGqcqSetAttachActivity;->IsHaveItem(I)Z

    move-result v0

    .line 204
    .local v0, "show":Z
    packed-switch p1, :pswitch_data_0

    .line 250
    :goto_0
    return-void

    .line 208
    :pswitch_0
    iget-object v1, p0, Lcom/ts/can/gac/trumpchi/CanGqcqSetAttachActivity;->mItemYkjs:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    goto :goto_0

    .line 212
    :pswitch_1
    iget-object v1, p0, Lcom/ts/can/gac/trumpchi/CanGqcqSetAttachActivity;->mItemCsss:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    goto :goto_0

    .line 216
    :pswitch_2
    iget-object v1, p0, Lcom/ts/can/gac/trumpchi/CanGqcqSetAttachActivity;->mItemZdjs:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    goto :goto_0

    .line 220
    :pswitch_3
    iget-object v1, p0, Lcom/ts/can/gac/trumpchi/CanGqcqSetAttachActivity;->mItemYkqctc:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    goto :goto_0

    .line 224
    :pswitch_4
    iget-object v1, p0, Lcom/ts/can/gac/trumpchi/CanGqcqSetAttachActivity;->mItemYgwh:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    goto :goto_0

    .line 228
    :pswitch_5
    iget-object v1, p0, Lcom/ts/can/gac/trumpchi/CanGqcqSetAttachActivity;->mItemDdzdyg:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    goto :goto_0

    .line 232
    :pswitch_6
    iget-object v1, p0, Lcom/ts/can/gac/trumpchi/CanGqcqSetAttachActivity;->mItemHsjzd:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    goto :goto_0

    .line 236
    :pswitch_7
    iget-object v1, p0, Lcom/ts/can/gac/trumpchi/CanGqcqSetAttachActivity;->mItemJsbstsy:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    goto :goto_0

    .line 240
    :pswitch_8
    iget-object v1, p0, Lcom/ts/can/gac/trumpchi/CanGqcqSetAttachActivity;->mItemZnzdbs:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    goto :goto_0

    .line 244
    :pswitch_9
    iget-object v1, p0, Lcom/ts/can/gac/trumpchi/CanGqcqSetAttachActivity;->mItemZnzdjs:Lcom/ts/canview/CanItemPopupList;

    invoke-virtual {v1, v0}, Lcom/ts/canview/CanItemPopupList;->ShowGone(Z)V

    goto :goto_0

    .line 204
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public UserAll()V
    .locals 1

    .prologue
    .line 290
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ts/can/gac/trumpchi/CanGqcqSetAttachActivity;->ResetData(Z)V

    .line 291
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 275
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 283
    .local v0, "item":I
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 62
    invoke-super {p0, p1}, Lcom/ts/can/gac/trumpchi/CanGqcqBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 63
    sget v0, Lcom/ts/MainUI/R$layout;->activity_can_comm_list:I

    invoke-virtual {p0, v0}, Lcom/ts/can/gac/trumpchi/CanGqcqSetAttachActivity;->setContentView(I)V

    .line 65
    invoke-virtual {p0}, Lcom/ts/can/gac/trumpchi/CanGqcqSetAttachActivity;->InitUI()V

    .line 66
    return-void
.end method

.method public onItem(II)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "item"    # I

    .prologue
    .line 297
    packed-switch p1, :pswitch_data_0

    .line 342
    :goto_0
    return-void

    .line 300
    :pswitch_0
    const/16 v0, 0xc

    invoke-virtual {p0, v0, p2}, Lcom/ts/can/gac/trumpchi/CanGqcqSetAttachActivity;->CarSet(II)V

    goto :goto_0

    .line 304
    :pswitch_1
    const/16 v0, 0xd

    invoke-virtual {p0, v0, p2}, Lcom/ts/can/gac/trumpchi/CanGqcqSetAttachActivity;->CarSet(II)V

    goto :goto_0

    .line 308
    :pswitch_2
    const/16 v0, 0xe

    invoke-virtual {p0, v0, p2}, Lcom/ts/can/gac/trumpchi/CanGqcqSetAttachActivity;->CarSet(II)V

    goto :goto_0

    .line 312
    :pswitch_3
    const/16 v0, 0xf

    invoke-virtual {p0, v0, p2}, Lcom/ts/can/gac/trumpchi/CanGqcqSetAttachActivity;->CarSet(II)V

    goto :goto_0

    .line 316
    :pswitch_4
    const/16 v0, 0x10

    invoke-virtual {p0, v0, p2}, Lcom/ts/can/gac/trumpchi/CanGqcqSetAttachActivity;->CarSet(II)V

    goto :goto_0

    .line 320
    :pswitch_5
    const/16 v0, 0x11

    invoke-virtual {p0, v0, p2}, Lcom/ts/can/gac/trumpchi/CanGqcqSetAttachActivity;->CarSet(II)V

    goto :goto_0

    .line 324
    :pswitch_6
    const/16 v0, 0x1b

    invoke-virtual {p0, v0, p2}, Lcom/ts/can/gac/trumpchi/CanGqcqSetAttachActivity;->CarSet(II)V

    goto :goto_0

    .line 328
    :pswitch_7
    const/16 v0, 0x1c

    invoke-virtual {p0, v0, p2}, Lcom/ts/can/gac/trumpchi/CanGqcqSetAttachActivity;->CarSet(II)V

    goto :goto_0

    .line 332
    :pswitch_8
    const/16 v0, 0x1d

    invoke-virtual {p0, v0, p2}, Lcom/ts/can/gac/trumpchi/CanGqcqSetAttachActivity;->CarSet(II)V

    goto :goto_0

    .line 336
    :pswitch_9
    const/16 v0, 0x1e

    invoke-virtual {p0, v0, p2}, Lcom/ts/can/gac/trumpchi/CanGqcqSetAttachActivity;->CarSet(II)V

    goto :goto_0

    .line 297
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 114
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 115
    invoke-super {p0}, Lcom/ts/can/gac/trumpchi/CanGqcqBaseActivity;->onPause()V

    .line 116
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 101
    invoke-super {p0}, Lcom/ts/can/gac/trumpchi/CanGqcqBaseActivity;->onResume()V

    .line 102
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 103
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ts/can/gac/trumpchi/CanGqcqSetAttachActivity;->ResetData(Z)V

    .line 104
    invoke-virtual {p0}, Lcom/ts/can/gac/trumpchi/CanGqcqSetAttachActivity;->QueryData()V

    .line 106
    const-string v0, "CanGqcqSetAttachActivity"

    const-string v1, "-----onResume-----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    return-void
.end method
