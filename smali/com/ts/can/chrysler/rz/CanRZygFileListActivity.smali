.class public Lcom/ts/can/chrysler/rz/CanRZygFileListActivity;
.super Lcom/ts/can/CanBaseActivity;
.source "CanRZygFileListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/ts/MainUI/UserCallBack;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ts/can/chrysler/rz/CanRZygFileListActivity$FileListAdapter;,
        Lcom/ts/can/chrysler/rz/CanRZygFileListActivity$ViewHolder;
    }
.end annotation


# static fields
.field public static final ITEM_AC_LINK_AUTO:I = 0x1

.field public static final ITEM_LOOP_LINK_AUTO:I = 0x2

.field private static final ITEM_MAX:I = 0x2

.field private static final ITEM_MIN:I = 0x1

.field public static final TAG:Ljava/lang/String; = "CanRZygFileListActivity"


# instance fields
.field private mAdapter:Lcom/ts/can/chrysler/rz/CanRZygFileListActivity$FileListAdapter;

.field protected mCurTopIndex:I

.field private mFirstV:I

.field protected mInfoData:Lcom/lgb/canmodule/CanDataInfo$ChrOthCdInfo;

.field protected mIsLoadOK:Z

.field private mItemList:[Lcom/ts/canview/CanItemTextBtnList;

.field protected mLineLayout:Landroid/widget/LinearLayout;

.field protected mListItemData:Lcom/lgb/canmodule/CanDataInfo$ChrOthText;

.field private mLvFile:Landroid/widget/ListView;

.field private mManager:Lcom/ts/canview/CanScrollList;

.field protected mStaData:Lcom/lgb/canmodule/CanDataInfo$ChrOthCdSta;

.field protected mSvLayout:Landroid/widget/ScrollView;

.field protected mTotal:I

.field private mUpdate:[I

.field private mbLayout:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/16 v2, 0x3e8

    const/4 v1, 0x0

    .line 31
    invoke-direct {p0}, Lcom/ts/can/CanBaseActivity;-><init>()V

    .line 46
    const/4 v0, -0x1

    iput v0, p0, Lcom/ts/can/chrysler/rz/CanRZygFileListActivity;->mFirstV:I

    .line 49
    new-array v0, v2, [Lcom/ts/canview/CanItemTextBtnList;

    iput-object v0, p0, Lcom/ts/can/chrysler/rz/CanRZygFileListActivity;->mItemList:[Lcom/ts/canview/CanItemTextBtnList;

    .line 50
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/ts/can/chrysler/rz/CanRZygFileListActivity;->mUpdate:[I

    .line 52
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$ChrOthCdInfo;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$ChrOthCdInfo;-><init>()V

    iput-object v0, p0, Lcom/ts/can/chrysler/rz/CanRZygFileListActivity;->mInfoData:Lcom/lgb/canmodule/CanDataInfo$ChrOthCdInfo;

    .line 53
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$ChrOthCdSta;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$ChrOthCdSta;-><init>()V

    iput-object v0, p0, Lcom/ts/can/chrysler/rz/CanRZygFileListActivity;->mStaData:Lcom/lgb/canmodule/CanDataInfo$ChrOthCdSta;

    .line 54
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$ChrOthText;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$ChrOthText;-><init>()V

    iput-object v0, p0, Lcom/ts/can/chrysler/rz/CanRZygFileListActivity;->mListItemData:Lcom/lgb/canmodule/CanDataInfo$ChrOthText;

    .line 56
    iput-boolean v1, p0, Lcom/ts/can/chrysler/rz/CanRZygFileListActivity;->mIsLoadOK:Z

    .line 57
    iput v1, p0, Lcom/ts/can/chrysler/rz/CanRZygFileListActivity;->mTotal:I

    .line 58
    iput v1, p0, Lcom/ts/can/chrysler/rz/CanRZygFileListActivity;->mCurTopIndex:I

    .line 31
    return-void
.end method


# virtual methods
.method protected AddCheckItem(II)Lcom/ts/canview/CanItemSwitchList;
    .locals 3
    .param p1, "resId"    # I
    .param p2, "Id"    # I

    .prologue
    .line 310
    new-instance v0, Lcom/ts/canview/CanItemSwitchList;

    invoke-direct {v0, p0, p1}, Lcom/ts/canview/CanItemSwitchList;-><init>(Landroid/content/Context;I)V

    .line 311
    .local v0, "item":Lcom/ts/canview/CanItemSwitchList;
    invoke-virtual {v0, p0, p2}, Lcom/ts/canview/CanItemSwitchList;->SetIdClickListener(Landroid/view/View$OnClickListener;I)V

    .line 312
    iget-object v1, p0, Lcom/ts/can/chrysler/rz/CanRZygFileListActivity;->mManager:Lcom/ts/canview/CanScrollList;

    invoke-virtual {v0}, Lcom/ts/canview/CanItemSwitchList;->GetView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    .line 313
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemSwitchList;->ShowGone(Z)V

    .line 314
    return-object v0
.end method

.method protected AddItem(I)V
    .locals 3
    .param p1, "i"    # I

    .prologue
    const/4 v2, 0x0

    .line 235
    iget-object v0, p0, Lcom/ts/can/chrysler/rz/CanRZygFileListActivity;->mItemList:[Lcom/ts/canview/CanItemTextBtnList;

    array-length v0, v0

    if-le p1, v0, :cond_0

    .line 250
    :goto_0
    return-void

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/ts/can/chrysler/rz/CanRZygFileListActivity;->mUpdate:[I

    aput v2, v0, p1

    .line 241
    iget-object v0, p0, Lcom/ts/can/chrysler/rz/CanRZygFileListActivity;->mItemList:[Lcom/ts/canview/CanItemTextBtnList;

    aget-object v0, v0, p1

    if-nez v0, :cond_1

    .line 243
    iget-object v0, p0, Lcom/ts/can/chrysler/rz/CanRZygFileListActivity;->mItemList:[Lcom/ts/canview/CanItemTextBtnList;

    new-instance v1, Lcom/ts/canview/CanItemTextBtnList;

    invoke-direct {v1, p0, v2}, Lcom/ts/canview/CanItemTextBtnList;-><init>(Landroid/content/Context;I)V

    aput-object v1, v0, p1

    .line 244
    iget-object v0, p0, Lcom/ts/can/chrysler/rz/CanRZygFileListActivity;->mItemList:[Lcom/ts/canview/CanItemTextBtnList;

    aget-object v0, v0, p1

    invoke-virtual {v0, v2}, Lcom/ts/canview/CanItemTextBtnList;->ShowArrow(Z)V

    .line 245
    iget-object v0, p0, Lcom/ts/can/chrysler/rz/CanRZygFileListActivity;->mItemList:[Lcom/ts/canview/CanItemTextBtnList;

    aget-object v0, v0, p1

    invoke-virtual {v0, p0, p1}, Lcom/ts/canview/CanItemTextBtnList;->SetIdClickListener(Landroid/view/View$OnClickListener;I)V

    .line 248
    :cond_1
    iget-object v0, p0, Lcom/ts/can/chrysler/rz/CanRZygFileListActivity;->mItemList:[Lcom/ts/canview/CanItemTextBtnList;

    aget-object v0, v0, p1

    new-instance v1, Ljava/lang/StringBuilder;

    add-int/lit8 v2, p1, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "\u3001 Track "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanItemTextBtnList;->SetVal(Ljava/lang/String;)V

    .line 249
    iget-object v0, p0, Lcom/ts/can/chrysler/rz/CanRZygFileListActivity;->mManager:Lcom/ts/canview/CanScrollList;

    iget-object v1, p0, Lcom/ts/can/chrysler/rz/CanRZygFileListActivity;->mItemList:[Lcom/ts/canview/CanItemTextBtnList;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Lcom/ts/canview/CanItemTextBtnList;->GetView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanScrollList;->AddView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public GetFirstView()I
    .locals 8

    .prologue
    .line 349
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 350
    .local v2, "scrollBounds":Landroid/graphics/Rect;
    iget-object v5, p0, Lcom/ts/can/chrysler/rz/CanRZygFileListActivity;->mSvLayout:Landroid/widget/ScrollView;

    invoke-virtual {v5, v2}, Landroid/widget/ScrollView;->getHitRect(Landroid/graphics/Rect;)V

    .line 351
    iget-object v5, p0, Lcom/ts/can/chrysler/rz/CanRZygFileListActivity;->mLineLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    .line 352
    .local v3, "total":I
    const/4 v1, -0x1

    .line 355
    .local v1, "ret":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v3, :cond_0

    .line 377
    :goto_1
    return v1

    .line 357
    :cond_0
    iget-object v5, p0, Lcom/ts/can/chrysler/rz/CanRZygFileListActivity;->mLineLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 358
    .local v4, "v":Landroid/view/View;
    invoke-virtual {v4, v2}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 363
    const/4 v5, -0x1

    iget v6, p0, Lcom/ts/can/chrysler/rz/CanRZygFileListActivity;->mFirstV:I

    if-ne v5, v6, :cond_1

    .line 365
    const-string v6, "CanRZygFileListActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "total = "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", first visible = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    :cond_1
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 368
    goto :goto_1

    .line 355
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected GetLayout()V
    .locals 1

    .prologue
    .line 343
    sget v0, Lcom/ts/MainUI/R$id;->can_comm_scrview:I

    invoke-virtual {p0, v0}, Lcom/ts/can/chrysler/rz/CanRZygFileListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/ts/can/chrysler/rz/CanRZygFileListActivity;->mSvLayout:Landroid/widget/ScrollView;

    .line 344
    sget v0, Lcom/ts/MainUI/R$id;->can_comm_lineview:I

    invoke-virtual {p0, v0}, Lcom/ts/can/chrysler/rz/CanRZygFileListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/ts/can/chrysler/rz/CanRZygFileListActivity;->mLineLayout:Landroid/widget/LinearLayout;

    .line 345
    return-void
.end method

.method protected InitUI()V
    .locals 2

    .prologue
    .line 254
    new-instance v0, Lcom/ts/canview/CanScrollList;

    invoke-direct {v0, p0}, Lcom/ts/canview/CanScrollList;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/ts/can/chrysler/rz/CanRZygFileListActivity;->mManager:Lcom/ts/canview/CanScrollList;

    .line 255
    invoke-virtual {p0}, Lcom/ts/can/chrysler/rz/CanRZygFileListActivity;->GetLayout()V

    .line 268
    iget-object v0, p0, Lcom/ts/can/chrysler/rz/CanRZygFileListActivity;->mManager:Lcom/ts/canview/CanScrollList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/canview/CanScrollList;->ShowHide(Z)V

    .line 270
    return-void
.end method

.method protected IsHaveItem(I)Z
    .locals 2
    .param p1, "item"    # I

    .prologue
    .line 284
    const/4 v0, 0x0

    .line 291
    .local v0, "ret":I
    invoke-static {v0}, Lcom/ts/can/chrysler/rz/CanRZygFileListActivity;->i2b(I)Z

    move-result v1

    return v1
.end method

.method protected IsLoadOK()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 222
    iget-object v1, p0, Lcom/ts/can/chrysler/rz/CanRZygFileListActivity;->mStaData:Lcom/lgb/canmodule/CanDataInfo$ChrOthCdSta;

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$ChrOthCdSta;->Sta:I

    if-eq v0, v1, :cond_0

    .line 223
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/ts/can/chrysler/rz/CanRZygFileListActivity;->mStaData:Lcom/lgb/canmodule/CanDataInfo$ChrOthCdSta;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$ChrOthCdSta;->Sta:I

    if-eq v1, v2, :cond_0

    .line 224
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/ts/can/chrysler/rz/CanRZygFileListActivity;->mStaData:Lcom/lgb/canmodule/CanDataInfo$ChrOthCdSta;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$ChrOthCdSta;->Sta:I

    if-eq v1, v2, :cond_0

    .line 225
    const/16 v1, 0x8

    iget-object v2, p0, Lcom/ts/can/chrysler/rz/CanRZygFileListActivity;->mStaData:Lcom/lgb/canmodule/CanDataInfo$ChrOthCdSta;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$ChrOthCdSta;->Sta:I

    if-ne v1, v2, :cond_1

    .line 230
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected LayoutUI()V
    .locals 2

    .prologue
    .line 276
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    .line 280
    return-void

    .line 278
    :cond_0
    invoke-virtual {p0, v0}, Lcom/ts/can/chrysler/rz/CanRZygFileListActivity;->ShowItem(I)V

    .line 276
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected QueryData()V
    .locals 0

    .prologue
    .line 191
    return-void
.end method

.method protected ResetData(Z)V
    .locals 7
    .param p1, "check"    # Z

    .prologue
    const/16 v6, 0x3e8

    const/4 v5, 0x0

    .line 102
    iget-object v3, p0, Lcom/ts/can/chrysler/rz/CanRZygFileListActivity;->mInfoData:Lcom/lgb/canmodule/CanDataInfo$ChrOthCdInfo;

    invoke-static {v3}, Lcom/lgb/canmodule/CanJni;->ChrOthGetCdInfo(Lcom/lgb/canmodule/CanDataInfo$ChrOthCdInfo;)V

    .line 103
    iget-object v3, p0, Lcom/ts/can/chrysler/rz/CanRZygFileListActivity;->mStaData:Lcom/lgb/canmodule/CanDataInfo$ChrOthCdSta;

    invoke-static {v3}, Lcom/lgb/canmodule/CanJni;->ChrOthGetCdSta(Lcom/lgb/canmodule/CanDataInfo$ChrOthCdSta;)V

    .line 104
    invoke-virtual {p0}, Lcom/ts/can/chrysler/rz/CanRZygFileListActivity;->IsLoadOK()Z

    move-result v1

    .line 105
    .local v1, "ok":Z
    iget-boolean v3, p0, Lcom/ts/can/chrysler/rz/CanRZygFileListActivity;->mIsLoadOK:Z

    if-eq v1, v3, :cond_0

    .line 107
    iput-boolean v1, p0, Lcom/ts/can/chrysler/rz/CanRZygFileListActivity;->mIsLoadOK:Z

    .line 109
    iget-boolean v3, p0, Lcom/ts/can/chrysler/rz/CanRZygFileListActivity;->mIsLoadOK:Z

    if-eqz v3, :cond_4

    .line 111
    iget-object v3, p0, Lcom/ts/can/chrysler/rz/CanRZygFileListActivity;->mLvFile:Landroid/widget/ListView;

    invoke-virtual {v3, v5}, Landroid/widget/ListView;->setVisibility(I)V

    .line 120
    :cond_0
    :goto_0
    iget-boolean v3, p0, Lcom/ts/can/chrysler/rz/CanRZygFileListActivity;->mIsLoadOK:Z

    if-eqz v3, :cond_3

    .line 122
    iget v3, p0, Lcom/ts/can/chrysler/rz/CanRZygFileListActivity;->mTotal:I

    iget-object v4, p0, Lcom/ts/can/chrysler/rz/CanRZygFileListActivity;->mInfoData:Lcom/lgb/canmodule/CanDataInfo$ChrOthCdInfo;

    iget v4, v4, Lcom/lgb/canmodule/CanDataInfo$ChrOthCdInfo;->TotalTrack:I

    if-eq v3, v4, :cond_2

    .line 124
    iget-object v3, p0, Lcom/ts/can/chrysler/rz/CanRZygFileListActivity;->mInfoData:Lcom/lgb/canmodule/CanDataInfo$ChrOthCdInfo;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$ChrOthCdInfo;->TotalTrack:I

    iput v3, p0, Lcom/ts/can/chrysler/rz/CanRZygFileListActivity;->mTotal:I

    .line 125
    iget v3, p0, Lcom/ts/can/chrysler/rz/CanRZygFileListActivity;->mTotal:I

    if-le v3, v6, :cond_1

    .line 127
    iput v6, p0, Lcom/ts/can/chrysler/rz/CanRZygFileListActivity;->mTotal:I

    .line 136
    :cond_1
    iget-object v3, p0, Lcom/ts/can/chrysler/rz/CanRZygFileListActivity;->mAdapter:Lcom/ts/can/chrysler/rz/CanRZygFileListActivity$FileListAdapter;

    iget v4, p0, Lcom/ts/can/chrysler/rz/CanRZygFileListActivity;->mTotal:I

    invoke-virtual {v3, v4}, Lcom/ts/can/chrysler/rz/CanRZygFileListActivity$FileListAdapter;->SetSize(I)V

    .line 139
    :cond_2
    iget v3, p0, Lcom/ts/can/chrysler/rz/CanRZygFileListActivity;->mTotal:I

    if-lez v3, :cond_3

    .line 141
    iget v0, p0, Lcom/ts/can/chrysler/rz/CanRZygFileListActivity;->mCurTopIndex:I

    .line 142
    .local v0, "curTop":I
    if-ltz v0, :cond_3

    iget v3, p0, Lcom/ts/can/chrysler/rz/CanRZygFileListActivity;->mTotal:I

    if-ge v0, v3, :cond_3

    .line 144
    iget-object v3, p0, Lcom/ts/can/chrysler/rz/CanRZygFileListActivity;->mUpdate:[I

    const/4 v4, 0x7

    invoke-static {v3, v4, v0}, Lcom/lgb/canmodule/CanJni;->ChrOthGetListUpdateItem([III)I

    move-result v2

    .line 145
    .local v2, "updateNum":I
    if-lez v2, :cond_3

    .line 147
    iget-object v3, p0, Lcom/ts/can/chrysler/rz/CanRZygFileListActivity;->mAdapter:Lcom/ts/can/chrysler/rz/CanRZygFileListActivity$FileListAdapter;

    invoke-virtual {v3}, Lcom/ts/can/chrysler/rz/CanRZygFileListActivity$FileListAdapter;->notifyDataSetChanged()V

    .line 148
    const-string v3, "CanRZygFileListActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "curTop = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", updateNum = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    .end local v0    # "curTop":I
    .end local v2    # "updateNum":I
    :cond_3
    return-void

    .line 115
    :cond_4
    iget-object v3, p0, Lcom/ts/can/chrysler/rz/CanRZygFileListActivity;->mLvFile:Landroid/widget/ListView;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setVisibility(I)V

    .line 116
    iput v5, p0, Lcom/ts/can/chrysler/rz/CanRZygFileListActivity;->mTotal:I

    goto :goto_0
.end method

.method protected ShowItem(I)V
    .locals 1
    .param p1, "item"    # I

    .prologue
    .line 298
    invoke-virtual {p0, p1}, Lcom/ts/can/chrysler/rz/CanRZygFileListActivity;->IsHaveItem(I)Z

    move-result v0

    .line 306
    .local v0, "show":Z
    return-void
.end method

.method public UserAll()V
    .locals 1

    .prologue
    .line 337
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ts/can/chrysler/rz/CanRZygFileListActivity;->ResetData(Z)V

    .line 338
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 322
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 330
    .local v0, "item":I
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 67
    invoke-super {p0, p1}, Lcom/ts/can/CanBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 68
    sget v0, Lcom/ts/MainUI/R$layout;->activity_can_listview:I

    invoke-virtual {p0, v0}, Lcom/ts/can/chrysler/rz/CanRZygFileListActivity;->setContentView(I)V

    .line 72
    sget v0, Lcom/ts/MainUI/R$id;->list_view:I

    invoke-virtual {p0, v0}, Lcom/ts/can/chrysler/rz/CanRZygFileListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/ts/can/chrysler/rz/CanRZygFileListActivity;->mLvFile:Landroid/widget/ListView;

    .line 73
    new-instance v0, Lcom/ts/can/chrysler/rz/CanRZygFileListActivity$FileListAdapter;

    invoke-direct {v0, p0, p0}, Lcom/ts/can/chrysler/rz/CanRZygFileListActivity$FileListAdapter;-><init>(Lcom/ts/can/chrysler/rz/CanRZygFileListActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ts/can/chrysler/rz/CanRZygFileListActivity;->mAdapter:Lcom/ts/can/chrysler/rz/CanRZygFileListActivity$FileListAdapter;

    .line 74
    iget-object v0, p0, Lcom/ts/can/chrysler/rz/CanRZygFileListActivity;->mLvFile:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/ts/can/chrysler/rz/CanRZygFileListActivity;->mAdapter:Lcom/ts/can/chrysler/rz/CanRZygFileListActivity$FileListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 77
    iget-object v0, p0, Lcom/ts/can/chrysler/rz/CanRZygFileListActivity;->mLvFile:Landroid/widget/ListView;

    new-instance v1, Lcom/ts/can/chrysler/rz/CanRZygFileListActivity$1;

    invoke-direct {v1, p0}, Lcom/ts/can/chrysler/rz/CanRZygFileListActivity$1;-><init>(Lcom/ts/can/chrysler/rz/CanRZygFileListActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 97
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 214
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 215
    invoke-super {p0}, Lcom/ts/can/CanBaseActivity;->onPause()V

    .line 217
    const-string v0, "CanRZygFileListActivity"

    const-string v1, "-----onPause-----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 196
    invoke-super {p0}, Lcom/ts/can/CanBaseActivity;->onResume()V

    .line 197
    invoke-static {}, Lcom/ts/MainUI/MainTask;->GetInstance()Lcom/ts/MainUI/MainTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ts/MainUI/MainTask;->SetUserCallBack(Lcom/ts/MainUI/UserCallBack;)V

    .line 199
    iput-boolean v1, p0, Lcom/ts/can/chrysler/rz/CanRZygFileListActivity;->mIsLoadOK:Z

    .line 200
    iput v1, p0, Lcom/ts/can/chrysler/rz/CanRZygFileListActivity;->mTotal:I

    .line 201
    const/4 v0, -0x1

    iput v0, p0, Lcom/ts/can/chrysler/rz/CanRZygFileListActivity;->mFirstV:I

    .line 203
    invoke-virtual {p0, v1}, Lcom/ts/can/chrysler/rz/CanRZygFileListActivity;->ResetData(Z)V

    .line 204
    invoke-virtual {p0}, Lcom/ts/can/chrysler/rz/CanRZygFileListActivity;->QueryData()V

    .line 206
    const-string v0, "CanRZygFileListActivity"

    const-string v1, "-----onResume-----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    return-void
.end method
