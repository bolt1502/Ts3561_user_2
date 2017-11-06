.class public Lcom/ts/can/lexus/is250/CanLexusIs250VolUI;
.super Ljava/lang/Object;
.source "CanLexusIs250VolUI.java"

# interfaces
.implements Lcom/ts/MainUI/UserCallBack;


# static fields
.field public static final TAG:Ljava/lang/String; = "CanLexusIs250VolUI"

.field protected static mContext:Landroid/content/Context;

.field static mInstance:Lcom/ts/can/lexus/is250/CanLexusIs250VolUI;

.field protected static mIsVol:Z


# instance fields
.field private mLayout:Landroid/widget/RelativeLayout;

.field private mManager:Lcom/ts/other/RelativeLayoutManager;

.field private mMuteSta:Lcom/ts/other/CustomImgView;

.field private mVolInfo:Lcom/lgb/canmodule/CanDataInfo$Is250_Vol;

.field private mVolVal:Lcom/ts/other/CustomTextView;

.field private wManager:Landroid/view/WindowManager;

.field private wmParams:Landroid/view/WindowManager$LayoutParams;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Lcom/lgb/canmodule/CanDataInfo$Is250_Vol;

    invoke-direct {v0}, Lcom/lgb/canmodule/CanDataInfo$Is250_Vol;-><init>()V

    iput-object v0, p0, Lcom/ts/can/lexus/is250/CanLexusIs250VolUI;->mVolInfo:Lcom/lgb/canmodule/CanDataInfo$Is250_Vol;

    .line 40
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/ts/can/lexus/is250/CanLexusIs250VolUI;->wmParams:Landroid/view/WindowManager$LayoutParams;

    .line 49
    return-void
.end method

.method public static GetInstance()Lcom/ts/can/lexus/is250/CanLexusIs250VolUI;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/ts/can/lexus/is250/CanLexusIs250VolUI;->mInstance:Lcom/ts/can/lexus/is250/CanLexusIs250VolUI;

    if-nez v0, :cond_0

    .line 55
    new-instance v0, Lcom/ts/can/lexus/is250/CanLexusIs250VolUI;

    invoke-direct {v0}, Lcom/ts/can/lexus/is250/CanLexusIs250VolUI;-><init>()V

    sput-object v0, Lcom/ts/can/lexus/is250/CanLexusIs250VolUI;->mInstance:Lcom/ts/can/lexus/is250/CanLexusIs250VolUI;

    .line 58
    :cond_0
    sget-object v0, Lcom/ts/can/lexus/is250/CanLexusIs250VolUI;->mInstance:Lcom/ts/can/lexus/is250/CanLexusIs250VolUI;

    return-object v0
.end method

.method private ResetData(Z)V
    .locals 1
    .param p1, "check"    # Z

    .prologue
    .line 186
    iget-object v0, p0, Lcom/ts/can/lexus/is250/CanLexusIs250VolUI;->mVolInfo:Lcom/lgb/canmodule/CanDataInfo$Is250_Vol;

    invoke-static {v0}, Lcom/lgb/canmodule/CanJni;->LexusIs250GetVol(Lcom/lgb/canmodule/CanDataInfo$Is250_Vol;)V

    .line 187
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ts/can/lexus/is250/CanLexusIs250VolUI;->mVolInfo:Lcom/lgb/canmodule/CanDataInfo$Is250_Vol;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$Is250_Vol;->Update:I

    if-eqz v0, :cond_1

    .line 189
    :cond_0
    invoke-direct {p0}, Lcom/ts/can/lexus/is250/CanLexusIs250VolUI;->updateACUI()V

    .line 192
    :cond_1
    return-void
.end method

