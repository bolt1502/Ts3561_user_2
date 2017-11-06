.class public Lcom/ts/set/SetMainActivity;
.super Landroid/app/Activity;
.source "SetMainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private setIcon:[I

.field private setOptions:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 25
    const/16 v0, 0x9

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 26
    sget v2, Lcom/ts/MainUI/R$drawable;->setup_main_common:I

    aput v2, v0, v1

    const/4 v1, 0x1

    .line 27
    sget v2, Lcom/ts/MainUI/R$drawable;->setup_main_show:I

    aput v2, v0, v1

    const/4 v1, 0x2

    .line 28
    sget v2, Lcom/ts/MainUI/R$drawable;->setup_main_volume:I

    aput v2, v0, v1

    const/4 v1, 0x3

    .line 29
    sget v2, Lcom/ts/MainUI/R$drawable;->setup_main_eq:I

    aput v2, v0, v1

    const/4 v1, 0x4

    .line 30
    sget v2, Lcom/ts/MainUI/R$drawable;->setup_main_video:I

    aput v2, v0, v1

    const/4 v1, 0x5

    .line 31
    sget v2, Lcom/ts/MainUI/R$drawable;->setup_main_navi:I

    aput v2, v0, v1

    const/4 v1, 0x6

    .line 32
    sget v2, Lcom/ts/MainUI/R$drawable;->setup_main_bt:I

    aput v2, v0, v1

    const/4 v1, 0x7

    .line 33
    sget v2, Lcom/ts/MainUI/R$drawable;->setup_main_swc:I

    aput v2, v0, v1

    const/16 v1, 0x8

    .line 34
    sget v2, Lcom/ts/MainUI/R$drawable;->setup_main_about:I

    aput v2, v0, v1

    iput-object v0, p0, Lcom/ts/set/SetMainActivity;->setIcon:[I

    .line 19
    return-void
.end method

.method private addSetOption(I)V
    .locals 8
    .param p1, "setOpt"    # I

    .prologue
    const/4 v7, 0x0

    .line 64
    sget-object v4, Lcom/ts/set/setview/UISetSroView;->inflater:Landroid/view/LayoutInflater;

    sget v5, Lcom/ts/MainUI/R$layout;->set_main_item:I

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 65
    .local v1, "layout":Landroid/view/ViewGroup;
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v4, 0x400

    const/16 v5, 0x4f

    invoke-direct {v2, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 66
    .local v2, "params":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v4, 0x5

    invoke-virtual {v2, v7, v4, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 68
    invoke-virtual {v1, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 72
    sget v4, Lcom/ts/MainUI/R$id;->set_icon:I

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 73
    .local v0, "iv":Landroid/widget/ImageView;
    iget-object v4, p0, Lcom/ts/set/SetMainActivity;->setIcon:[I

    aget v4, v4, p1

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 76
    sget v4, Lcom/ts/MainUI/R$id;->set_text:I

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 77
    .local v3, "tv":Landroid/widget/TextView;
    iget-object v4, p0, Lcom/ts/set/SetMainActivity;->setOptions:[Ljava/lang/String;

    aget-object v4, v4, p1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    sget v4, Lcom/ts/MainUI/R$id;->set_arrow:I

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "iv":Landroid/widget/ImageView;
    check-cast v0, Landroid/widget/ImageView;

    .line 81
    .restart local v0    # "iv":Landroid/widget/ImageView;
    sget v4, Lcom/ts/MainUI/R$drawable;->setup_arrow:I

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 83
    sget-object v4, Lcom/ts/set/setview/UISetSroView;->m_llSetMain:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 84
    return-void
.end method

.method private initSetOptions()V
    .locals 2

    .prologue
    .line 52
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    .line 59
    return-void

    .line 54
    :cond_0
    invoke-direct {p0, v0}, Lcom/ts/set/SetMainActivity;->isHaveOption(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 56
    invoke-direct {p0, v0}, Lcom/ts/set/SetMainActivity;->addSetOption(I)V

    .line 52
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private isHaveOption(I)Z
    .locals 1
    .param p1, "setOption"    # I

    .prologue
    .line 88
    const/4 v0, 0x7

    if-ne p1, v0, :cond_0

    invoke-static {}, Lcom/yyw/ts70xhw/FtSet;->GetOptionSW()I

    move-result v0

    if-nez v0, :cond_0

    .line 90
    const/4 v0, 0x0

    .line 92
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 98
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 99
    .local v0, "nGetID":I
    const/16 v1, 0xb

    invoke-static {v1, v0}, Lcom/ts/main/common/WinShow;->GotoWin(II)V

    .line 101
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 39
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    invoke-static {}, Lcom/ts/main/common/MainSet;->GetInstance()Lcom/ts/main/common/MainSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ts/main/common/MainSet;->FtSetInint()I

    .line 42
    invoke-static {p0}, Lcom/ts/set/setview/UISetSroView;->Inint(Landroid/content/Context;)V

    .line 43
    invoke-virtual {p0}, Lcom/ts/set/SetMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/ts/MainUI/R$array;->set_main_options:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/set/SetMainActivity;->setOptions:[Ljava/lang/String;

    .line 44
    invoke-direct {p0}, Lcom/ts/set/SetMainActivity;->initSetOptions()V

    .line 46
    invoke-static {p0}, Lcom/ts/set/setview/UISetSroView;->Show(Landroid/content/Context;)V

    .line 47
    return-void
.end method
