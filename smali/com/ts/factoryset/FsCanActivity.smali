.class public Lcom/ts/factoryset/FsCanActivity;
.super Lcom/ts/factoryset/FsBaseActivity;
.source "FsCanActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ts/factoryset/FsCanActivity$FsCanAdapter;
    }
.end annotation


# static fields
.field public static final DOOR_ID_FRONT:I = 0x1

.field public static final DOOR_ID_HOOD:I = 0x8

.field public static final DOOR_ID_REAR:I = 0x2

.field public static final DOOR_ID_SWKEY:I = 0x10

.field public static final DOOR_ID_TRUNK:I = 0x4

.field public static final DOOR_UPDATE_ALL:I = 0xff

.field public static final TAG:Ljava/lang/String; = "FsCanActivity"

.field public static final mDoorStr1:[I

.field public static final mDoorStr2:[I


# instance fields
.field private doorClick:Landroid/view/View$OnClickListener;

.field private mAdapater:Lcom/ts/factoryset/FsCanActivity$FsCanAdapter;

.field private mBtnCan:Lcom/ts/other/ParamButton;

.field private mDlg:Lcom/ts/factoryset/FsInputDlg;

.field private mListCan:Landroid/widget/ListView;

.field private mTvDoorVal:[Landroid/widget/TextView;

.field private onOK:Lcom/ts/factoryset/FsInputDlg$onInputOK;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 37
    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 38
    sget v1, Lcom/ts/MainUI/R$string;->str_fs_normal:I

    aput v1, v0, v3

    .line 39
    sget v1, Lcom/ts/MainUI/R$string;->str_fs_swap:I

    aput v1, v0, v4

    .line 40
    sget v1, Lcom/ts/MainUI/R$string;->str_fs_hide:I

    aput v1, v0, v5

    const/4 v1, 0x3

    .line 41
    sget v2, Lcom/ts/MainUI/R$string;->str_fs_hide:I

    aput v2, v0, v1

    .line 36
    sput-object v0, Lcom/ts/factoryset/FsCanActivity;->mDoorStr1:[I

    .line 45
    new-array v0, v5, [I

    .line 46
    sget v1, Lcom/ts/MainUI/R$string;->str_fs_normal:I

    aput v1, v0, v3

    .line 47
    sget v1, Lcom/ts/MainUI/R$string;->str_fs_hide:I

    aput v1, v0, v4

    .line 44
    sput-object v0, Lcom/ts/factoryset/FsCanActivity;->mDoorStr2:[I

    .line 48
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/ts/factoryset/FsBaseActivity;-><init>()V

    .line 56
    const/4 v0, 0x5

    new-array v0, v0, [Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ts/factoryset/FsCanActivity;->mTvDoorVal:[Landroid/widget/TextView;

    .line 151
    new-instance v0, Lcom/ts/factoryset/FsCanActivity$1;

    invoke-direct {v0, p0}, Lcom/ts/factoryset/FsCanActivity$1;-><init>(Lcom/ts/factoryset/FsCanActivity;)V

    iput-object v0, p0, Lcom/ts/factoryset/FsCanActivity;->doorClick:Landroid/view/View$OnClickListener;

    .line 231
    new-instance v0, Lcom/ts/factoryset/FsCanActivity$2;

    invoke-direct {v0, p0}, Lcom/ts/factoryset/FsCanActivity$2;-><init>(Lcom/ts/factoryset/FsCanActivity;)V

    iput-object v0, p0, Lcom/ts/factoryset/FsCanActivity;->onOK:Lcom/ts/factoryset/FsInputDlg$onInputOK;

    .line 23
    return-void
.end method

.method static synthetic access$0(Lcom/ts/factoryset/FsCanActivity;IZ)V
    .locals 0

    .prologue
    .line 163
    invoke-direct {p0, p1, p2}, Lcom/ts/factoryset/FsCanActivity;->doorAdjust(IZ)V

    return-void
.end method

.method static synthetic access$1(Lcom/ts/factoryset/FsCanActivity;)Lcom/ts/factoryset/FsCanActivity$FsCanAdapter;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/ts/factoryset/FsCanActivity;->mAdapater:Lcom/ts/factoryset/FsCanActivity$FsCanAdapter;

    return-object v0
.end method

.method static synthetic access$2(Lcom/ts/factoryset/FsCanActivity;)Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/ts/factoryset/FsCanActivity;->mListCan:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$3(Lcom/ts/factoryset/FsCanActivity;)Lcom/ts/other/ParamButton;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/ts/factoryset/FsCanActivity;->mBtnCan:Lcom/ts/other/ParamButton;

    return-object v0
.end method

.method private doorAdjust(IZ)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "fgInc"    # Z

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 166
    sparse-switch p1, :sswitch_data_0

    .line 199
    :goto_0
    invoke-direct {p0, p1}, Lcom/ts/factoryset/FsCanActivity;->updateDoor(I)V

    .line 200
    return-void

    .line 169
    :sswitch_0
    invoke-static {}, Lcom/yyw/ts70xhw/FtSet;->GetFdoor()I

    move-result v0

    .line 170
    .local v0, "val":I
    invoke-static {v0, v1, v2, p2}, Lcom/ts/other/ValCal;->dataStepLoop(IIIZ)I

    move-result v0

    .line 171
    invoke-static {v0}, Lcom/yyw/ts70xhw/FtSet;->SetFdoor(I)I

    goto :goto_0

    .line 175
    .end local v0    # "val":I
    :sswitch_1
    invoke-static {}, Lcom/yyw/ts70xhw/FtSet;->GetBdoor()I

    move-result v0

    .line 176
    .restart local v0    # "val":I
    invoke-static {v0, v1, v2, p2}, Lcom/ts/other/ValCal;->dataStepLoop(IIIZ)I

    move-result v0

    .line 177
    invoke-static {v0}, Lcom/yyw/ts70xhw/FtSet;->SetBdoor(I)I

    goto :goto_0

    .line 181
    .end local v0    # "val":I
    :sswitch_2
    invoke-static {}, Lcom/yyw/ts70xhw/FtSet;->GetTrunk()I

    move-result v0

    .line 182
    .restart local v0    # "val":I
    and-int/lit8 v1, v0, 0x1

    rsub-int/lit8 v0, v1, 0x1

    .line 183
    invoke-static {v0}, Lcom/yyw/ts70xhw/FtSet;->SetTrunk(I)I

    goto :goto_0

    .line 187
    .end local v0    # "val":I
    :sswitch_3
    invoke-static {}, Lcom/yyw/ts70xhw/FtSet;->GetHood()I

    move-result v0

    .line 188
    .restart local v0    # "val":I
    and-int/lit8 v1, v0, 0x1

    rsub-int/lit8 v0, v1, 0x1

    .line 189
    invoke-static {v0}, Lcom/yyw/ts70xhw/FtSet;->SetHood(I)I

    goto :goto_0

    .line 193
    .end local v0    # "val":I
    :sswitch_4
    invoke-static {}, Lcom/yyw/ts70xhw/FtSet;->GetSWnpSwap()I

    move-result v0

    .line 194
    .restart local v0    # "val":I
    and-int/lit8 v1, v0, 0x1

    rsub-int/lit8 v0, v1, 0x1

    .line 195
    invoke-static {v0}, Lcom/yyw/ts70xhw/FtSet;->SetSWnpSwap(I)I

    goto :goto_0

    .line 166
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x4 -> :sswitch_2
        0x8 -> :sswitch_3
        0x10 -> :sswitch_4
    .end sparse-switch
.end method

.method private updateDoor(I)V
    .locals 3
    .param p1, "item"    # I

    .prologue
    .line 205
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/ts/factoryset/FsCanActivity;->mTvDoorVal:[Landroid/widget/TextView;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    sget-object v1, Lcom/ts/factoryset/FsCanActivity;->mDoorStr1:[I

    invoke-static {}, Lcom/yyw/ts70xhw/FtSet;->GetFdoor()I

    move-result v2

    and-int/lit8 v2, v2, 0x3

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 210
    :cond_0
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_1

    .line 212
    iget-object v0, p0, Lcom/ts/factoryset/FsCanActivity;->mTvDoorVal:[Landroid/widget/TextView;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    sget-object v1, Lcom/ts/factoryset/FsCanActivity;->mDoorStr1:[I

    invoke-static {}, Lcom/yyw/ts70xhw/FtSet;->GetBdoor()I

    move-result v2

    and-int/lit8 v2, v2, 0x3

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 215
    :cond_1
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_2

    .line 217
    iget-object v0, p0, Lcom/ts/factoryset/FsCanActivity;->mTvDoorVal:[Landroid/widget/TextView;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    sget-object v1, Lcom/ts/factoryset/FsCanActivity;->mDoorStr2:[I

    invoke-static {}, Lcom/yyw/ts70xhw/FtSet;->GetTrunk()I

    move-result v2

    and-int/lit8 v2, v2, 0x1

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 220
    :cond_2
    and-int/lit8 v0, p1, 0x8

    if-eqz v0, :cond_3

    .line 222
    iget-object v0, p0, Lcom/ts/factoryset/FsCanActivity;->mTvDoorVal:[Landroid/widget/TextView;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    sget-object v1, Lcom/ts/factoryset/FsCanActivity;->mDoorStr2:[I

    invoke-static {}, Lcom/yyw/ts70xhw/FtSet;->GetHood()I

    move-result v2

    and-int/lit8 v2, v2, 0x1

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 225
    :cond_3
    and-int/lit8 v0, p1, 0x10

    if-eqz v0, :cond_4

    .line 227
    iget-object v0, p0, Lcom/ts/factoryset/FsCanActivity;->mTvDoorVal:[Landroid/widget/TextView;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    sget-object v1, Lcom/ts/factoryset/FsCanActivity;->mDoorStr1:[I

    invoke-static {}, Lcom/yyw/ts70xhw/FtSet;->GetSWnpSwap()I

    move-result v2

    and-int/lit8 v2, v2, 0x1

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 229
    :cond_4
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 144
    sget v0, Lcom/ts/MainUI/R$id;->fscan_cur_val:I

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 146
    iget-object v0, p0, Lcom/ts/factoryset/FsCanActivity;->mDlg:Lcom/ts/factoryset/FsInputDlg;

    iget-object v1, p0, Lcom/ts/factoryset/FsCanActivity;->onOK:Lcom/ts/factoryset/FsInputDlg$onInputOK;

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Lcom/ts/factoryset/FsInputDlg;->createDlg(Landroid/content/Context;Lcom/ts/factoryset/FsInputDlg$onInputOK;Z)V

    .line 148
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v13, 0x1

    .line 63
    invoke-super {p0, p1}, Lcom/ts/factoryset/FsBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 64
    sget v10, Lcom/ts/MainUI/R$layout;->activity_fs_can:I

    invoke-virtual {p0, v10}, Lcom/ts/factoryset/FsCanActivity;->setContentView(I)V

    .line 66
    sget v10, Lcom/ts/MainUI/R$string;->str_fsmain_can:I

    invoke-virtual {p0, v10}, Lcom/ts/factoryset/FsCanActivity;->topBtnInit(I)V

    .line 69
    sget v10, Lcom/ts/MainUI/R$id;->fscan_list:I

    invoke-virtual {p0, v10}, Lcom/ts/factoryset/FsCanActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ListView;

    iput-object v10, p0, Lcom/ts/factoryset/FsCanActivity;->mListCan:Landroid/widget/ListView;

    .line 70
    sget v10, Lcom/ts/MainUI/R$id;->fscan_cur_val:I

    invoke-virtual {p0, v10}, Lcom/ts/factoryset/FsCanActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/ts/other/ParamButton;

    iput-object v10, p0, Lcom/ts/factoryset/FsCanActivity;->mBtnCan:Lcom/ts/other/ParamButton;

    .line 72
    iget-object v10, p0, Lcom/ts/factoryset/FsCanActivity;->mBtnCan:Lcom/ts/other/ParamButton;

    invoke-virtual {v10, p0}, Lcom/ts/other/ParamButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    new-instance v10, Lcom/ts/factoryset/FsCanActivity$FsCanAdapter;

    invoke-direct {v10, p0, p0}, Lcom/ts/factoryset/FsCanActivity$FsCanAdapter;-><init>(Lcom/ts/factoryset/FsCanActivity;Landroid/content/Context;)V

    iput-object v10, p0, Lcom/ts/factoryset/FsCanActivity;->mAdapater:Lcom/ts/factoryset/FsCanActivity$FsCanAdapter;

    .line 75
    iget-object v10, p0, Lcom/ts/factoryset/FsCanActivity;->mListCan:Landroid/widget/ListView;

    iget-object v11, p0, Lcom/ts/factoryset/FsCanActivity;->mAdapater:Lcom/ts/factoryset/FsCanActivity$FsCanAdapter;

    invoke-virtual {v10, v11}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 77
    new-instance v10, Lcom/ts/factoryset/FsInputDlg;

    invoke-direct {v10}, Lcom/ts/factoryset/FsInputDlg;-><init>()V

    iput-object v10, p0, Lcom/ts/factoryset/FsCanActivity;->mDlg:Lcom/ts/factoryset/FsInputDlg;

    .line 79
    iget-object v10, p0, Lcom/ts/factoryset/FsCanActivity;->mListCan:Landroid/widget/ListView;

    new-instance v11, Lcom/ts/factoryset/FsCanActivity$3;

    invoke-direct {v11, p0}, Lcom/ts/factoryset/FsCanActivity$3;-><init>(Lcom/ts/factoryset/FsCanActivity;)V

    invoke-virtual {v10, v11}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 91
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 92
    .local v3, "mLayoutInflater":Landroid/view/LayoutInflater;
    sget v10, Lcom/ts/MainUI/R$id;->fscan_main:I

    invoke-virtual {p0, v10}, Lcom/ts/factoryset/FsCanActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    .line 94
    .local v5, "rl":Landroid/widget/RelativeLayout;
    invoke-virtual {p0}, Lcom/ts/factoryset/FsCanActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    sget v11, Lcom/ts/MainUI/R$array;->str_fsdoor_title:I

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    .line 97
    .local v7, "strTitle":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/4 v10, 0x5

    if-lt v2, v10, :cond_0

    .line 139
    return-void

    .line 99
    :cond_0
    sget v10, Lcom/ts/MainUI/R$layout;->fs_door_item:I

    const/4 v11, 0x0

    invoke-virtual {v3, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/RelativeLayout;

    .line 100
    .local v9, "view":Landroid/widget/RelativeLayout;
    invoke-virtual {v5, v9}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 102
    invoke-virtual {v9}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout$LayoutParams;

    .line 103
    .local v6, "rp2":Landroid/widget/RelativeLayout$LayoutParams;
    mul-int/lit8 v10, v2, 0x41

    add-int/lit16 v10, v10, 0xbe

    iput v10, v6, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 104
    invoke-virtual {v9, v6}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 106
    sget v10, Lcom/ts/MainUI/R$id;->fsdoor_title:I

    invoke-virtual {v9, v10}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 107
    .local v8, "tv":Landroid/widget/TextView;
    aget-object v10, v7, v2

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    iget-object v11, p0, Lcom/ts/factoryset/FsCanActivity;->mTvDoorVal:[Landroid/widget/TextView;

    sget v10, Lcom/ts/MainUI/R$id;->fsdoor_val:I

    invoke-virtual {v9, v10}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    aput-object v10, v11, v2

    .line 112
    const/4 v4, 0x1

    .line 113
    .local v4, "max":I
    const/4 v10, 0x2

    if-ge v2, v10, :cond_1

    .line 115
    const/4 v4, 0x2

    .line 119
    :cond_1
    sget v10, Lcom/ts/MainUI/R$id;->fsdoor_cut:I

    invoke-virtual {v9, v10}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/ts/other/ParamButton;

    .line 120
    .local v1, "btnCut":Lcom/ts/other/ParamButton;
    shl-int v10, v13, v2

    invoke-virtual {v1, v10}, Lcom/ts/other/ParamButton;->setIntParam(I)V

    .line 121
    const/4 v10, 0x0

    invoke-virtual {v1, v10}, Lcom/ts/other/ParamButton;->setIntParam2(I)V

    .line 122
    sget v10, Lcom/ts/MainUI/R$drawable;->factory_can_left_up:I

    .line 123
    sget v11, Lcom/ts/MainUI/R$drawable;->factory_can_left_dn:I

    .line 124
    sget v12, Lcom/ts/MainUI/R$drawable;->factory_can_left_dn:I

    .line 122
    invoke-virtual {v1, v10, v11, v12}, Lcom/ts/other/ParamButton;->setStateDrawable(III)V

    .line 125
    iget-object v10, p0, Lcom/ts/factoryset/FsCanActivity;->doorClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v10}, Lcom/ts/other/ParamButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    sget v10, Lcom/ts/MainUI/R$id;->fsdoor_add:I

    invoke-virtual {v9, v10}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ts/other/ParamButton;

    .line 128
    .local v0, "btnAdd":Lcom/ts/other/ParamButton;
    shl-int v10, v13, v2

    invoke-virtual {v0, v10}, Lcom/ts/other/ParamButton;->setIntParam(I)V

    .line 129
    invoke-virtual {v0, v13}, Lcom/ts/other/ParamButton;->setIntParam2(I)V

    .line 130
    sget v10, Lcom/ts/MainUI/R$drawable;->factory_can_right_up:I

    .line 131
    sget v11, Lcom/ts/MainUI/R$drawable;->factory_can_right_dn:I

    .line 132
    sget v12, Lcom/ts/MainUI/R$drawable;->factory_can_right_dn:I

    .line 130
    invoke-virtual {v0, v10, v11, v12}, Lcom/ts/other/ParamButton;->setStateDrawable(III)V

    .line 133
    iget-object v10, p0, Lcom/ts/factoryset/FsCanActivity;->doorClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v10}, Lcom/ts/other/ParamButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 249
    iget-object v0, p0, Lcom/ts/factoryset/FsCanActivity;->mAdapater:Lcom/ts/factoryset/FsCanActivity$FsCanAdapter;

    invoke-static {}, Lcom/yyw/ts70xhw/FtSet;->GetCanTp()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ts/factoryset/FsCanActivity$FsCanAdapter;->setSel(I)V

    .line 250
    const/16 v0, 0xff

    invoke-direct {p0, v0}, Lcom/ts/factoryset/FsCanActivity;->updateDoor(I)V

    .line 251
    invoke-super {p0}, Lcom/ts/factoryset/FsBaseActivity;->onResume()V

    .line 252
    return-void
.end method