.method private updateACUI()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 159
    iget-object v0, p0, Lcom/ts/can/lexus/is250/CanLexusIs250VolUI;->mVolInfo:Lcom/lgb/canmodule/CanDataInfo$Is250_Vol;

    iput v4, v0, Lcom/lgb/canmodule/CanDataInfo$Is250_Vol;->Update:I

    .line 160
    const-string v0, "CanLexusIs250VolUI"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mVolInfo.Vol ="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ts/can/lexus/is250/CanLexusIs250VolUI;->mVolInfo:Lcom/lgb/canmodule/CanDataInfo$Is250_Vol;

    iget v2, v2, Lcom/lgb/canmodule/CanDataInfo$Is250_Vol;->Vol:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iget-object v0, p0, Lcom/ts/can/lexus/is250/CanLexusIs250VolUI;->mVolInfo:Lcom/lgb/canmodule/CanDataInfo$Is250_Vol;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$Is250_Vol;->Sta:I

    if-nez v0, :cond_0

    .line 163
    invoke-virtual {p0}, Lcom/ts/can/lexus/is250/CanLexusIs250VolUI;->onPause()V

    .line 164
    const-string v0, "CanLexusIs250VolUI"

    const-string v1, "Lexus UserAll Exit vol"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    :goto_0
    return-void

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/ts/can/lexus/is250/CanLexusIs250VolUI;->mVolInfo:Lcom/lgb/canmodule/CanDataInfo$Is250_Vol;

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$Is250_Vol;->Vol:I

    if-nez v0, :cond_1

    .line 170
    iget-object v0, p0, Lcom/ts/can/lexus/is250/CanLexusIs250VolUI;->mVolVal:Lcom/ts/other/CustomTextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    iget-object v0, p0, Lcom/ts/can/lexus/is250/CanLexusIs250VolUI;->mMuteSta:Lcom/ts/other/CustomImgView;

    invoke-virtual {v0, v3}, Lcom/ts/other/CustomImgView;->setSelected(Z)V

    goto :goto_0

    .line 175
    :cond_1
    iget-object v0, p0, Lcom/ts/can/lexus/is250/CanLexusIs250VolUI;->mVolVal:Lcom/ts/other/CustomTextView;

    const-string v1, "%02d"

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/ts/can/lexus/is250/CanLexusIs250VolUI;->mVolInfo:Lcom/lgb/canmodule/CanDataInfo$Is250_Vol;

    iget v3, v3, Lcom/lgb/canmodule/CanDataInfo$Is250_Vol;->Vol:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    iget-object v0, p0, Lcom/ts/can/lexus/is250/CanLexusIs250VolUI;->mMuteSta:Lcom/ts/other/CustomImgView;

    invoke-virtual {v0, v4}, Lcom/ts/other/CustomImgView;->setSelected(Z)V

    goto :goto_0
.end method


# virtual methods
.method protected AddImage(IIIIII)Lcom/ts/other/ParamButton;
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I
    .param p5, "up"    # I
    .param p6, "dn"    # I

    .prologue
    .line 123
    iget-object v1, p0, Lcom/ts/can/lexus/is250/CanLexusIs250VolUI;->mManager:Lcom/ts/other/RelativeLayoutManager;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/ts/other/RelativeLayoutManager;->AddButton(IIII)Lcom/ts/other/ParamButton;

    move-result-object v0

    .line 126
    .local v0, "btn":Lcom/ts/other/ParamButton;
    invoke-virtual {v0, p5, p6}, Lcom/ts/other/ParamButton;->setDrawable(II)V

    .line 127
    return-object v0
.end method

.method protected AddText(IIII)Lcom/ts/other/CustomTextView;
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I

    .prologue
    .line 133
    iget-object v1, p0, Lcom/ts/can/lexus/is250/CanLexusIs250VolUI;->mManager:Lcom/ts/other/RelativeLayoutManager;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/ts/other/RelativeLayoutManager;->AddCusText(IIII)Lcom/ts/other/CustomTextView;

    move-result-object v0

    .line 134
    .local v0, "temp":Lcom/ts/other/CustomTextView;
    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomTextView;->SetPxSize(I)V

    .line 135
    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomTextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    const/16 v1, 0x31

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomTextView;->setGravity(I)V

    .line 137
    return-object v0
.end method

