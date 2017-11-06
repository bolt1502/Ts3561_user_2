.class public Lcom/ts/other/RelativeLayoutManager;
.super Ljava/lang/Object;
.source "RelativeLayoutManager.java"


# static fields
.field protected static final TAG:Ljava/lang/String; = "RelativeLayoutManager"


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mLayout:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>(Landroid/app/Activity;I)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "layoutId"    # I

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    invoke-virtual {p0, p1, p2}, Lcom/ts/other/RelativeLayoutManager;->Init(Landroid/app/Activity;I)V

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/widget/RelativeLayout;)V
    .locals 1
    .param p1, "rl"    # Landroid/widget/RelativeLayout;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/ts/other/RelativeLayoutManager;->mLayout:Landroid/widget/RelativeLayout;

    .line 24
    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/other/RelativeLayoutManager;->mContext:Landroid/content/Context;

    .line 25
    return-void
.end method


# virtual methods
.method public AddButton(II)Lcom/ts/other/ParamButton;
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 60
    new-instance v0, Lcom/ts/other/ParamButton;

    iget-object v1, p0, Lcom/ts/other/RelativeLayoutManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/ts/other/ParamButton;-><init>(Landroid/content/Context;)V

    .line 61
    .local v0, "btn":Lcom/ts/other/ParamButton;
    invoke-virtual {p0, v0, p1, p2}, Lcom/ts/other/RelativeLayoutManager;->AddViewWrapContent(Landroid/view/View;II)V

    .line 62
    return-object v0
.end method

.method public AddButton(IIII)Lcom/ts/other/ParamButton;
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I

    .prologue
    .line 53
    new-instance v1, Lcom/ts/other/ParamButton;

    iget-object v0, p0, Lcom/ts/other/RelativeLayoutManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v0}, Lcom/ts/other/ParamButton;-><init>(Landroid/content/Context;)V

    .local v1, "btn":Lcom/ts/other/ParamButton;
    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 54
    invoke-virtual/range {v0 .. v5}, Lcom/ts/other/RelativeLayoutManager;->AddView(Landroid/view/View;IIII)V

    .line 55
    return-object v1
.end method

.method public AddCanItem(Landroid/view/View;I)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "line"    # I

    .prologue
    .line 121
    const/4 v2, 0x0

    mul-int/lit8 v0, p2, 0x55

    add-int/lit8 v3, v0, 0xa

    const/4 v4, -0x2

    const/16 v5, 0x55

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/ts/other/RelativeLayoutManager;->AddView(Landroid/view/View;IIII)V

    .line 122
    return-void
.end method

.method public AddCusText(IIII)Lcom/ts/other/CustomTextView;
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I

    .prologue
    .line 114
    new-instance v1, Lcom/ts/other/CustomTextView;

    iget-object v0, p0, Lcom/ts/other/RelativeLayoutManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v0}, Lcom/ts/other/CustomTextView;-><init>(Landroid/content/Context;)V

    .local v1, "text":Lcom/ts/other/CustomTextView;
    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 115
    invoke-virtual/range {v0 .. v5}, Lcom/ts/other/RelativeLayoutManager;->AddView(Landroid/view/View;IIII)V

    .line 116
    return-object v1
.end method

.method public AddImage(II)Lcom/ts/other/CustomImgView;
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 74
    new-instance v0, Lcom/ts/other/CustomImgView;

    iget-object v1, p0, Lcom/ts/other/RelativeLayoutManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/ts/other/CustomImgView;-><init>(Landroid/content/Context;)V

    .line 75
    .local v0, "img":Lcom/ts/other/CustomImgView;
    invoke-virtual {p0, v0, p1, p2}, Lcom/ts/other/RelativeLayoutManager;->AddViewWrapContent(Landroid/view/View;II)V

    .line 76
    return-object v0
.end method

