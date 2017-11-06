.class Lcom/ts/factoryset/FsIconActivity$FsIconGridAdapter;
.super Landroid/widget/BaseAdapter;
.source "FsIconActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ts/factoryset/FsIconActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FsIconGridAdapter"
.end annotation


# instance fields
.field private iconClick:Landroid/view/View$OnClickListener;

.field private mBtnIco:[Lcom/ts/other/ParamButton;

.field public mLayoutInflater:Landroid/view/LayoutInflater;

.field private mSel:I

.field private mTotalNum:I

.field private mView:[Landroid/view/View;

.field final synthetic this$0:Lcom/ts/factoryset/FsIconActivity;


# direct methods
.method public constructor <init>(Lcom/ts/factoryset/FsIconActivity;Landroid/content/Context;I)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "num"    # I

    .prologue
    .line 160
    iput-object p1, p0, Lcom/ts/factoryset/FsIconActivity$FsIconGridAdapter;->this$0:Lcom/ts/factoryset/FsIconActivity;

    .line 159
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 153
    const/16 v0, 0x1e

    iput v0, p0, Lcom/ts/factoryset/FsIconActivity$FsIconGridAdapter;->mTotalNum:I

    .line 156
    const/4 v0, -0x1

    iput v0, p0, Lcom/ts/factoryset/FsIconActivity$FsIconGridAdapter;->mSel:I

    .line 279
    new-instance v0, Lcom/ts/factoryset/FsIconActivity$FsIconGridAdapter$1;

    invoke-direct {v0, p0}, Lcom/ts/factoryset/FsIconActivity$FsIconGridAdapter$1;-><init>(Lcom/ts/factoryset/FsIconActivity$FsIconGridAdapter;)V

    iput-object v0, p0, Lcom/ts/factoryset/FsIconActivity$FsIconGridAdapter;->iconClick:Landroid/view/View$OnClickListener;

    .line 161
    if-lez p3, :cond_0

    .line 163
    iput p3, p0, Lcom/ts/factoryset/FsIconActivity$FsIconGridAdapter;->mTotalNum:I

    .line 166
    :cond_0
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/factoryset/FsIconActivity$FsIconGridAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 167
    invoke-virtual {p0}, Lcom/ts/factoryset/FsIconActivity$FsIconGridAdapter;->initView()V

    .line 168
    return-void
.end method


# virtual methods
.method public addIcon(I)Z
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 256
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/ts/factoryset/FsIconActivity$FsIconGridAdapter;->mTotalNum:I

    if-lt v0, v1, :cond_0

    .line 266
    const/4 v1, 0x0

    :goto_1
    return v1

    .line 258
    :cond_0
    invoke-virtual {p0, v0}, Lcom/ts/factoryset/FsIconActivity$FsIconGridAdapter;->getIndexVal(I)I

    move-result v1

    if-nez v1, :cond_1

    .line 260
    invoke-virtual {p0, v0, p1}, Lcom/ts/factoryset/FsIconActivity$FsIconGridAdapter;->setIndexVal(II)V

    .line 261
    invoke-virtual {p0}, Lcom/ts/factoryset/FsIconActivity$FsIconGridAdapter;->notifyDataSetChanged()V

    .line 262
    const/4 v1, 0x1

    goto :goto_1

    .line 256
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final getCount()I
    .locals 1

    .prologue
    .line 354
    iget v0, p0, Lcom/ts/factoryset/FsIconActivity$FsIconGridAdapter;->mTotalNum:I

    return v0
.end method

.method public getIndexVal(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 173
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/ts/factoryset/FsIconActivity$FsIconGridAdapter;->mTotalNum:I

    if-ge p1, v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/ts/factoryset/FsIconActivity$FsIconGridAdapter;->mBtnIco:[Lcom/ts/other/ParamButton;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/ts/other/ParamButton;->getIntParam()I

    move-result v0

    .line 178
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 359
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 364
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 324
    iget-object v2, p0, Lcom/ts/factoryset/FsIconActivity$FsIconGridAdapter;->mBtnIco:[Lcom/ts/other/ParamButton;

    aget-object v0, v2, p1

    .line 325
    .local v0, "curIcon":Lcom/ts/other/ParamButton;
    iget v2, p0, Lcom/ts/factoryset/FsIconActivity$FsIconGridAdapter;->mSel:I

    if-ne v2, p1, :cond_0

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/ts/factoryset/FsIconActivity$FsIconGridAdapter;->this$0:Lcom/ts/factoryset/FsIconActivity;

    iget v3, v3, Lcom/ts/factoryset/FsIconActivity;->mFocusFlg:I

    if-ne v2, v3, :cond_0

    .line 328
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/ts/other/ParamButton;->setSelected(Z)V

    .line 337
    :goto_0
    invoke-virtual {v0}, Lcom/ts/other/ParamButton;->getIntParam()I

    move-result v1

    .line 338
    .local v1, "iconVal":I
    if-nez v1, :cond_1

    .line 340
    const-string v2, ""

    invoke-virtual {v0, v2}, Lcom/ts/other/ParamButton;->setText(Ljava/lang/CharSequence;)V

    .line 347
    :goto_1
    const-string v2, "Can list getview"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    iget-object v2, p0, Lcom/ts/factoryset/FsIconActivity$FsIconGridAdapter;->mView:[Landroid/view/View;

    aget-object v2, v2, p1

    return-object v2

    .line 333
    .end local v1    # "iconVal":I
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/ts/other/ParamButton;->setSelected(Z)V

    goto :goto_0

    .line 344
    .restart local v1    # "iconVal":I
    :cond_1
    iget-object v2, p0, Lcom/ts/factoryset/FsIconActivity$FsIconGridAdapter;->this$0:Lcom/ts/factoryset/FsIconActivity;

    # invokes: Lcom/ts/factoryset/FsIconActivity;->getIconName(I)Ljava/lang/String;
    invoke-static {v2, v1}, Lcom/ts/factoryset/FsIconActivity;->access$1(Lcom/ts/factoryset/FsIconActivity;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ts/other/ParamButton;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method initView()V
    .locals 6

    .prologue
    .line 292
    iget v3, p0, Lcom/ts/factoryset/FsIconActivity$FsIconGridAdapter;->mTotalNum:I

    new-array v3, v3, [Landroid/view/View;

    iput-object v3, p0, Lcom/ts/factoryset/FsIconActivity$FsIconGridAdapter;->mView:[Landroid/view/View;

    .line 293
    iget v3, p0, Lcom/ts/factoryset/FsIconActivity$FsIconGridAdapter;->mTotalNum:I

    new-array v3, v3, [Lcom/ts/other/ParamButton;

    iput-object v3, p0, Lcom/ts/factoryset/FsIconActivity$FsIconGridAdapter;->mBtnIco:[Lcom/ts/other/ParamButton;

    .line 297
    const/4 v1, 0x0

    .local v1, "position":I
    :goto_0
    iget v3, p0, Lcom/ts/factoryset/FsIconActivity$FsIconGridAdapter;->mTotalNum:I

    if-lt v1, v3, :cond_0

    .line 318
    return-void

    .line 300
    :cond_0
    const-string v3, "FsIconGridAdapter.getView"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "index = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    iget-object v3, p0, Lcom/ts/factoryset/FsIconActivity$FsIconGridAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v4, Lcom/ts/MainUI/R$layout;->fs_icon_right_item:I

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 304
    .local v2, "view":Landroid/view/View;
    sget v3, Lcom/ts/MainUI/R$id;->fsicon_rtbtn:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ts/other/ParamButton;

    .line 306
    .local v0, "btn":Lcom/ts/other/ParamButton;
    invoke-virtual {v0, v1}, Lcom/ts/other/ParamButton;->setIntParam2(I)V

    .line 308
    sget v3, Lcom/ts/MainUI/R$drawable;->factory_icon_up:I

    .line 309
    sget v4, Lcom/ts/MainUI/R$drawable;->factory_icon_dn:I

    .line 310
    sget v5, Lcom/ts/MainUI/R$drawable;->factory_icon_dn:I

    .line 308
    invoke-virtual {v0, v3, v4, v5}, Lcom/ts/other/ParamButton;->setStateDrawable(III)V

    .line 312
    iget-object v3, p0, Lcom/ts/factoryset/FsIconActivity$FsIconGridAdapter;->iconClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Lcom/ts/other/ParamButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 314
    iget-object v3, p0, Lcom/ts/factoryset/FsIconActivity$FsIconGridAdapter;->mBtnIco:[Lcom/ts/other/ParamButton;

    aput-object v0, v3, v1

    .line 315
    iget-object v3, p0, Lcom/ts/factoryset/FsIconActivity$FsIconGridAdapter;->mView:[Landroid/view/View;

    aput-object v2, v3, v1

    .line 297
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public onRightClick(I)V
    .locals 7
    .param p1, "pos"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 202
    invoke-virtual {p0, p1}, Lcom/ts/factoryset/FsIconActivity$FsIconGridAdapter;->getIndexVal(I)I

    move-result v0

    .line 203
    .local v0, "curPosVal":I
    iget-object v2, p0, Lcom/ts/factoryset/FsIconActivity$FsIconGridAdapter;->this$0:Lcom/ts/factoryset/FsIconActivity;

    iget v2, v2, Lcom/ts/factoryset/FsIconActivity;->mFocusFlg:I

    packed-switch v2, :pswitch_data_0

    .line 250
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/ts/factoryset/FsIconActivity$FsIconGridAdapter;->this$0:Lcom/ts/factoryset/FsIconActivity;

    # getter for: Lcom/ts/factoryset/FsIconActivity;->mListAdapater:Lcom/ts/factoryset/FsIconActivity$FsIconListAdapter;
    invoke-static {v2}, Lcom/ts/factoryset/FsIconActivity;->access$0(Lcom/ts/factoryset/FsIconActivity;)Lcom/ts/factoryset/FsIconActivity$FsIconListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ts/factoryset/FsIconActivity$FsIconListAdapter;->notifyDataSetChanged()V

    .line 251
    return-void

    .line 206
    :pswitch_0
    if-lez v0, :cond_0

    .line 208
    iget-object v2, p0, Lcom/ts/factoryset/FsIconActivity$FsIconGridAdapter;->this$0:Lcom/ts/factoryset/FsIconActivity;

    const/4 v3, 0x2

    iput v3, v2, Lcom/ts/factoryset/FsIconActivity;->mFocusFlg:I

    .line 209
    invoke-virtual {p0, p1}, Lcom/ts/factoryset/FsIconActivity$FsIconGridAdapter;->setSel(I)V

    goto :goto_0

    .line 214
    :pswitch_1
    if-lez v0, :cond_1

    .line 217
    iget-object v2, p0, Lcom/ts/factoryset/FsIconActivity$FsIconGridAdapter;->this$0:Lcom/ts/factoryset/FsIconActivity;

    # getter for: Lcom/ts/factoryset/FsIconActivity;->mListAdapater:Lcom/ts/factoryset/FsIconActivity$FsIconListAdapter;
    invoke-static {v2}, Lcom/ts/factoryset/FsIconActivity;->access$0(Lcom/ts/factoryset/FsIconActivity;)Lcom/ts/factoryset/FsIconActivity$FsIconListAdapter;

    move-result-object v2

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v2, v3, v6}, Lcom/ts/factoryset/FsIconActivity$FsIconListAdapter;->setIndexVal(II)V

    .line 220
    :cond_1
    iget-object v2, p0, Lcom/ts/factoryset/FsIconActivity$FsIconGridAdapter;->this$0:Lcom/ts/factoryset/FsIconActivity;

    # getter for: Lcom/ts/factoryset/FsIconActivity;->mListAdapater:Lcom/ts/factoryset/FsIconActivity$FsIconListAdapter;
    invoke-static {v2}, Lcom/ts/factoryset/FsIconActivity;->access$0(Lcom/ts/factoryset/FsIconActivity;)Lcom/ts/factoryset/FsIconActivity$FsIconListAdapter;

    move-result-object v2

    iget-object v3, p0, Lcom/ts/factoryset/FsIconActivity$FsIconGridAdapter;->this$0:Lcom/ts/factoryset/FsIconActivity;

    # getter for: Lcom/ts/factoryset/FsIconActivity;->mListAdapater:Lcom/ts/factoryset/FsIconActivity$FsIconListAdapter;
    invoke-static {v3}, Lcom/ts/factoryset/FsIconActivity;->access$0(Lcom/ts/factoryset/FsIconActivity;)Lcom/ts/factoryset/FsIconActivity$FsIconListAdapter;

    move-result-object v3

    # getter for: Lcom/ts/factoryset/FsIconActivity$FsIconListAdapter;->mSel:I
    invoke-static {v3}, Lcom/ts/factoryset/FsIconActivity$FsIconListAdapter;->access$0(Lcom/ts/factoryset/FsIconActivity$FsIconListAdapter;)I

    move-result v3

    invoke-virtual {v2, v3, v4}, Lcom/ts/factoryset/FsIconActivity$FsIconListAdapter;->setIndexVal(II)V

    .line 222
    iget-object v2, p0, Lcom/ts/factoryset/FsIconActivity$FsIconGridAdapter;->this$0:Lcom/ts/factoryset/FsIconActivity;

    iput v4, v2, Lcom/ts/factoryset/FsIconActivity;->mFocusFlg:I

    .line 223
    iget-object v2, p0, Lcom/ts/factoryset/FsIconActivity$FsIconGridAdapter;->this$0:Lcom/ts/factoryset/FsIconActivity;

    # getter for: Lcom/ts/factoryset/FsIconActivity;->mListAdapater:Lcom/ts/factoryset/FsIconActivity$FsIconListAdapter;
    invoke-static {v2}, Lcom/ts/factoryset/FsIconActivity;->access$0(Lcom/ts/factoryset/FsIconActivity;)Lcom/ts/factoryset/FsIconActivity$FsIconListAdapter;

    move-result-object v2

    # getter for: Lcom/ts/factoryset/FsIconActivity$FsIconListAdapter;->mSel:I
    invoke-static {v2}, Lcom/ts/factoryset/FsIconActivity$FsIconListAdapter;->access$0(Lcom/ts/factoryset/FsIconActivity$FsIconListAdapter;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, p1, v2}, Lcom/ts/factoryset/FsIconActivity$FsIconGridAdapter;->setIndexVal(II)V

    .line 224
    invoke-virtual {p0, v5}, Lcom/ts/factoryset/FsIconActivity$FsIconGridAdapter;->setSel(I)V

    goto :goto_0

    .line 228
    :pswitch_2
    iget v2, p0, Lcom/ts/factoryset/FsIconActivity$FsIconGridAdapter;->mSel:I

    if-ne v2, p1, :cond_2

    .line 231
    iget-object v2, p0, Lcom/ts/factoryset/FsIconActivity$FsIconGridAdapter;->this$0:Lcom/ts/factoryset/FsIconActivity;

    # getter for: Lcom/ts/factoryset/FsIconActivity;->mListAdapater:Lcom/ts/factoryset/FsIconActivity$FsIconListAdapter;
    invoke-static {v2}, Lcom/ts/factoryset/FsIconActivity;->access$0(Lcom/ts/factoryset/FsIconActivity;)Lcom/ts/factoryset/FsIconActivity$FsIconListAdapter;

    move-result-object v2

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v2, v3, v6}, Lcom/ts/factoryset/FsIconActivity$FsIconListAdapter;->setIndexVal(II)V

    .line 232
    invoke-virtual {p0, p1, v4}, Lcom/ts/factoryset/FsIconActivity$FsIconGridAdapter;->setIndexVal(II)V

    .line 242
    :goto_1
    iget-object v2, p0, Lcom/ts/factoryset/FsIconActivity$FsIconGridAdapter;->this$0:Lcom/ts/factoryset/FsIconActivity;

    iput v4, v2, Lcom/ts/factoryset/FsIconActivity;->mFocusFlg:I

    .line 243
    invoke-virtual {p0, v5}, Lcom/ts/factoryset/FsIconActivity$FsIconGridAdapter;->setSel(I)V

    goto :goto_0

    .line 238
    :cond_2
    iget v2, p0, Lcom/ts/factoryset/FsIconActivity$FsIconGridAdapter;->mSel:I

    invoke-virtual {p0, v2}, Lcom/ts/factoryset/FsIconActivity$FsIconGridAdapter;->getIndexVal(I)I

    move-result v1

    .line 239
    .local v1, "selVal":I
    iget v2, p0, Lcom/ts/factoryset/FsIconActivity$FsIconGridAdapter;->mSel:I

    invoke-virtual {p0, v2, v0}, Lcom/ts/factoryset/FsIconActivity$FsIconGridAdapter;->setIndexVal(II)V

    .line 240
    invoke-virtual {p0, p1, v1}, Lcom/ts/factoryset/FsIconActivity$FsIconGridAdapter;->setIndexVal(II)V

    goto :goto_1

    .line 203
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public resetAll()V
    .locals 3

    .prologue
    .line 193
    const/4 v0, 0x0

    .local v0, "position":I
    :goto_0
    iget v1, p0, Lcom/ts/factoryset/FsIconActivity$FsIconGridAdapter;->mTotalNum:I

    if-lt v0, v1, :cond_0

    .line 197
    return-void

    .line 195
    :cond_0
    iget-object v1, p0, Lcom/ts/factoryset/FsIconActivity$FsIconGridAdapter;->mBtnIco:[Lcom/ts/other/ParamButton;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/ts/other/ParamButton;->setIntParam(I)V

    .line 193
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setIndexVal(II)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "val"    # I

    .prologue
    .line 184
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/ts/factoryset/FsIconActivity$FsIconGridAdapter;->mTotalNum:I

    if-ge p1, v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/ts/factoryset/FsIconActivity$FsIconGridAdapter;->mBtnIco:[Lcom/ts/other/ParamButton;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Lcom/ts/other/ParamButton;->setIntParam(I)V

    .line 188
    :cond_0
    return-void
.end method

.method public setSel(I)V
    .locals 0
    .param p1, "sel"    # I

    .prologue
    .line 273
    iput p1, p0, Lcom/ts/factoryset/FsIconActivity$FsIconGridAdapter;->mSel:I

    .line 274
    invoke-virtual {p0}, Lcom/ts/factoryset/FsIconActivity$FsIconGridAdapter;->notifyDataSetChanged()V

    .line 276
    return-void
.end method
