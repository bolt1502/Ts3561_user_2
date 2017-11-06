.class public Lcom/ts/set/setview/SetItemVerticalSeekBar;
.super Ljava/lang/Object;
.source "SetItemVerticalSeekBar.java"


# instance fields
.field private mSb:Lcom/ts/set/setview/SettingSeekBar;

.field private mTitle:Landroid/widget/TextView;

.field private mVal:Landroid/widget/TextView;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "Id"    # I

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 20
    .local v0, "li":Landroid/view/LayoutInflater;
    sget v1, Lcom/ts/MainUI/R$layout;->set_vertical_seekbar:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/ts/set/setview/SetItemVerticalSeekBar;->mView:Landroid/view/View;

    .line 21
    iget-object v1, p0, Lcom/ts/set/setview/SetItemVerticalSeekBar;->mView:Landroid/view/View;

    sget v2, Lcom/ts/MainUI/R$id;->seek_name:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/ts/set/setview/SetItemVerticalSeekBar;->mTitle:Landroid/widget/TextView;

    .line 22
    iget-object v1, p0, Lcom/ts/set/setview/SetItemVerticalSeekBar;->mView:Landroid/view/View;

    sget v2, Lcom/ts/MainUI/R$id;->seek_value:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/ts/set/setview/SetItemVerticalSeekBar;->mVal:Landroid/widget/TextView;

    .line 24
    iget-object v1, p0, Lcom/ts/set/setview/SetItemVerticalSeekBar;->mView:Landroid/view/View;

    sget v2, Lcom/ts/MainUI/R$id;->sb:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/ts/set/setview/SettingSeekBar;

    iput-object v1, p0, Lcom/ts/set/setview/SetItemVerticalSeekBar;->mSb:Lcom/ts/set/setview/SettingSeekBar;

    .line 26
    if-eqz p2, :cond_0

    .line 28
    iget-object v1, p0, Lcom/ts/set/setview/SetItemVerticalSeekBar;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 30
    :cond_0
    return-void
.end method


# virtual methods
.method public GetSeekBar()Lcom/ts/set/setview/SettingSeekBar;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/ts/set/setview/SetItemVerticalSeekBar;->mSb:Lcom/ts/set/setview/SettingSeekBar;

    return-object v0
.end method

.method public GetView()Landroid/view/View;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/ts/set/setview/SetItemVerticalSeekBar;->mView:Landroid/view/View;

    return-object v0
.end method

.method public SetTitle(Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/ts/set/setview/SetItemVerticalSeekBar;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35
    return-void
.end method

.method public SetVal(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/ts/set/setview/SetItemVerticalSeekBar;->mVal:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    return-void
.end method
