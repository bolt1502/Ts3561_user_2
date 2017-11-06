.class public Lcom/ts/factoryset/FsVolActivity$FsVolAdapter;
.super Landroid/widget/BaseAdapter;
.source "FsVolActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ts/factoryset/FsVolActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FsVolAdapter"
.end annotation


# static fields
.field private static final TOTAL_ITEM:I = 0x10


# instance fields
.field private btnClick:Landroid/view/View$OnClickListener;

.field private mTitle:[Ljava/lang/String;

.field private mTvVal:[Landroid/widget/TextView;

.field private mView:[Landroid/view/View;

.field private mVol:[I

.field final synthetic this$0:Lcom/ts/factoryset/FsVolActivity;


# direct methods
.method public constructor <init>(Lcom/ts/factoryset/FsVolActivity;)V
    .locals 2

    .prologue
    const/16 v1, 0x10

    .line 91
    iput-object p1, p0, Lcom/ts/factoryset/FsVolActivity$FsVolAdapter;->this$0:Lcom/ts/factoryset/FsVolActivity;

    .line 90
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 62
    new-array v0, v1, [Landroid/view/View;

    iput-object v0, p0, Lcom/ts/factoryset/FsVolActivity$FsVolAdapter;->mView:[Landroid/view/View;

    .line 63
    new-array v0, v1, [Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ts/factoryset/FsVolActivity$FsVolAdapter;->mTvVal:[Landroid/widget/TextView;

    .line 65
    const/16 v0, 0x14

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/ts/factoryset/FsVolActivity$FsVolAdapter;->mVol:[I

    .line 184
    new-instance v0, Lcom/ts/factoryset/FsVolActivity$FsVolAdapter$1;

    invoke-direct {v0, p0}, Lcom/ts/factoryset/FsVolActivity$FsVolAdapter$1;-><init>(Lcom/ts/factoryset/FsVolActivity$FsVolAdapter;)V

    iput-object v0, p0, Lcom/ts/factoryset/FsVolActivity$FsVolAdapter;->btnClick:Landroid/view/View$OnClickListener;

    .line 92
    iget-object v0, p0, Lcom/ts/factoryset/FsVolActivity$FsVolAdapter;->mVol:[I

    invoke-static {v0}, Lcom/yyw/ts70xhw/FtSet;->GetVolPset([I)I

    .line 93
    invoke-virtual {p1}, Lcom/ts/factoryset/FsVolActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/ts/MainUI/R$array;->fs_vol_item_arr:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/factoryset/FsVolActivity$FsVolAdapter;->mTitle:[Ljava/lang/String;

    .line 94
    return-void
.end method

.method static synthetic access$0(Lcom/ts/factoryset/FsVolActivity$FsVolAdapter;IZ)V
    .locals 0

    .prologue
    .line 136
    invoke-direct {p0, p1, p2}, Lcom/ts/factoryset/FsVolActivity$FsVolAdapter;->changeData(IZ)V

    return-void
.end method

.method private changeData(IZ)V
    .locals 7
    .param p1, "id"    # I
    .param p2, "inc"    # Z

    .prologue
    const/16 v6, 0x13

    const/16 v5, 0x12

    const/16 v1, 0xc

    const/4 v4, 0x0

    .line 138
    const/4 v0, 0x0

    .line 139
    .local v0, "val":I
    if-ge p1, v1, :cond_1

    .line 141
    iget-object v1, p0, Lcom/ts/factoryset/FsVolActivity$FsVolAdapter;->mVol:[I

    iget-object v2, p0, Lcom/ts/factoryset/FsVolActivity$FsVolAdapter;->mVol:[I

    aget v2, v2, p1

    const/16 v3, 0x28

    invoke-static {v2, v4, v3, p2}, Lcom/ts/other/ValCal;->dataStepNoLoop(IIIZ)I

    move-result v2

    aput v2, v1, p1

    .line 142
    iget-object v1, p0, Lcom/ts/factoryset/FsVolActivity$FsVolAdapter;->mVol:[I

    invoke-static {v1}, Lcom/yyw/ts70xhw/FtSet;->SetVolPset([I)I

    .line 167
    :cond_0
    :goto_0
    const/4 v1, 0x1

    invoke-direct {p0, v1, p1}, Lcom/ts/factoryset/FsVolActivity$FsVolAdapter;->updateItem(ZI)V

    .line 168
    return-void

    .line 144
    :cond_1
    if-ne v1, p1, :cond_2

    .line 146
    iget-object v1, p0, Lcom/ts/factoryset/FsVolActivity$FsVolAdapter;->mVol:[I

    iget-object v2, p0, Lcom/ts/factoryset/FsVolActivity$FsVolAdapter;->mVol:[I

    aget v2, v2, v5

    const/16 v3, 0x64

    invoke-static {v2, v4, v3, p2}, Lcom/ts/other/ValCal;->dataStepNoLoop(IIIZ)I

    move-result v2

    aput v2, v1, v5

    .line 147
    iget-object v1, p0, Lcom/ts/factoryset/FsVolActivity$FsVolAdapter;->mVol:[I

    invoke-static {v1}, Lcom/yyw/ts70xhw/FtSet;->SetVolPset([I)I

    goto :goto_0

    .line 149
    :cond_2
    const/16 v1, 0xd

    if-ne v1, p1, :cond_3

    .line 151
    iget-object v1, p0, Lcom/ts/factoryset/FsVolActivity$FsVolAdapter;->mVol:[I

    iget-object v2, p0, Lcom/ts/factoryset/FsVolActivity$FsVolAdapter;->mVol:[I

    aget v2, v2, v6

    const/16 v3, 0x19

    invoke-static {v2, v4, v3, p2}, Lcom/ts/other/ValCal;->dataStepNoLoop(IIIZ)I

    move-result v2

    aput v2, v1, v6

    .line 152
    iget-object v1, p0, Lcom/ts/factoryset/FsVolActivity$FsVolAdapter;->mVol:[I

    invoke-static {v1}, Lcom/yyw/ts70xhw/FtSet;->SetVolPset([I)I

    goto :goto_0

    .line 154
    :cond_3
    const/16 v1, 0xe

    if-ne v1, p1, :cond_4

    .line 157
    invoke-static {}, Lcom/yyw/ts70xhw/FtSet;->GetVolSafe()I

    move-result v1

    const/16 v2, 0xa

    const/16 v3, 0x14

    invoke-static {v1, v2, v3, p2}, Lcom/ts/other/ValCal;->dataStepNoLoop(IIIZ)I

    move-result v0

    .line 158
    invoke-static {v0}, Lcom/yyw/ts70xhw/FtSet;->SetVolSafe(I)I

    goto :goto_0

    .line 160
    :cond_4
    const/16 v1, 0xf

    if-ne v1, p1, :cond_0

    .line 163
    invoke-static {}, Lcom/yyw/ts70xhw/FtSet;->GetBtMicGain()I

    move-result v1

    const/16 v2, 0x3f

    invoke-static {v1, v4, v2, p2}, Lcom/ts/other/ValCal;->dataStepNoLoop(IIIZ)I

    move-result v0

    .line 164
    invoke-static {v0}, Lcom/yyw/ts70xhw/FtSet;->SetBtMicGain(I)I

    goto :goto_0
.end method

.method private updateItem(ZI)V
    .locals 5
    .param p1, "refresh"    # Z
    .param p2, "id"    # I

    .prologue
    const/16 v2, 0xc

    .line 99
    if-eqz p1, :cond_0

    .line 101
    iget-object v1, p0, Lcom/ts/factoryset/FsVolActivity$FsVolAdapter;->mVol:[I

    invoke-static {v1}, Lcom/yyw/ts70xhw/FtSet;->GetVolPset([I)I

    .line 104
    :cond_0
    if-ge p2, v2, :cond_3

    .line 106
    iget-object v1, p0, Lcom/ts/factoryset/FsVolActivity$FsVolAdapter;->mVol:[I

    aget v1, v1, p2

    add-int/lit8 v0, v1, -0x14

    .line 107
    .local v0, "val":I
    if-gtz v0, :cond_2

    .line 109
    iget-object v1, p0, Lcom/ts/factoryset/FsVolActivity$FsVolAdapter;->mTvVal:[Landroid/widget/TextView;

    aget-object v1, v1, p2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    .end local v0    # "val":I
    :cond_1
    :goto_0
    return-void

    .line 113
    .restart local v0    # "val":I
    :cond_2
    iget-object v1, p0, Lcom/ts/factoryset/FsVolActivity$FsVolAdapter;->mTvVal:[Landroid/widget/TextView;

    aget-object v1, v1, p2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "+"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 116
    .end local v0    # "val":I
    :cond_3
    if-ne v2, p2, :cond_4

    .line 118
    iget-object v1, p0, Lcom/ts/factoryset/FsVolActivity$FsVolAdapter;->mTvVal:[Landroid/widget/TextView;

    aget-object v1, v1, p2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/ts/factoryset/FsVolActivity$FsVolAdapter;->mVol:[I

    const/16 v4, 0x12

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 120
    :cond_4
    const/16 v1, 0xd

    if-ne v1, p2, :cond_5

    .line 122
    iget-object v1, p0, Lcom/ts/factoryset/FsVolActivity$FsVolAdapter;->mTvVal:[Landroid/widget/TextView;

    aget-object v1, v1, p2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/ts/factoryset/FsVolActivity$FsVolAdapter;->mVol:[I

    const/16 v4, 0x13

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 124
    :cond_5
    const/16 v1, 0xe

    if-ne v1, p2, :cond_6

    .line 127
    iget-object v1, p0, Lcom/ts/factoryset/FsVolActivity$FsVolAdapter;->mTvVal:[Landroid/widget/TextView;

    aget-object v1, v1, p2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/yyw/ts70xhw/FtSet;->GetVolSafe()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 129
    :cond_6
    const/16 v1, 0xf

    if-ne v1, p2, :cond_1

    .line 132
    iget-object v1, p0, Lcom/ts/factoryset/FsVolActivity$FsVolAdapter;->mTvVal:[Landroid/widget/TextView;

    aget-object v1, v1, p2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/yyw/ts70xhw/FtSet;->GetBtMicGain()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method


# virtual methods
.method GettheBtMicGain()I
    .locals 2

    .prologue
    .line 172
    invoke-static {}, Lcom/yyw/ts70xhw/FtSet;->GetBtMicGain()I

    move-result v1

    add-int/lit8 v0, v1, -0x21

    .line 173
    .local v0, "nGain":I
    if-gez v0, :cond_1

    .line 175
    const/4 v0, 0x0

    .line 181
    :cond_0
    :goto_0
    return v0

    .line 177
    :cond_1
    const/16 v1, 0xf

    if-le v0, v1, :cond_0

    .line 179
    const/16 v0, 0xf

    goto :goto_0
.end method

.method public final getCount()I
    .locals 1

    .prologue
    .line 251
    const/16 v0, 0x10

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 256
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 261
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v7, 0x0

    .line 207
    move-object v3, p2

    .line 208
    .local v3, "view":Landroid/view/View;
    iget-object v4, p0, Lcom/ts/factoryset/FsVolActivity$FsVolAdapter;->mView:[Landroid/view/View;

    aget-object v4, v4, p1

    if-nez v4, :cond_0

    .line 210
    const-string v4, "getView"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "index = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    iget-object v4, p0, Lcom/ts/factoryset/FsVolActivity$FsVolAdapter;->this$0:Lcom/ts/factoryset/FsVolActivity;

    iget-object v4, v4, Lcom/ts/factoryset/FsVolActivity;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v5, Lcom/ts/MainUI/R$layout;->fs_vol_item:I

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 212
    new-instance v4, Landroid/widget/AbsListView$LayoutParams;

    const/16 v5, 0x1cb

    const/16 v6, 0x36

    invoke-direct {v4, v5, v6}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 213
    iget-object v4, p0, Lcom/ts/factoryset/FsVolActivity$FsVolAdapter;->mView:[Landroid/view/View;

    aput-object v3, v4, p1

    .line 216
    sget v4, Lcom/ts/MainUI/R$id;->fsvol_title:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 217
    .local v2, "tvTitle":Landroid/widget/TextView;
    iget-object v4, p0, Lcom/ts/factoryset/FsVolActivity$FsVolAdapter;->mTitle:[Ljava/lang/String;

    aget-object v4, v4, p1

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 219
    iget-object v5, p0, Lcom/ts/factoryset/FsVolActivity$FsVolAdapter;->mTvVal:[Landroid/widget/TextView;

    sget v4, Lcom/ts/MainUI/R$id;->fsvol_val:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    aput-object v4, v5, p1

    .line 222
    sget v4, Lcom/ts/MainUI/R$id;->fsvol_cut:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/ts/other/ParamButton;

    .line 223
    .local v1, "btnCut":Lcom/ts/other/ParamButton;
    invoke-virtual {v1, p1}, Lcom/ts/other/ParamButton;->setIntParam(I)V

    .line 224
    invoke-virtual {v1, v7}, Lcom/ts/other/ParamButton;->setIntParam2(I)V

    .line 225
    sget v4, Lcom/ts/MainUI/R$drawable;->factory_reduce_up:I

    .line 226
    sget v5, Lcom/ts/MainUI/R$drawable;->factory_reduce_dn:I

    .line 227
    sget v6, Lcom/ts/MainUI/R$drawable;->factory_reduce_dn:I

    .line 225
    invoke-virtual {v1, v4, v5, v6}, Lcom/ts/other/ParamButton;->setStateDrawable(III)V

    .line 228
    iget-object v4, p0, Lcom/ts/factoryset/FsVolActivity$FsVolAdapter;->btnClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v4}, Lcom/ts/other/ParamButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 230
    sget v4, Lcom/ts/MainUI/R$id;->fsvol_add:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ts/other/ParamButton;

    .line 231
    .local v0, "btnAdd":Lcom/ts/other/ParamButton;
    invoke-virtual {v0, p1}, Lcom/ts/other/ParamButton;->setIntParam(I)V

    .line 232
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/ts/other/ParamButton;->setIntParam2(I)V

    .line 233
    sget v4, Lcom/ts/MainUI/R$drawable;->factory_add_up:I

    .line 234
    sget v5, Lcom/ts/MainUI/R$drawable;->factory_add_dn:I

    .line 235
    sget v6, Lcom/ts/MainUI/R$drawable;->factory_add_dn:I

    .line 233
    invoke-virtual {v0, v4, v5, v6}, Lcom/ts/other/ParamButton;->setStateDrawable(III)V

    .line 236
    iget-object v4, p0, Lcom/ts/factoryset/FsVolActivity$FsVolAdapter;->btnClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v4}, Lcom/ts/other/ParamButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 238
    invoke-direct {p0, v7, p1}, Lcom/ts/factoryset/FsVolActivity$FsVolAdapter;->updateItem(ZI)V

    .line 245
    .end local v0    # "btnAdd":Lcom/ts/other/ParamButton;
    .end local v1    # "btnCut":Lcom/ts/other/ParamButton;
    .end local v2    # "tvTitle":Landroid/widget/TextView;
    :goto_0
    return-object v3

    .line 242
    :cond_0
    iget-object v4, p0, Lcom/ts/factoryset/FsVolActivity$FsVolAdapter;->mView:[Landroid/view/View;

    aget-object v3, v4, p1

    goto :goto_0
.end method
