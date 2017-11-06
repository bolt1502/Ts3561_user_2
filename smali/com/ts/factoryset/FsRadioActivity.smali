.class public Lcom/ts/factoryset/FsRadioActivity;
.super Lcom/ts/factoryset/FsBaseActivity;
.source "FsRadioActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ts/factoryset/FsRadioActivity$FsRadioAdapter;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "FsRadioActivity"


# instance fields
.field private mAdapater:Lcom/ts/factoryset/FsRadioActivity$FsRadioAdapter;

.field private mDlg:Lcom/ts/factoryset/FsInputDlg;

.field private mListRad:Landroid/widget/ListView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/ts/factoryset/FsBaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/ts/factoryset/FsRadioActivity;)Lcom/ts/factoryset/FsInputDlg;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/ts/factoryset/FsRadioActivity;->mDlg:Lcom/ts/factoryset/FsInputDlg;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 50
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 32
    invoke-super {p0, p1}, Lcom/ts/factoryset/FsBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    sget v0, Lcom/ts/MainUI/R$layout;->activity_fs_radio:I

    invoke-virtual {p0, v0}, Lcom/ts/factoryset/FsRadioActivity;->setContentView(I)V

    .line 35
    sget v0, Lcom/ts/MainUI/R$string;->str_fsmain_rad:I

    invoke-virtual {p0, v0}, Lcom/ts/factoryset/FsRadioActivity;->topBtnInit(I)V

    .line 37
    sget v0, Lcom/ts/MainUI/R$id;->fs_rad_list:I

    invoke-virtual {p0, v0}, Lcom/ts/factoryset/FsRadioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/ts/factoryset/FsRadioActivity;->mListRad:Landroid/widget/ListView;

    .line 39
    new-instance v0, Lcom/ts/factoryset/FsRadioActivity$FsRadioAdapter;

    invoke-direct {v0, p0, p0}, Lcom/ts/factoryset/FsRadioActivity$FsRadioAdapter;-><init>(Lcom/ts/factoryset/FsRadioActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ts/factoryset/FsRadioActivity;->mAdapater:Lcom/ts/factoryset/FsRadioActivity$FsRadioAdapter;

    .line 40
    iget-object v0, p0, Lcom/ts/factoryset/FsRadioActivity;->mListRad:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/ts/factoryset/FsRadioActivity;->mAdapater:Lcom/ts/factoryset/FsRadioActivity$FsRadioAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 42
    new-instance v0, Lcom/ts/factoryset/FsInputDlg;

    invoke-direct {v0}, Lcom/ts/factoryset/FsInputDlg;-><init>()V

    iput-object v0, p0, Lcom/ts/factoryset/FsRadioActivity;->mDlg:Lcom/ts/factoryset/FsInputDlg;

    .line 44
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 56
    invoke-super {p0}, Lcom/ts/factoryset/FsBaseActivity;->onResume()V

    .line 57
    return-void
.end method
