.class public Lcom/ts/factoryset/FsIconActivity;
.super Lcom/ts/factoryset/FsBaseActivity;
.source "FsIconActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ts/factoryset/FsIconActivity$FsIconGridAdapter;,
        Lcom/ts/factoryset/FsIconActivity$FsIconListAdapter;
    }
.end annotation


# static fields
.field public static final FocusLeft:I = 0x1

.field public static final FocusNull:I = 0x0

.field public static final FocusRight:I = 0x2

.field public static final TAG:Ljava/lang/String; = "FsIconActivity"


# instance fields
.field public mFocusFlg:I

.field private mFtIco:[I

.field private mFtIcoNum:I

.field private mGridAdapater:Lcom/ts/factoryset/FsIconActivity$FsIconGridAdapter;

.field private mGridView:Landroid/widget/GridView;

.field private mListAdapater:Lcom/ts/factoryset/FsIconActivity$FsIconListAdapter;

.field private mListView:Landroid/widget/ListView;

.field private mStrIcoArr:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/ts/factoryset/FsBaseActivity;-><init>()V

    .line 33
    const/16 v0, 0x64

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/ts/factoryset/FsIconActivity;->mFtIco:[I

    .line 34
    const/16 v0, 0x28

    iput v0, p0, Lcom/ts/factoryset/FsIconActivity;->mFtIcoNum:I

    .line 21
    return-void
.end method

.method static synthetic access$0(Lcom/ts/factoryset/FsIconActivity;)Lcom/ts/factoryset/FsIconActivity$FsIconListAdapter;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/ts/factoryset/FsIconActivity;->mListAdapater:Lcom/ts/factoryset/FsIconActivity$FsIconListAdapter;

    return-object v0
.end method

.method static synthetic access$1(Lcom/ts/factoryset/FsIconActivity;I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/ts/factoryset/FsIconActivity;->getIconName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2(Lcom/ts/factoryset/FsIconActivity;)Lcom/ts/factoryset/FsIconActivity$FsIconGridAdapter;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/ts/factoryset/FsIconActivity;->mGridAdapater:Lcom/ts/factoryset/FsIconActivity$FsIconGridAdapter;

    return-object v0
.end method

.method private getIconName(I)Ljava/lang/String;
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 89
    if-lez p1, :cond_0

    iget-object v0, p0, Lcom/ts/factoryset/FsIconActivity;->mStrIcoArr:[Ljava/lang/String;

    array-length v0, v0

    if-gt p1, v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/ts/factoryset/FsIconActivity;->mStrIcoArr:[Ljava/lang/String;

    add-int/lit8 v1, p1, -0x1

    aget-object v0, v0, v1

    .line 94
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Icon "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 85
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 52
    invoke-super {p0, p1}, Lcom/ts/factoryset/FsBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    sget v0, Lcom/ts/MainUI/R$layout;->activity_fs_icon:I

    invoke-virtual {p0, v0}, Lcom/ts/factoryset/FsIconActivity;->setContentView(I)V

    .line 55
    sget v0, Lcom/ts/MainUI/R$string;->str_fsmain_ico:I

    invoke-virtual {p0, v0}, Lcom/ts/factoryset/FsIconActivity;->topBtnInit(I)V

    .line 58
    sget v0, Lcom/ts/MainUI/R$id;->fsicon_grid:I

    invoke-virtual {p0, v0}, Lcom/ts/factoryset/FsIconActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/ts/factoryset/FsIconActivity;->mGridView:Landroid/widget/GridView;

    .line 60
    new-instance v0, Lcom/ts/factoryset/FsIconActivity$FsIconGridAdapter;

    const/16 v1, 0x1e

    invoke-direct {v0, p0, p0, v1}, Lcom/ts/factoryset/FsIconActivity$FsIconGridAdapter;-><init>(Lcom/ts/factoryset/FsIconActivity;Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/ts/factoryset/FsIconActivity;->mGridAdapater:Lcom/ts/factoryset/FsIconActivity$FsIconGridAdapter;

    .line 61
    iget-object v0, p0, Lcom/ts/factoryset/FsIconActivity;->mGridView:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/ts/factoryset/FsIconActivity;->mGridAdapater:Lcom/ts/factoryset/FsIconActivity$FsIconGridAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 63
    invoke-virtual {p0}, Lcom/ts/factoryset/FsIconActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/ts/MainUI/R$array;->menu_ico_arr:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/factoryset/FsIconActivity;->mStrIcoArr:[Ljava/lang/String;

    .line 65
    sget v0, Lcom/ts/MainUI/R$id;->fsicon_list:I

    invoke-virtual {p0, v0}, Lcom/ts/factoryset/FsIconActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/ts/factoryset/FsIconActivity;->mListView:Landroid/widget/ListView;

    .line 66
    new-instance v0, Lcom/ts/factoryset/FsIconActivity$FsIconListAdapter;

    iget-object v1, p0, Lcom/ts/factoryset/FsIconActivity;->mStrIcoArr:[Ljava/lang/String;

    array-length v1, v1

    invoke-direct {v0, p0, p0, v1}, Lcom/ts/factoryset/FsIconActivity$FsIconListAdapter;-><init>(Lcom/ts/factoryset/FsIconActivity;Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/ts/factoryset/FsIconActivity;->mListAdapater:Lcom/ts/factoryset/FsIconActivity$FsIconListAdapter;

    .line 67
    iget-object v0, p0, Lcom/ts/factoryset/FsIconActivity;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/ts/factoryset/FsIconActivity;->mListAdapater:Lcom/ts/factoryset/FsIconActivity$FsIconListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 71
    iget-object v0, p0, Lcom/ts/factoryset/FsIconActivity;->mListView:Landroid/widget/ListView;

    new-instance v1, Lcom/ts/factoryset/FsIconActivity$1;

    invoke-direct {v1, p0}, Lcom/ts/factoryset/FsIconActivity$1;-><init>(Lcom/ts/factoryset/FsIconActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 79
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 144
    invoke-virtual {p0}, Lcom/ts/factoryset/FsIconActivity;->onSave()V

    .line 145
    invoke-super {p0}, Lcom/ts/factoryset/FsBaseActivity;->onPause()V

    .line 146
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 103
    iput v3, p0, Lcom/ts/factoryset/FsIconActivity;->mFocusFlg:I

    .line 104
    iget-object v1, p0, Lcom/ts/factoryset/FsIconActivity;->mFtIco:[I

    invoke-static {v1}, Lcom/yyw/ts70xhw/FtSet;->GetIcon([I)I

    .line 105
    iget-object v1, p0, Lcom/ts/factoryset/FsIconActivity;->mListAdapater:Lcom/ts/factoryset/FsIconActivity$FsIconListAdapter;

    invoke-virtual {v1}, Lcom/ts/factoryset/FsIconActivity$FsIconListAdapter;->setAll()V

    .line 106
    iget-object v1, p0, Lcom/ts/factoryset/FsIconActivity;->mGridAdapater:Lcom/ts/factoryset/FsIconActivity$FsIconGridAdapter;

    invoke-virtual {v1}, Lcom/ts/factoryset/FsIconActivity$FsIconGridAdapter;->resetAll()V

    .line 109
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/ts/factoryset/FsIconActivity;->mFtIcoNum:I

    if-lt v0, v1, :cond_0

    .line 124
    invoke-super {p0}, Lcom/ts/factoryset/FsBaseActivity;->onResume()V

    .line 125
    return-void

    .line 111
    :cond_0
    iget-object v1, p0, Lcom/ts/factoryset/FsIconActivity;->mFtIco:[I

    aget v1, v1, v0

    if-lez v1, :cond_1

    .line 113
    iget-object v1, p0, Lcom/ts/factoryset/FsIconActivity;->mFtIco:[I

    aget v1, v1, v0

    iget-object v2, p0, Lcom/ts/factoryset/FsIconActivity;->mListAdapater:Lcom/ts/factoryset/FsIconActivity$FsIconListAdapter;

    invoke-virtual {v2}, Lcom/ts/factoryset/FsIconActivity$FsIconListAdapter;->getMaxIcoVal()I

    move-result v2

    if-gt v1, v2, :cond_1

    .line 116
    iget-object v1, p0, Lcom/ts/factoryset/FsIconActivity;->mGridAdapater:Lcom/ts/factoryset/FsIconActivity$FsIconGridAdapter;

    iget-object v2, p0, Lcom/ts/factoryset/FsIconActivity;->mFtIco:[I

    aget v2, v2, v0

    invoke-virtual {v1, v0, v2}, Lcom/ts/factoryset/FsIconActivity$FsIconGridAdapter;->setIndexVal(II)V

    .line 117
    iget-object v1, p0, Lcom/ts/factoryset/FsIconActivity;->mListAdapater:Lcom/ts/factoryset/FsIconActivity$FsIconListAdapter;

    iget-object v2, p0, Lcom/ts/factoryset/FsIconActivity;->mFtIco:[I

    aget v2, v2, v0

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2, v3}, Lcom/ts/factoryset/FsIconActivity$FsIconListAdapter;->setIndexVal(II)V

    .line 109
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected onSave()V
    .locals 3

    .prologue
    .line 130
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/ts/factoryset/FsIconActivity;->mFtIcoNum:I

    if-lt v0, v1, :cond_0

    .line 136
    const-string v1, "FsIconActivity"

    const-string v2, "onSave"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    return-void

    .line 132
    :cond_0
    iget-object v1, p0, Lcom/ts/factoryset/FsIconActivity;->mFtIco:[I

    iget-object v2, p0, Lcom/ts/factoryset/FsIconActivity;->mGridAdapater:Lcom/ts/factoryset/FsIconActivity$FsIconGridAdapter;

    invoke-virtual {v2, v0}, Lcom/ts/factoryset/FsIconActivity$FsIconGridAdapter;->getIndexVal(I)I

    move-result v2

    aput v2, v1, v0

    .line 133
    iget-object v1, p0, Lcom/ts/factoryset/FsIconActivity;->mFtIco:[I

    invoke-static {v1}, Lcom/yyw/ts70xhw/FtSet;->SetIcon([I)I

    .line 130
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
