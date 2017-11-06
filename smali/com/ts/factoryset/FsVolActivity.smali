.class public Lcom/ts/factoryset/FsVolActivity;
.super Lcom/ts/factoryset/FsBaseActivity;
.source "FsVolActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ts/factoryset/FsVolActivity$FsVolAdapter;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "FsVolActivity"


# instance fields
.field private mAdapater:Lcom/ts/factoryset/FsVolActivity$FsVolAdapter;

.field private mGridView:Landroid/widget/GridView;

.field public mLayoutInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/ts/factoryset/FsBaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 48
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 32
    invoke-super {p0, p1}, Lcom/ts/factoryset/FsBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    sget v0, Lcom/ts/MainUI/R$layout;->activity_fs_vol:I

    invoke-virtual {p0, v0}, Lcom/ts/factoryset/FsVolActivity;->setContentView(I)V

    .line 35
    sget v0, Lcom/ts/MainUI/R$string;->str_fsmain_vol:I

    invoke-virtual {p0, v0}, Lcom/ts/factoryset/FsVolActivity;->topBtnInit(I)V

    .line 37
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/factoryset/FsVolActivity;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 38
    sget v0, Lcom/ts/MainUI/R$id;->fs_vol_grid:I

    invoke-virtual {p0, v0}, Lcom/ts/factoryset/FsVolActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/ts/factoryset/FsVolActivity;->mGridView:Landroid/widget/GridView;

    .line 40
    new-instance v0, Lcom/ts/factoryset/FsVolActivity$FsVolAdapter;

    invoke-direct {v0, p0}, Lcom/ts/factoryset/FsVolActivity$FsVolAdapter;-><init>(Lcom/ts/factoryset/FsVolActivity;)V

    iput-object v0, p0, Lcom/ts/factoryset/FsVolActivity;->mAdapater:Lcom/ts/factoryset/FsVolActivity$FsVolAdapter;

    .line 41
    iget-object v0, p0, Lcom/ts/factoryset/FsVolActivity;->mGridView:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/ts/factoryset/FsVolActivity;->mAdapater:Lcom/ts/factoryset/FsVolActivity$FsVolAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 42
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 54
    invoke-super {p0}, Lcom/ts/factoryset/FsBaseActivity;->onResume()V

    .line 55
    return-void
.end method
