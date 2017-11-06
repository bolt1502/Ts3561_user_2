.class public Lcom/ts/factoryset/FsLangActivity;
.super Lcom/ts/factoryset/FsBaseActivity;
.source "FsLangActivity.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "FsLangActivity"


# instance fields
.field private mBtnLang:[Lcom/ts/other/ParamButton;

.field private mManager:Lcom/ts/other/RelativeLayoutManager;

.field private mStrLang:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/16 v1, 0x10

    .line 14
    invoke-direct {p0}, Lcom/ts/factoryset/FsBaseActivity;-><init>()V

    .line 21
    new-array v0, v1, [Lcom/ts/other/ParamButton;

    iput-object v0, p0, Lcom/ts/factoryset/FsLangActivity;->mBtnLang:[Lcom/ts/other/ParamButton;

    .line 24
    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 25
    const-string v2, "\u7b80\u4f53\u4e2d\u6587"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 26
    const-string v2, "\u7e41\u9ad4\u4e2d\u6587 "

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 27
    const-string v2, "English"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 28
    const-string v2, "T\u00fcrk\u00e7e"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 29
    const-string v2, "P\u0443\u0441\u0441\u043a\u0438\u0439"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 30
    const-string v2, "\u0639\u0631\u0628\u064a\u0629\u200e"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 31
    const-string v2, "\u05e2\u05b4\u05d1\u05b0\u05e8\u05b4\u05d9\u05ea"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 32
    const-string v2, "\u0e20\u0e32\u0e29\u0e32\u0e44\u0e17\u0e22"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 33
    const-string v2, "Deutsch"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    .line 34
    const-string v2, "Fran\u00e7ais"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    .line 35
    const-string v2, "Portugu\u00eas"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    .line 36
    const-string v2, "\u65e5\u672c\u8a9e"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    .line 37
    const-string v2, "Espa\u00f1ol"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    .line 38
    const-string v2, "Itanliano"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    .line 39
    const-string v2, "Polski"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    .line 40
    const-string v2, "\u0641\u0627\u0631\u0633\u06cc\u200e"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/ts/factoryset/FsLangActivity;->mStrLang:[Ljava/lang/String;

    .line 14
    return-void
.end method


# virtual methods
.method protected SetCommBtn(Lcom/ts/other/ParamButton;Ljava/lang/String;)V
    .locals 3
    .param p1, "btn"    # Lcom/ts/other/ParamButton;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 101
    sget v0, Lcom/ts/MainUI/R$drawable;->fs_rect_up:I

    sget v1, Lcom/ts/MainUI/R$drawable;->fs_rect_dn:I

    invoke-virtual {p1, v0, v1}, Lcom/ts/other/ParamButton;->setDrawable(II)V

    .line 102
    if-eqz p2, :cond_0

    .line 104
    invoke-virtual {p1, p2}, Lcom/ts/other/ParamButton;->setText(Ljava/lang/CharSequence;)V

    .line 107
    :cond_0
    const/4 v0, 0x3

    invoke-virtual {p1, v2, v0, v2, v2}, Lcom/ts/other/ParamButton;->setPadding(IIII)V

    .line 108
    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lcom/ts/other/ParamButton;->setTextColor(I)V

    .line 109
    const/16 v0, 0x11

    invoke-virtual {p1, v0}, Lcom/ts/other/ParamButton;->setGravity(I)V

    .line 110
    const/high16 v0, 0x42000000    # 32.0f

    invoke-virtual {p1, v2, v0}, Lcom/ts/other/ParamButton;->setTextSize(IF)V

    .line 111
    return-void
.end method

.method protected UpdateLang()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 66
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/ts/factoryset/FsLangActivity;->mBtnLang:[Lcom/ts/other/ParamButton;

    array-length v2, v2

    if-lt v0, v2, :cond_0

    .line 71
    invoke-static {}, Lcom/yyw/ts70xhw/FtSet;->GetLangDef()I

    move-result v1

    .line 72
    .local v1, "lang":I
    if-ltz v1, :cond_1

    iget-object v2, p0, Lcom/ts/factoryset/FsLangActivity;->mBtnLang:[Lcom/ts/other/ParamButton;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 74
    iget-object v2, p0, Lcom/ts/factoryset/FsLangActivity;->mBtnLang:[Lcom/ts/other/ParamButton;

    aget-object v2, v2, v1

    invoke-virtual {v2, v4}, Lcom/ts/other/ParamButton;->setSelected(Z)V

    .line 80
    :goto_1
    return-void

    .line 68
    .end local v1    # "lang":I
    :cond_0
    iget-object v2, p0, Lcom/ts/factoryset/FsLangActivity;->mBtnLang:[Lcom/ts/other/ParamButton;

    aget-object v2, v2, v0

    invoke-virtual {v2, v3}, Lcom/ts/other/ParamButton;->setSelected(Z)V

    .line 66
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 78
    .restart local v1    # "lang":I
    :cond_1
    iget-object v2, p0, Lcom/ts/factoryset/FsLangActivity;->mBtnLang:[Lcom/ts/other/ParamButton;

    aget-object v2, v2, v3

    invoke-virtual {v2, v4}, Lcom/ts/other/ParamButton;->setSelected(Z)V

    goto :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 86
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 87
    .local v0, "id":I
    invoke-static {v0}, Lcom/yyw/ts70xhw/FtSet;->SetLangDef(I)I

    .line 88
    invoke-virtual {p0}, Lcom/ts/factoryset/FsLangActivity;->UpdateLang()V

    .line 89
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 46
    invoke-super {p0, p1}, Lcom/ts/factoryset/FsBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    sget v1, Lcom/ts/MainUI/R$layout;->activity_fs_lang:I

    invoke-virtual {p0, v1}, Lcom/ts/factoryset/FsLangActivity;->setContentView(I)V

    .line 49
    sget v1, Lcom/ts/MainUI/R$string;->str_fsmain_lang:I

    invoke-virtual {p0, v1}, Lcom/ts/factoryset/FsLangActivity;->topBtnInit(I)V

    .line 51
    new-instance v1, Lcom/ts/other/RelativeLayoutManager;

    sget v2, Lcom/ts/MainUI/R$id;->fs_lang_layout:I

    invoke-direct {v1, p0, v2}, Lcom/ts/other/RelativeLayoutManager;-><init>(Landroid/app/Activity;I)V

    iput-object v1, p0, Lcom/ts/factoryset/FsLangActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    .line 54
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/ts/factoryset/FsLangActivity;->mBtnLang:[Lcom/ts/other/ParamButton;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 62
    return-void

    .line 56
    :cond_0
    iget-object v1, p0, Lcom/ts/factoryset/FsLangActivity;->mBtnLang:[Lcom/ts/other/ParamButton;

    iget-object v2, p0, Lcom/ts/factoryset/FsLangActivity;->mManager:Lcom/ts/other/RelativeLayoutManager;

    rem-int/lit8 v3, v0, 0x4

    mul-int/lit16 v3, v3, 0xeb

    add-int/lit8 v3, v3, 0x32

    div-int/lit8 v4, v0, 0x4

    mul-int/lit8 v4, v4, 0x64

    add-int/lit8 v4, v4, 0x56

    invoke-virtual {v2, v3, v4}, Lcom/ts/other/RelativeLayoutManager;->AddButton(II)Lcom/ts/other/ParamButton;

    move-result-object v2

    aput-object v2, v1, v0

    .line 57
    iget-object v1, p0, Lcom/ts/factoryset/FsLangActivity;->mBtnLang:[Lcom/ts/other/ParamButton;

    aget-object v1, v1, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ts/other/ParamButton;->setTag(Ljava/lang/Object;)V

    .line 58
    iget-object v1, p0, Lcom/ts/factoryset/FsLangActivity;->mBtnLang:[Lcom/ts/other/ParamButton;

    aget-object v1, v1, v0

    invoke-virtual {v1, p0}, Lcom/ts/other/ParamButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    iget-object v1, p0, Lcom/ts/factoryset/FsLangActivity;->mBtnLang:[Lcom/ts/other/ParamButton;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/ts/factoryset/FsLangActivity;->mStrLang:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {p0, v1, v2}, Lcom/ts/factoryset/FsLangActivity;->SetCommBtn(Lcom/ts/other/ParamButton;Ljava/lang/String;)V

    .line 54
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 95
    invoke-super {p0}, Lcom/ts/factoryset/FsBaseActivity;->onResume()V

    .line 96
    invoke-virtual {p0}, Lcom/ts/factoryset/FsLangActivity;->UpdateLang()V

    .line 97
    return-void
.end method