.method public AddImage(III)Lcom/ts/other/CustomImgView;
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "res"    # I

    .prologue
    .line 81
    new-instance v0, Lcom/ts/other/CustomImgView;

    iget-object v1, p0, Lcom/ts/other/RelativeLayoutManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/ts/other/CustomImgView;-><init>(Landroid/content/Context;)V

    .line 82
    .local v0, "img":Lcom/ts/other/CustomImgView;
    if-eqz p3, :cond_0

    .line 84
    invoke-virtual {v0, p3}, Lcom/ts/other/CustomImgView;->setImageResource(I)V

    .line 86
    :cond_0
    invoke-virtual {p0, v0, p1, p2}, Lcom/ts/other/RelativeLayoutManager;->AddViewWrapContent(Landroid/view/View;II)V

    .line 87
    return-object v0
.end method

.method public AddImage(IIII)Lcom/ts/other/CustomImgView;
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I

    .prologue
    .line 67
    new-instance v1, Lcom/ts/other/CustomImgView;

    iget-object v0, p0, Lcom/ts/other/RelativeLayoutManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v0}, Lcom/ts/other/CustomImgView;-><init>(Landroid/content/Context;)V

    .local v1, "img":Lcom/ts/other/CustomImgView;
    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 68
    invoke-virtual/range {v0 .. v5}, Lcom/ts/other/RelativeLayoutManager;->AddView(Landroid/view/View;IIII)V

    .line 69
    return-object v1
.end method

.method public AddImageEx(IIIII)Lcom/ts/other/CustomImgView;
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I
    .param p5, "resId"    # I

    .prologue
    .line 92
    new-instance v1, Lcom/ts/other/CustomImgView;

    iget-object v0, p0, Lcom/ts/other/RelativeLayoutManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v0}, Lcom/ts/other/CustomImgView;-><init>(Landroid/content/Context;)V

    .line 93
    .local v1, "img":Lcom/ts/other/CustomImgView;
    invoke-virtual {v1, p5}, Lcom/ts/other/CustomImgView;->setImageResource(I)V

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 94
    invoke-virtual/range {v0 .. v5}, Lcom/ts/other/RelativeLayoutManager;->AddView(Landroid/view/View;IIII)V

    .line 95
    return-object v1
.end method

.method public AddText(II)Landroid/widget/TextView;
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 107
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ts/other/RelativeLayoutManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 108
    .local v0, "text":Landroid/widget/TextView;
    invoke-virtual {p0, v0, p1, p2}, Lcom/ts/other/RelativeLayoutManager;->AddViewWrapContent(Landroid/view/View;II)V

    .line 109
    return-object v0
.end method

.method public AddText(IIII)Landroid/widget/TextView;
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I

    .prologue
    .line 100
    new-instance v1, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/ts/other/RelativeLayoutManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .local v1, "text":Landroid/widget/TextView;
    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 101
    invoke-virtual/range {v0 .. v5}, Lcom/ts/other/RelativeLayoutManager;->AddView(Landroid/view/View;IIII)V

    .line 102
    return-object v1
.end method

.method public AddView(Landroid/view/View;IIII)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "w"    # I
    .param p5, "h"    # I

    .prologue
    .line 35
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, p4, p5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 36
    .local v0, "rl":Landroid/widget/RelativeLayout$LayoutParams;
    iput p2, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 37
    iput p3, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 38
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 39
    iget-object v1, p0, Lcom/ts/other/RelativeLayoutManager;->mLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 40
    return-void
.end method

.method public AddViewWrapContent(Landroid/view/View;II)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    const/4 v1, -0x2

    .line 44
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 45
    .local v0, "rl":Landroid/widget/RelativeLayout$LayoutParams;
    iput p2, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 46
    iput p3, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 47
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 48
    iget-object v1, p0, Lcom/ts/other/RelativeLayoutManager;->mLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 49
    return-void
.end method

.method public GetLayout()Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/ts/other/RelativeLayoutManager;->mLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public Init(Landroid/app/Activity;I)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "layoutId"    # I

    .prologue
    .line 29
    iput-object p1, p0, Lcom/ts/other/RelativeLayoutManager;->mContext:Landroid/content/Context;

    .line 30
    invoke-virtual {p1, p2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/ts/other/RelativeLayoutManager;->mLayout:Landroid/widget/RelativeLayout;

    .line 31
    return-void
.end method

.method public RemoveAllViews()V
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/ts/other/RelativeLayoutManager;->mLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 127
    return-void
.end method
