.class public Lcom/ts/set/setview/SetMainItemSw;
.super Ljava/lang/Object;
.source "SetMainItemSw.java"


# instance fields
.field private mTextTitle:Landroid/widget/TextView;

.field private mVal:Landroid/widget/TextView;

.field private mView:Landroid/view/View;

.field private switch_ctrl:Landroid/widget/Switch;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "strVal"    # Ljava/lang/String;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-virtual {p0, p1, p2}, Lcom/ts/set/setview/SetMainItemSw;->Create(Landroid/content/Context;Ljava/lang/String;)V

    .line 25
    return-void
.end method

.method private Init(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 74
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 75
    .local v0, "li":Landroid/view/LayoutInflater;
    sget v1, Lcom/ts/MainUI/R$layout;->set_main_item_sw:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/ts/set/setview/SetMainItemSw;->mView:Landroid/view/View;

    .line 78
    iget-object v1, p0, Lcom/ts/set/setview/SetMainItemSw;->mView:Landroid/view/View;

    sget v2, Lcom/ts/MainUI/R$id;->set_text:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/ts/set/setview/SetMainItemSw;->mTextTitle:Landroid/widget/TextView;

    .line 79
    iget-object v1, p0, Lcom/ts/set/setview/SetMainItemSw;->mView:Landroid/view/View;

    sget v2, Lcom/ts/MainUI/R$id;->switch_value:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/ts/set/setview/SetMainItemSw;->mVal:Landroid/widget/TextView;

    .line 80
    iget-object v1, p0, Lcom/ts/set/setview/SetMainItemSw;->mView:Landroid/view/View;

    sget v2, Lcom/ts/MainUI/R$id;->switch_ctrl:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Switch;

    iput-object v1, p0, Lcom/ts/set/setview/SetMainItemSw;->switch_ctrl:Landroid/widget/Switch;

    .line 83
    return-void
.end method

.method static synthetic access$0(Lcom/ts/set/setview/SetMainItemSw;)Landroid/widget/Switch;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/ts/set/setview/SetMainItemSw;->switch_ctrl:Landroid/widget/Switch;

    return-object v0
.end method


# virtual methods
.method public Create(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "strVal"    # Ljava/lang/String;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/ts/set/setview/SetMainItemSw;->Init(Landroid/content/Context;)V

    .line 30
    iget-object v0, p0, Lcom/ts/set/setview/SetMainItemSw;->mTextTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 31
    return-void
.end method

.method public GetView()Landroid/view/View;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/ts/set/setview/SetMainItemSw;->mView:Landroid/view/View;

    return-object v0
.end method

.method public SetSwitch(I)V
    .locals 4
    .param p1, "nSw"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 54
    if-ne p1, v2, :cond_0

    .line 56
    iget-object v0, p0, Lcom/ts/set/setview/SetMainItemSw;->mVal:Landroid/widget/TextView;

    sget v1, Lcom/ts/MainUI/R$string;->set_common_switch_on:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 57
    iget-object v0, p0, Lcom/ts/set/setview/SetMainItemSw;->switch_ctrl:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setSelected(Z)V

    .line 58
    iget-object v0, p0, Lcom/ts/set/setview/SetMainItemSw;->switch_ctrl:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 59
    iget-object v0, p0, Lcom/ts/set/setview/SetMainItemSw;->switch_ctrl:Landroid/widget/Switch;

    sget v1, Lcom/ts/MainUI/R$drawable;->setup_switch_dn:I

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setThumbResource(I)V

    .line 60
    iget-object v0, p0, Lcom/ts/set/setview/SetMainItemSw;->switch_ctrl:Landroid/widget/Switch;

    sget v1, Lcom/ts/MainUI/R$drawable;->setup_switch_track_dn:I

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setTrackResource(I)V

    .line 70
    :goto_0
    return-void

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/ts/set/setview/SetMainItemSw;->mVal:Landroid/widget/TextView;

    sget v1, Lcom/ts/MainUI/R$string;->set_common_switch_off:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 65
    iget-object v0, p0, Lcom/ts/set/setview/SetMainItemSw;->switch_ctrl:Landroid/widget/Switch;

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setSelected(Z)V

    .line 66
    iget-object v0, p0, Lcom/ts/set/setview/SetMainItemSw;->switch_ctrl:Landroid/widget/Switch;

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 67
    iget-object v0, p0, Lcom/ts/set/setview/SetMainItemSw;->switch_ctrl:Landroid/widget/Switch;

    sget v1, Lcom/ts/MainUI/R$drawable;->setup_switch_up:I

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setThumbResource(I)V

    .line 68
    iget-object v0, p0, Lcom/ts/set/setview/SetMainItemSw;->switch_ctrl:Landroid/widget/Switch;

    sget v1, Lcom/ts/MainUI/R$drawable;->setup_switch_track_up:I

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setTrackResource(I)V

    goto :goto_0
.end method

.method public SetUserCallback(ILandroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 2
    .param p1, "nid"    # I
    .param p2, "listener"    # Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/ts/set/setview/SetMainItemSw;->switch_ctrl:Landroid/widget/Switch;

    invoke-virtual {v0, p2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 35
    iget-object v0, p0, Lcom/ts/set/setview/SetMainItemSw;->switch_ctrl:Landroid/widget/Switch;

    new-instance v1, Lcom/ts/set/setview/SetMainItemSw$1;

    invoke-direct {v1, p0}, Lcom/ts/set/setview/SetMainItemSw$1;-><init>(Lcom/ts/set/setview/SetMainItemSw;)V

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 45
    iget-object v0, p0, Lcom/ts/set/setview/SetMainItemSw;->switch_ctrl:Landroid/widget/Switch;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setTag(Ljava/lang/Object;)V

    .line 46
    return-void
.end method
