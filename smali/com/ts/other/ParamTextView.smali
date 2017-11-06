.class public Lcom/ts/other/ParamTextView;
.super Landroid/widget/TextView;
.source "ParamTextView.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mParam:I

.field private mParam2:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 15
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 16
    iput-object p1, p0, Lcom/ts/other/ParamTextView;->mContext:Landroid/content/Context;

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attributeSet"    # Landroid/util/AttributeSet;

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    iput-object p1, p0, Lcom/ts/other/ParamTextView;->mContext:Landroid/content/Context;

    .line 24
    return-void
.end method


# virtual methods
.method public getIntParam()I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/ts/other/ParamTextView;->mParam:I

    return v0
.end method

.method public getIntParam2()I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/ts/other/ParamTextView;->mParam2:I

    return v0
.end method

.method public setIntParam(I)V
    .locals 0
    .param p1, "p"    # I

    .prologue
    .line 29
    iput p1, p0, Lcom/ts/other/ParamTextView;->mParam:I

    .line 30
    return-void
.end method

.method public setIntParam2(I)V
    .locals 0
    .param p1, "p"    # I

    .prologue
    .line 39
    iput p1, p0, Lcom/ts/other/ParamTextView;->mParam2:I

    .line 40
    return-void
.end method
