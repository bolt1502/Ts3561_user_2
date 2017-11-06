.class public Lcom/ts/bt/MyTabHost;
.super Landroid/widget/TabHost;
.source "MyTabHost.java"


# instance fields
.field private slideLeftIn:Landroid/view/animation/Animation;

.field private slideLeftOut:Landroid/view/animation/Animation;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 58
    invoke-direct {p0, p1}, Landroid/widget/TabHost;-><init>(Landroid/content/Context;)V

    .line 59
    sget v0, Lcom/ts/MainUI/R$anim;->slide_left_out:I

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/bt/MyTabHost;->slideLeftOut:Landroid/view/animation/Animation;

    .line 60
    sget v0, Lcom/ts/MainUI/R$anim;->slide_left_in:I

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/bt/MyTabHost;->slideLeftIn:Landroid/view/animation/Animation;

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Landroid/widget/TabHost;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    sget v0, Lcom/ts/MainUI/R$anim;->slide_left_out:I

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/bt/MyTabHost;->slideLeftOut:Landroid/view/animation/Animation;

    .line 54
    sget v0, Lcom/ts/MainUI/R$anim;->slide_left_in:I

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/bt/MyTabHost;->slideLeftIn:Landroid/view/animation/Animation;

    .line 55
    return-void
.end method


# virtual methods
.method public setCurrentTab(I)V
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/ts/bt/MyTabHost;->getCurrentTab()I

    move-result v0

    .line 69
    .local v0, "currentTabIndex":I
    invoke-virtual {p0}, Lcom/ts/bt/MyTabHost;->getCurrentView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 70
    invoke-virtual {p0}, Lcom/ts/bt/MyTabHost;->getCurrentView()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/ts/bt/MyTabHost;->slideLeftOut:Landroid/view/animation/Animation;

    invoke-virtual {v1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 73
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 75
    invoke-virtual {p0}, Lcom/ts/bt/MyTabHost;->getCurrentView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 76
    invoke-virtual {p0}, Lcom/ts/bt/MyTabHost;->getCurrentView()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/ts/bt/MyTabHost;->slideLeftIn:Landroid/view/animation/Animation;

    invoke-virtual {v1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 78
    :cond_1
    return-void
.end method
