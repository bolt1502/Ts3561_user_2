.class public Lcom/txznet/comm/ui/TG/T2;
.super Ljava/lang/Object;
.source "Proguard"


# direct methods
.method public static T()Landroid/view/animation/AnimationSet;
    .locals 11

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 18
    const/16 v9, 0x12c

    .line 19
    .local v9, "duration":I
    new-instance v10, Landroid/view/animation/AnimationSet;

    invoke-direct {v10, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 21
    .local v10, "set":Landroid/view/animation/AnimationSet;
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const v3, 0x3e4ccccd    # 0.2f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v3, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 22
    .local v0, "animation":Landroid/view/animation/Animation;
    int-to-long v3, v9

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 23
    invoke-virtual {v10, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 25
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .end local v0    # "animation":Landroid/view/animation/Animation;
    const v6, 0x3f666666    # 0.9f

    move v3, v1

    move v4, v2

    move v5, v1

    move v7, v1

    move v8, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 28
    .restart local v0    # "animation":Landroid/view/animation/Animation;
    int-to-long v1, v9

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 29
    invoke-virtual {v10, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 30
    return-object v10
.end method
