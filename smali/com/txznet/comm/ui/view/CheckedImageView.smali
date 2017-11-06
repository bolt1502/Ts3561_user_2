.class public Lcom/txznet/comm/ui/view/CheckedImageView;
.super Landroid/widget/ImageView;
.source "Proguard"

# interfaces
.implements Lcom/txznet/comm/ui/IKeepClass;


# instance fields
.field protected T:Z

.field private T2:Landroid/graphics/drawable/Drawable;

.field private T3:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 27
    invoke-direct {p0, p1}, Lcom/txznet/comm/ui/view/CheckedImageView;->T(Landroid/content/Context;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    invoke-direct {p0, p1}, Lcom/txznet/comm/ui/view/CheckedImageView;->T(Landroid/content/Context;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 16
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 17
    invoke-direct {p0, p1}, Lcom/txznet/comm/ui/view/CheckedImageView;->T(Landroid/content/Context;)V

    .line 18
    return-void
.end method

.method private T(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/txznet/comm/ui/view/CheckedImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/txznet/txz/comm/R$drawable;->asr_switch_on:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/txznet/comm/ui/view/CheckedImageView;->T3:Landroid/graphics/drawable/Drawable;

    .line 32
    invoke-virtual {p0}, Lcom/txznet/comm/ui/view/CheckedImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/txznet/txz/comm/R$drawable;->asr_switch_off:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/txznet/comm/ui/view/CheckedImageView;->T2:Landroid/graphics/drawable/Drawable;

    .line 33
    return-void
.end method


# virtual methods
.method public isChecked()Z
    .locals 1

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/txznet/comm/ui/view/CheckedImageView;->T:Z

    return v0
.end method

.method public setChecked(Z)V
    .locals 1
    .param p1, "checked"    # Z

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/txznet/comm/ui/view/CheckedImageView;->T:Z

    .line 39
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/txznet/comm/ui/view/CheckedImageView;->T3:Landroid/graphics/drawable/Drawable;

    :goto_0
    invoke-virtual {p0, v0}, Lcom/txznet/comm/ui/view/CheckedImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 40
    return-void

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/txznet/comm/ui/view/CheckedImageView;->T2:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method