.method public Destroy()V
    .locals 2

    .prologue
    .line 113
    const-string v0, "CanLexusIs250VolUI"

    const-string v1, "Destroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    iget-object v0, p0, Lcom/ts/can/lexus/is250/CanLexusIs250VolUI;->mLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/ts/can/lexus/is250/CanLexusIs250VolUI;->wManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/ts/can/lexus/is250/CanLexusIs250VolUI;->mLayout:Landroid/widget/RelativeLayout;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 117
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ts/can/lexus/is250/CanLexusIs250VolUI;->mLayout:Landroid/widget/RelativeLayout;

    .line 119
    :cond_0
    return-void
.end method

.method public InintWinManage(IIIILandroid/content/Context;)V
    .locals 2
    .param p1, "nSizeX"    # I
    .param p2, "nSizeY"    # I
    .param p3, "nPosX"    # I
    .param p4, "nPosY"    # I
    .param p5, "MyContext"    # Landroid/content/Context;

    .prologue
    .line 65
    .line 66
    const-string v0, "window"

    invoke-virtual {p5, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 65
    iput-object v0, p0, Lcom/ts/can/lexus/is250/CanLexusIs250VolUI;->wManager:Landroid/view/WindowManager;

    .line 67
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/ts/can/lexus/is250/CanLexusIs250VolUI;->wmParams:Landroid/view/WindowManager$LayoutParams;

    .line 68
    iget-object v0, p0, Lcom/ts/can/lexus/is250/CanLexusIs250VolUI;->wmParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x7d3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 69
    iget-object v0, p0, Lcom/ts/can/lexus/is250/CanLexusIs250VolUI;->wmParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 71
    iget-object v0, p0, Lcom/ts/can/lexus/is250/CanLexusIs250VolUI;->wmParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x18

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 74
    iget-object v0, p0, Lcom/ts/can/lexus/is250/CanLexusIs250VolUI;->wmParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 76
    iget-object v0, p0, Lcom/ts/can/lexus/is250/CanLexusIs250VolUI;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iput p3, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 77
    iget-object v0, p0, Lcom/ts/can/lexus/is250/CanLexusIs250VolUI;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iput p4, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 79
    iget-object v0, p0, Lcom/ts/can/lexus/is250/CanLexusIs250VolUI;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 80
    iget-object v0, p0, Lcom/ts/can/lexus/is250/CanLexusIs250VolUI;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 83
    return-void
.end method

.method public InitVol(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x0

    const/16 v1, 0x5b

    .line 87
    iget-object v0, p0, Lcom/ts/can/lexus/is250/CanLexusIs250VolUI;->mLayout:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    .line 109
    :cond_0
    :goto_0
    return-void

    .line 92
    :cond_1
    sput-object p1, Lcom/ts/can/lexus/is250/CanLexusIs250VolUI;->mContext:Landroid/content/Context;

    .line 93
    sget-object v0, Lcom/ts/can/lexus/is250/CanLexusIs250VolUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    .line 94
    .local v6, "inflater":Landroid/view/LayoutInflater;
    sget v0, Lcom/ts/MainUI/R$layout;->activity_can_lexus_vol:I

    const/4 v2, 0x0

    invoke-virtual {v6, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/ts/can/lexus/is250/CanLexusIs250VolUI;->mLayout:Landroid/widget/RelativeLayout;

    .line 95
    const/16 v3, 0x326

    const/16 v4, 0x11

    sget-object v5, Lcom/ts/can/lexus/is250/CanLexusIs250VolUI;->mContext:Landroid/content/Context;

    move-object v0, p0

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Lcom/ts/can/lexus/is250/CanLexusIs250VolUI;->InintWinManage(IIIILandroid/content/Context;)V

    .line 96
    iget-object v0, p0, Lcom/ts/can/lexus/is250/CanLexusIs250VolUI;->wManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/ts/can/lexus/is250/CanLexusIs250VolUI;->mLayout:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/ts/can/lexus/is250/CanLexusIs250VolUI;->wmParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v2, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 98
    new-instance v0, Lcom/ts/other/RelativeLayoutManager;

    iget-object v2, p0, Lcom/ts/can/lexus/is250/CanLexusIs250VolUI;->mLayout:Landroid/widget/RelativeLayout;

    invoke-direct {v0, v2}, Lcom/ts/other/RelativeLayoutManager;-><init>(Landroid/widget/RelativeLayout;)V

    iput-object v0, p0, Lcom/ts/can/lexus/is250/CanLexusIs250VolUI;->mManager:Lcom/ts/other/RelativeLayoutManager;

    .line 102
    iget-object v0, p0, Lcom/ts/can/lexus/is250/CanLexusIs250VolUI;->mManager:Lcom/ts/other/RelativeLayoutManager;

    invoke-virtual {v0, v7, v7}, Lcom/ts/other/RelativeLayoutManager;->AddImage(II)Lcom/ts/other/CustomImgView;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/lexus/is250/CanLexusIs250VolUI;->mMuteSta:Lcom/ts/other/CustomImgView;

    .line 103
    iget-object v0, p0, Lcom/ts/can/lexus/is250/CanLexusIs250VolUI;->mMuteSta:Lcom/ts/other/CustomImgView;

    sget v2, Lcom/ts/MainUI/R$drawable;->can_sound_dn:I

    sget v3, Lcom/ts/MainUI/R$drawable;->can_mute_up:I

    invoke-virtual {v0, v2, v3}, Lcom/ts/other/CustomImgView;->setStateDrawable(II)V

    .line 105
    const/4 v0, 0x5

    invoke-virtual {p0, v7, v0, v1, v1}, Lcom/ts/can/lexus/is250/CanLexusIs250VolUI;->AddText(IIII)Lcom/ts/other/CustomTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/lexus/is250/CanLexusIs250VolUI;->mVolVal:Lcom/ts/other/CustomTextView;

    .line 106
    iget-object v0, p0, Lcom/ts/can/lexus/is250/CanLexusIs250VolUI;->mVolVal:Lcom/ts/other/CustomTextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/ts/other/CustomTextView;->setTextColor(I)V

    .line 108
    invoke-virtual {p0}, Lcom/ts/can/lexus/is250/CanLexusIs250VolUI;->onPause()V

    goto :goto_0
.end method

.method public ShowVol()V
    .locals 1

    .prologue
    .line 210
    sget-boolean v0, Lcom/ts/can/lexus/is250/CanLexusIs250VolUI;->mIsVol:Z

    if-nez v0, :cond_0

    .line 212
    invoke-virtual {p0}, Lcom/ts/can/lexus/is250/CanLexusIs250VolUI;->onResume()V

    .line 214
    :cond_0
    return-void
.end method

.method public UserAll()V
    .locals 1

    .prologue
    .line 200
    sget-boolean v0, Lcom/ts/can/lexus/is250/CanLexusIs250VolUI;->mIsVol:Z

    if-eqz v0, :cond_0

    .line 202
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/ts/can/lexus/is250/CanLexusIs250VolUI;->ResetData(Z)V

    .line 204
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 151
    const-string v0, "CanLexusIs250VolUI"

    const-string v1, "-----onPause-----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    const/4 v0, 0x0

    sput-boolean v0, Lcom/ts/can/lexus/is250/CanLexusIs250VolUI;->mIsVol:Z

    .line 153
    iget-object v0, p0, Lcom/ts/can/lexus/is250/CanLexusIs250VolUI;->mLayout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 154
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 143
    invoke-direct {p0, v1}, Lcom/ts/can/lexus/is250/CanLexusIs250VolUI;->ResetData(Z)V

    .line 144
    const/4 v0, 0x1

    sput-boolean v0, Lcom/ts/can/lexus/is250/CanLexusIs250VolUI;->mIsVol:Z

    .line 145
    iget-object v0, p0, Lcom/ts/can/lexus/is250/CanLexusIs250VolUI;->mLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 146
    const-string v0, "CanLexusIs250VolUI"

    const-string v1, "-----onResume-----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    return-void
.end method
