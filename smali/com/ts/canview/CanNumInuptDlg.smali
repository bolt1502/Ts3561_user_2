.class public Lcom/ts/canview/CanNumInuptDlg;
.super Lcom/ts/other/CustomDialog;
.source "CanNumInuptDlg.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ts/canview/CanNumInuptDlg$onInputOK;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "CanNumInuptDlg"


# instance fields
.field private mBtnNumDn:[I

.field private mBtnNumId:[I

.field private mBtnNumUp:[I

.field private mCurLen:I

.field private mId:I

.field private mMaxInputLen:I

.field private mOK:Lcom/ts/canview/CanNumInuptDlg$onInputOK;

.field private mStrInputText:Ljava/lang/String;

.field private mTvInput:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 89
    invoke-direct {p0}, Lcom/ts/other/CustomDialog;-><init>()V

    .line 22
    iput v4, p0, Lcom/ts/canview/CanNumInuptDlg;->mMaxInputLen:I

    .line 23
    iput v3, p0, Lcom/ts/canview/CanNumInuptDlg;->mCurLen:I

    .line 24
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/ts/canview/CanNumInuptDlg;->mStrInputText:Ljava/lang/String;

    .line 29
    const/16 v0, 0xd

    new-array v0, v0, [I

    .line 30
    sget v1, Lcom/ts/MainUI/R$id;->can_input_btn_num0:I

    aput v1, v0, v3

    .line 31
    sget v1, Lcom/ts/MainUI/R$id;->can_input_btn_num1:I

    aput v1, v0, v5

    .line 32
    sget v1, Lcom/ts/MainUI/R$id;->can_input_btn_num2:I

    aput v1, v0, v6

    .line 33
    sget v1, Lcom/ts/MainUI/R$id;->can_input_btn_num3:I

    aput v1, v0, v7

    .line 34
    sget v1, Lcom/ts/MainUI/R$id;->can_input_btn_num4:I

    aput v1, v0, v4

    const/4 v1, 0x5

    .line 35
    sget v2, Lcom/ts/MainUI/R$id;->can_input_btn_num5:I

    aput v2, v0, v1

    const/4 v1, 0x6

    .line 36
    sget v2, Lcom/ts/MainUI/R$id;->can_input_btn_num6:I

    aput v2, v0, v1

    const/4 v1, 0x7

    .line 37
    sget v2, Lcom/ts/MainUI/R$id;->can_input_btn_num7:I

    aput v2, v0, v1

    const/16 v1, 0x8

    .line 38
    sget v2, Lcom/ts/MainUI/R$id;->can_input_btn_num8:I

    aput v2, v0, v1

    const/16 v1, 0x9

    .line 39
    sget v2, Lcom/ts/MainUI/R$id;->can_input_btn_num9:I

    aput v2, v0, v1

    const/16 v1, 0xa

    .line 40
    sget v2, Lcom/ts/MainUI/R$id;->can_input_btn_delete:I

    aput v2, v0, v1

    const/16 v1, 0xb

    .line 41
    sget v2, Lcom/ts/MainUI/R$id;->can_input_btn_backspace:I

    aput v2, v0, v1

    const/16 v1, 0xc

    .line 42
    sget v2, Lcom/ts/MainUI/R$id;->can_input_btn_ok:I

    aput v2, v0, v1

    iput-object v0, p0, Lcom/ts/canview/CanNumInuptDlg;->mBtnNumId:[I

    .line 47
    const/16 v0, 0xd

    new-array v0, v0, [I

    .line 48
    sget v1, Lcom/ts/MainUI/R$drawable;->can_input_num0_up:I

    aput v1, v0, v3

    .line 49
    sget v1, Lcom/ts/MainUI/R$drawable;->can_input_num1_up:I

    aput v1, v0, v5

    .line 50
    sget v1, Lcom/ts/MainUI/R$drawable;->can_input_num2_up:I

    aput v1, v0, v6

    .line 51
    sget v1, Lcom/ts/MainUI/R$drawable;->can_input_num3_up:I

    aput v1, v0, v7

    .line 52
    sget v1, Lcom/ts/MainUI/R$drawable;->can_input_num4_up:I

    aput v1, v0, v4

    const/4 v1, 0x5

    .line 53
    sget v2, Lcom/ts/MainUI/R$drawable;->can_input_num5_up:I

    aput v2, v0, v1

    const/4 v1, 0x6

    .line 54
    sget v2, Lcom/ts/MainUI/R$drawable;->can_input_num6_up:I

    aput v2, v0, v1

    const/4 v1, 0x7

    .line 55
    sget v2, Lcom/ts/MainUI/R$drawable;->can_input_num7_up:I

    aput v2, v0, v1

    const/16 v1, 0x8

    .line 56
    sget v2, Lcom/ts/MainUI/R$drawable;->can_input_num8_up:I

    aput v2, v0, v1

    const/16 v1, 0x9

    .line 57
    sget v2, Lcom/ts/MainUI/R$drawable;->can_input_num9_up:I

    aput v2, v0, v1

    const/16 v1, 0xa

    .line 58
    sget v2, Lcom/ts/MainUI/R$drawable;->can_input_delete_up:I

    aput v2, v0, v1

    const/16 v1, 0xb

    .line 59
    sget v2, Lcom/ts/MainUI/R$drawable;->can_input_backspace_up:I

    aput v2, v0, v1

    const/16 v1, 0xc

    .line 60
    sget v2, Lcom/ts/MainUI/R$drawable;->can_input_ok_up:I

    aput v2, v0, v1

    iput-object v0, p0, Lcom/ts/canview/CanNumInuptDlg;->mBtnNumUp:[I

    .line 64
    const/16 v0, 0xd

    new-array v0, v0, [I

    .line 65
    sget v1, Lcom/ts/MainUI/R$drawable;->can_input_num0_dn:I

    aput v1, v0, v3

    .line 66
    sget v1, Lcom/ts/MainUI/R$drawable;->can_input_num1_dn:I

    aput v1, v0, v5

    .line 67
    sget v1, Lcom/ts/MainUI/R$drawable;->can_input_num2_dn:I

    aput v1, v0, v6

    .line 68
    sget v1, Lcom/ts/MainUI/R$drawable;->can_input_num3_dn:I

    aput v1, v0, v7

    .line 69
    sget v1, Lcom/ts/MainUI/R$drawable;->can_input_num4_dn:I

    aput v1, v0, v4

    const/4 v1, 0x5

    .line 70
    sget v2, Lcom/ts/MainUI/R$drawable;->can_input_num5_dn:I

    aput v2, v0, v1

    const/4 v1, 0x6

    .line 71
    sget v2, Lcom/ts/MainUI/R$drawable;->can_input_num6_dn:I

    aput v2, v0, v1

    const/4 v1, 0x7

    .line 72
    sget v2, Lcom/ts/MainUI/R$drawable;->can_input_num7_dn:I

    aput v2, v0, v1

    const/16 v1, 0x8

    .line 73
    sget v2, Lcom/ts/MainUI/R$drawable;->can_input_num8_dn:I

    aput v2, v0, v1

    const/16 v1, 0x9

    .line 74
    sget v2, Lcom/ts/MainUI/R$drawable;->can_input_num9_dn:I

    aput v2, v0, v1

    const/16 v1, 0xa

    .line 75
    sget v2, Lcom/ts/MainUI/R$drawable;->can_input_delete_dn:I

    aput v2, v0, v1

    const/16 v1, 0xb

    .line 76
    sget v2, Lcom/ts/MainUI/R$drawable;->can_input_backspace_dn:I

    aput v2, v0, v1

    const/16 v1, 0xc

    .line 77
    sget v2, Lcom/ts/MainUI/R$drawable;->can_input_ok_dn:I

    aput v2, v0, v1

    iput-object v0, p0, Lcom/ts/canview/CanNumInuptDlg;->mBtnNumDn:[I

    .line 91
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/ts/canview/CanNumInuptDlg$onInputOK;II)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ok"    # Lcom/ts/canview/CanNumInuptDlg$onInputOK;
    .param p3, "inputLen"    # I
    .param p4, "id"    # I

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 93
    invoke-direct {p0}, Lcom/ts/other/CustomDialog;-><init>()V

    .line 22
    iput v4, p0, Lcom/ts/canview/CanNumInuptDlg;->mMaxInputLen:I

    .line 23
    iput v3, p0, Lcom/ts/canview/CanNumInuptDlg;->mCurLen:I

    .line 24
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/ts/canview/CanNumInuptDlg;->mStrInputText:Ljava/lang/String;

    .line 29
    const/16 v0, 0xd

    new-array v0, v0, [I

    .line 30
    sget v1, Lcom/ts/MainUI/R$id;->can_input_btn_num0:I

    aput v1, v0, v3

    .line 31
    sget v1, Lcom/ts/MainUI/R$id;->can_input_btn_num1:I

    aput v1, v0, v5

    .line 32
    sget v1, Lcom/ts/MainUI/R$id;->can_input_btn_num2:I

    aput v1, v0, v6

    .line 33
    sget v1, Lcom/ts/MainUI/R$id;->can_input_btn_num3:I

    aput v1, v0, v7

    .line 34
    sget v1, Lcom/ts/MainUI/R$id;->can_input_btn_num4:I

    aput v1, v0, v4

    const/4 v1, 0x5

    .line 35
    sget v2, Lcom/ts/MainUI/R$id;->can_input_btn_num5:I

    aput v2, v0, v1

    const/4 v1, 0x6

    .line 36
    sget v2, Lcom/ts/MainUI/R$id;->can_input_btn_num6:I

    aput v2, v0, v1

    const/4 v1, 0x7

    .line 37
    sget v2, Lcom/ts/MainUI/R$id;->can_input_btn_num7:I

    aput v2, v0, v1

    const/16 v1, 0x8

    .line 38
    sget v2, Lcom/ts/MainUI/R$id;->can_input_btn_num8:I

    aput v2, v0, v1

    const/16 v1, 0x9

    .line 39
    sget v2, Lcom/ts/MainUI/R$id;->can_input_btn_num9:I

    aput v2, v0, v1

    const/16 v1, 0xa

    .line 40
    sget v2, Lcom/ts/MainUI/R$id;->can_input_btn_delete:I

    aput v2, v0, v1

    const/16 v1, 0xb

    .line 41
    sget v2, Lcom/ts/MainUI/R$id;->can_input_btn_backspace:I

    aput v2, v0, v1

    const/16 v1, 0xc

    .line 42
    sget v2, Lcom/ts/MainUI/R$id;->can_input_btn_ok:I

    aput v2, v0, v1

    iput-object v0, p0, Lcom/ts/canview/CanNumInuptDlg;->mBtnNumId:[I

    .line 47
    const/16 v0, 0xd

    new-array v0, v0, [I

    .line 48
    sget v1, Lcom/ts/MainUI/R$drawable;->can_input_num0_up:I

    aput v1, v0, v3

    .line 49
    sget v1, Lcom/ts/MainUI/R$drawable;->can_input_num1_up:I

    aput v1, v0, v5

    .line 50
    sget v1, Lcom/ts/MainUI/R$drawable;->can_input_num2_up:I

    aput v1, v0, v6

    .line 51
    sget v1, Lcom/ts/MainUI/R$drawable;->can_input_num3_up:I

    aput v1, v0, v7

    .line 52
    sget v1, Lcom/ts/MainUI/R$drawable;->can_input_num4_up:I

    aput v1, v0, v4

    const/4 v1, 0x5

    .line 53
    sget v2, Lcom/ts/MainUI/R$drawable;->can_input_num5_up:I

    aput v2, v0, v1

    const/4 v1, 0x6

    .line 54
    sget v2, Lcom/ts/MainUI/R$drawable;->can_input_num6_up:I

    aput v2, v0, v1

    const/4 v1, 0x7

    .line 55
    sget v2, Lcom/ts/MainUI/R$drawable;->can_input_num7_up:I

    aput v2, v0, v1

    const/16 v1, 0x8

    .line 56
    sget v2, Lcom/ts/MainUI/R$drawable;->can_input_num8_up:I

    aput v2, v0, v1

    const/16 v1, 0x9

    .line 57
    sget v2, Lcom/ts/MainUI/R$drawable;->can_input_num9_up:I

    aput v2, v0, v1

    const/16 v1, 0xa

    .line 58
    sget v2, Lcom/ts/MainUI/R$drawable;->can_input_delete_up:I

    aput v2, v0, v1

    const/16 v1, 0xb

    .line 59
    sget v2, Lcom/ts/MainUI/R$drawable;->can_input_backspace_up:I

    aput v2, v0, v1

    const/16 v1, 0xc

    .line 60
    sget v2, Lcom/ts/MainUI/R$drawable;->can_input_ok_up:I

    aput v2, v0, v1

    iput-object v0, p0, Lcom/ts/canview/CanNumInuptDlg;->mBtnNumUp:[I

    .line 64
    const/16 v0, 0xd

    new-array v0, v0, [I

    .line 65
    sget v1, Lcom/ts/MainUI/R$drawable;->can_input_num0_dn:I

    aput v1, v0, v3

    .line 66
    sget v1, Lcom/ts/MainUI/R$drawable;->can_input_num1_dn:I

    aput v1, v0, v5

    .line 67
    sget v1, Lcom/ts/MainUI/R$drawable;->can_input_num2_dn:I

    aput v1, v0, v6

    .line 68
    sget v1, Lcom/ts/MainUI/R$drawable;->can_input_num3_dn:I

    aput v1, v0, v7

    .line 69
    sget v1, Lcom/ts/MainUI/R$drawable;->can_input_num4_dn:I

    aput v1, v0, v4

    const/4 v1, 0x5

    .line 70
    sget v2, Lcom/ts/MainUI/R$drawable;->can_input_num5_dn:I

    aput v2, v0, v1

    const/4 v1, 0x6

    .line 71
    sget v2, Lcom/ts/MainUI/R$drawable;->can_input_num6_dn:I

    aput v2, v0, v1

    const/4 v1, 0x7

    .line 72
    sget v2, Lcom/ts/MainUI/R$drawable;->can_input_num7_dn:I

    aput v2, v0, v1

    const/16 v1, 0x8

    .line 73
    sget v2, Lcom/ts/MainUI/R$drawable;->can_input_num8_dn:I

    aput v2, v0, v1

    const/16 v1, 0x9

    .line 74
    sget v2, Lcom/ts/MainUI/R$drawable;->can_input_num9_dn:I

    aput v2, v0, v1

    const/16 v1, 0xa

    .line 75
    sget v2, Lcom/ts/MainUI/R$drawable;->can_input_delete_dn:I

    aput v2, v0, v1

    const/16 v1, 0xb

    .line 76
    sget v2, Lcom/ts/MainUI/R$drawable;->can_input_backspace_dn:I

    aput v2, v0, v1

    const/16 v1, 0xc

    .line 77
    sget v2, Lcom/ts/MainUI/R$drawable;->can_input_ok_dn:I

    aput v2, v0, v1

    iput-object v0, p0, Lcom/ts/canview/CanNumInuptDlg;->mBtnNumDn:[I

    .line 95
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/ts/canview/CanNumInuptDlg;->createDlg(Landroid/content/Context;Lcom/ts/canview/CanNumInuptDlg$onInputOK;II)V

    .line 96
    return-void
.end method


# virtual methods
.method protected addStr(Ljava/lang/String;)V
    .locals 2
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 126
    iget v0, p0, Lcom/ts/canview/CanNumInuptDlg;->mCurLen:I

    iget v1, p0, Lcom/ts/canview/CanNumInuptDlg;->mMaxInputLen:I

    if-ge v0, v1, :cond_0

    .line 128
    iget-object v0, p0, Lcom/ts/canview/CanNumInuptDlg;->mStrInputText:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/canview/CanNumInuptDlg;->mStrInputText:Ljava/lang/String;

    .line 129
    iget v0, p0, Lcom/ts/canview/CanNumInuptDlg;->mCurLen:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ts/canview/CanNumInuptDlg;->mCurLen:I

    .line 130
    iget-object v0, p0, Lcom/ts/canview/CanNumInuptDlg;->mTvInput:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ts/canview/CanNumInuptDlg;->mStrInputText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    :cond_0
    return-void
.end method

.method public createDlg(Landroid/content/Context;Lcom/ts/canview/CanNumInuptDlg$onInputOK;II)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ok"    # Lcom/ts/canview/CanNumInuptDlg$onInputOK;
    .param p3, "inputLen"    # I
    .param p4, "id"    # I

    .prologue
    .line 102
    iput p3, p0, Lcom/ts/canview/CanNumInuptDlg;->mMaxInputLen:I

    .line 103
    const-string v2, ""

    iput-object v2, p0, Lcom/ts/canview/CanNumInuptDlg;->mStrInputText:Ljava/lang/String;

    .line 106
    sget v2, Lcom/ts/MainUI/R$layout;->can_num_input_msgbox:I

    invoke-super {p0, v2, p1}, Lcom/ts/other/CustomDialog;->create(ILandroid/content/Context;)Landroid/app/AlertDialog;

    .line 108
    iget-object v2, p0, Lcom/ts/canview/CanNumInuptDlg;->mWindow:Landroid/view/Window;

    sget v3, Lcom/ts/MainUI/R$id;->can_input_edx_num:I

    invoke-virtual {v2, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/ts/canview/CanNumInuptDlg;->mTvInput:Landroid/widget/TextView;

    .line 112
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/ts/canview/CanNumInuptDlg;->mBtnNumId:[I

    array-length v2, v2

    if-lt v1, v2, :cond_0

    .line 119
    iput-object p2, p0, Lcom/ts/canview/CanNumInuptDlg;->mOK:Lcom/ts/canview/CanNumInuptDlg$onInputOK;

    .line 120
    iput p4, p0, Lcom/ts/canview/CanNumInuptDlg;->mId:I

    .line 121
    return-void

    .line 114
    :cond_0
    iget-object v2, p0, Lcom/ts/canview/CanNumInuptDlg;->mWindow:Landroid/view/Window;

    iget-object v3, p0, Lcom/ts/canview/CanNumInuptDlg;->mBtnNumId:[I

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ts/other/ParamButton;

    .line 115
    .local v0, "btn":Lcom/ts/other/ParamButton;
    invoke-virtual {v0, p0}, Lcom/ts/other/ParamButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    iget-object v2, p0, Lcom/ts/canview/CanNumInuptDlg;->mBtnNumUp:[I

    aget v2, v2, v1

    iget-object v3, p0, Lcom/ts/canview/CanNumInuptDlg;->mBtnNumDn:[I

    aget v3, v3, v1

    invoke-virtual {v0, v2, v3}, Lcom/ts/other/ParamButton;->setStateUpDn(II)V

    .line 112
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected decStr()V
    .locals 3

    .prologue
    .line 136
    iget-object v0, p0, Lcom/ts/canview/CanNumInuptDlg;->mStrInputText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    .line 138
    const-string v0, ""

    iput-object v0, p0, Lcom/ts/canview/CanNumInuptDlg;->mStrInputText:Ljava/lang/String;

    .line 145
    :goto_0
    iget-object v0, p0, Lcom/ts/canview/CanNumInuptDlg;->mStrInputText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lcom/ts/canview/CanNumInuptDlg;->mCurLen:I

    .line 146
    iget-object v0, p0, Lcom/ts/canview/CanNumInuptDlg;->mTvInput:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ts/canview/CanNumInuptDlg;->mStrInputText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    return-void

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/ts/canview/CanNumInuptDlg;->mStrInputText:Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/ts/canview/CanNumInuptDlg;->mStrInputText:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/canview/CanNumInuptDlg;->mStrInputText:Ljava/lang/String;

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 152
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 153
    .local v0, "id":I
    sget v2, Lcom/ts/MainUI/R$id;->can_input_btn_num0:I

    if-ne v0, v2, :cond_1

    .line 155
    const-string v2, "0"

    invoke-virtual {p0, v2}, Lcom/ts/canview/CanNumInuptDlg;->addStr(Ljava/lang/String;)V

    .line 218
    :cond_0
    :goto_0
    return-void

    .line 157
    :cond_1
    sget v2, Lcom/ts/MainUI/R$id;->can_input_btn_num1:I

    if-ne v0, v2, :cond_2

    .line 159
    const-string v2, "1"

    invoke-virtual {p0, v2}, Lcom/ts/canview/CanNumInuptDlg;->addStr(Ljava/lang/String;)V

    goto :goto_0

    .line 161
    :cond_2
    sget v2, Lcom/ts/MainUI/R$id;->can_input_btn_num2:I

    if-ne v0, v2, :cond_3

    .line 163
    const-string v2, "2"

    invoke-virtual {p0, v2}, Lcom/ts/canview/CanNumInuptDlg;->addStr(Ljava/lang/String;)V

    goto :goto_0

    .line 165
    :cond_3
    sget v2, Lcom/ts/MainUI/R$id;->can_input_btn_num3:I

    if-ne v0, v2, :cond_4

    .line 167
    const-string v2, "3"

    invoke-virtual {p0, v2}, Lcom/ts/canview/CanNumInuptDlg;->addStr(Ljava/lang/String;)V

    goto :goto_0

    .line 169
    :cond_4
    sget v2, Lcom/ts/MainUI/R$id;->can_input_btn_num4:I

    if-ne v0, v2, :cond_5

    .line 171
    const-string v2, "4"

    invoke-virtual {p0, v2}, Lcom/ts/canview/CanNumInuptDlg;->addStr(Ljava/lang/String;)V

    goto :goto_0

    .line 173
    :cond_5
    sget v2, Lcom/ts/MainUI/R$id;->can_input_btn_num5:I

    if-ne v0, v2, :cond_6

    .line 175
    const-string v2, "5"

    invoke-virtual {p0, v2}, Lcom/ts/canview/CanNumInuptDlg;->addStr(Ljava/lang/String;)V

    goto :goto_0

    .line 177
    :cond_6
    sget v2, Lcom/ts/MainUI/R$id;->can_input_btn_num6:I

    if-ne v0, v2, :cond_7

    .line 179
    const-string v2, "6"

    invoke-virtual {p0, v2}, Lcom/ts/canview/CanNumInuptDlg;->addStr(Ljava/lang/String;)V

    goto :goto_0

    .line 181
    :cond_7
    sget v2, Lcom/ts/MainUI/R$id;->can_input_btn_num7:I

    if-ne v0, v2, :cond_8

    .line 183
    const-string v2, "7"

    invoke-virtual {p0, v2}, Lcom/ts/canview/CanNumInuptDlg;->addStr(Ljava/lang/String;)V

    goto :goto_0

    .line 185
    :cond_8
    sget v2, Lcom/ts/MainUI/R$id;->can_input_btn_num8:I

    if-ne v0, v2, :cond_9

    .line 187
    const-string v2, "8"

    invoke-virtual {p0, v2}, Lcom/ts/canview/CanNumInuptDlg;->addStr(Ljava/lang/String;)V

    goto :goto_0

    .line 189
    :cond_9
    sget v2, Lcom/ts/MainUI/R$id;->can_input_btn_num9:I

    if-ne v0, v2, :cond_a

    .line 191
    const-string v2, "9"

    invoke-virtual {p0, v2}, Lcom/ts/canview/CanNumInuptDlg;->addStr(Ljava/lang/String;)V

    goto :goto_0

    .line 193
    :cond_a
    sget v2, Lcom/ts/MainUI/R$id;->can_input_btn_backspace:I

    if-ne v0, v2, :cond_b

    .line 195
    invoke-virtual {p0}, Lcom/ts/canview/CanNumInuptDlg;->decStr()V

    goto :goto_0

    .line 197
    :cond_b
    sget v2, Lcom/ts/MainUI/R$id;->can_input_btn_delete:I

    if-ne v0, v2, :cond_c

    .line 199
    invoke-virtual {p0}, Lcom/ts/canview/CanNumInuptDlg;->dismiss()V

    goto :goto_0

    .line 201
    :cond_c
    sget v2, Lcom/ts/MainUI/R$id;->can_input_btn_ok:I

    if-ne v0, v2, :cond_0

    .line 203
    iget-object v2, p0, Lcom/ts/canview/CanNumInuptDlg;->mOK:Lcom/ts/canview/CanNumInuptDlg$onInputOK;

    if-eqz v2, :cond_d

    .line 205
    iget-object v2, p0, Lcom/ts/canview/CanNumInuptDlg;->mStrInputText:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_d

    .line 207
    iget-object v2, p0, Lcom/ts/canview/CanNumInuptDlg;->mStrInputText:Ljava/lang/String;

    const/16 v3, 0xa

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    .line 208
    .local v1, "num":I
    const-string v2, "CanNumInuptDlg"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "input num = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    iget-object v2, p0, Lcom/ts/canview/CanNumInuptDlg;->mOK:Lcom/ts/canview/CanNumInuptDlg$onInputOK;

    iget-object v3, p0, Lcom/ts/canview/CanNumInuptDlg;->mStrInputText:Ljava/lang/String;

    iget v4, p0, Lcom/ts/canview/CanNumInuptDlg;->mId:I

    invoke-interface {v2, v3, v1, v4}, Lcom/ts/canview/CanNumInuptDlg$onInputOK;->onOK(Ljava/lang/String;II)V

    .line 212
    .end local v1    # "num":I
    :cond_d
    invoke-virtual {p0}, Lcom/ts/canview/CanNumInuptDlg;->dismiss()V

    goto/16 :goto_0
.end method
