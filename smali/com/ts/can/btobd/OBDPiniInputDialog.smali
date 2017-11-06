.class public Lcom/ts/can/btobd/OBDPiniInputDialog;
.super Lcom/ts/can/btobd/CustomDialog;
.source "OBDPiniInputDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ts/can/btobd/OBDPiniInputDialog$onInputOK;
    }
.end annotation


# instance fields
.field protected hour:J

.field private mBtnCancle:Landroid/widget/Button;

.field private mBtnNumId:[I

.field private mBtnOK:Landroid/widget/Button;

.field private mBtnSearch:Landroid/widget/Button;

.field private mCurLen:I

.field protected mIsList:Z

.field private mIvState:Landroid/widget/ImageView;

.field private mMaxInputLen:I

.field private mOK:Lcom/ts/can/btobd/OBDPiniInputDialog$onInputOK;

.field private mStrInputText:Ljava/lang/String;

.field protected mTotalCount:I

.field protected mTotalTime:I

.field private mTvInput:Landroid/widget/TextView;

.field private mTvTotal:Landroid/widget/TextView;

.field protected min:J

.field protected second:J

.field protected total:J


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 55
    invoke-direct {p0}, Lcom/ts/can/btobd/CustomDialog;-><init>()V

    .line 19
    iput v3, p0, Lcom/ts/can/btobd/OBDPiniInputDialog;->mMaxInputLen:I

    .line 20
    iput v2, p0, Lcom/ts/can/btobd/OBDPiniInputDialog;->mCurLen:I

    .line 21
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/ts/can/btobd/OBDPiniInputDialog;->mStrInputText:Ljava/lang/String;

    .line 25
    iput-boolean v2, p0, Lcom/ts/can/btobd/OBDPiniInputDialog;->mIsList:Z

    .line 33
    const/16 v0, 0xd

    new-array v0, v0, [I

    sget v1, Lcom/ts/MainUI/R$id;->dvd_goto_btn_num0:I

    aput v1, v0, v2

    const/4 v1, 0x1

    sget v2, Lcom/ts/MainUI/R$id;->dvd_goto_btn_num1:I

    aput v2, v0, v1

    const/4 v1, 0x2

    .line 34
    sget v2, Lcom/ts/MainUI/R$id;->dvd_goto_btn_num2:I

    aput v2, v0, v1

    const/4 v1, 0x3

    sget v2, Lcom/ts/MainUI/R$id;->dvd_goto_btn_num3:I

    aput v2, v0, v1

    .line 35
    sget v1, Lcom/ts/MainUI/R$id;->dvd_goto_btn_num4:I

    aput v1, v0, v3

    const/4 v1, 0x5

    sget v2, Lcom/ts/MainUI/R$id;->dvd_goto_btn_num5:I

    aput v2, v0, v1

    const/4 v1, 0x6

    .line 36
    sget v2, Lcom/ts/MainUI/R$id;->dvd_goto_btn_num6:I

    aput v2, v0, v1

    const/4 v1, 0x7

    sget v2, Lcom/ts/MainUI/R$id;->dvd_goto_btn_num7:I

    aput v2, v0, v1

    const/16 v1, 0x8

    .line 37
    sget v2, Lcom/ts/MainUI/R$id;->dvd_goto_btn_num8:I

    aput v2, v0, v1

    const/16 v1, 0x9

    sget v2, Lcom/ts/MainUI/R$id;->dvd_goto_btn_num9:I

    aput v2, v0, v1

    const/16 v1, 0xa

    .line 38
    sget v2, Lcom/ts/MainUI/R$id;->dvd_goto_btn_delete:I

    aput v2, v0, v1

    const/16 v1, 0xb

    sget v2, Lcom/ts/MainUI/R$id;->dvd_goto_btn_close:I

    aput v2, v0, v1

    const/16 v1, 0xc

    .line 39
    sget v2, Lcom/ts/MainUI/R$id;->dvd_goto_btn_ok:I

    aput v2, v0, v1

    iput-object v0, p0, Lcom/ts/can/btobd/OBDPiniInputDialog;->mBtnNumId:[I

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/ts/can/btobd/OBDPiniInputDialog$onInputOK;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ok"    # Lcom/ts/can/btobd/OBDPiniInputDialog$onInputOK;
    .param p3, "inputLen"    # I

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 59
    invoke-direct {p0}, Lcom/ts/can/btobd/CustomDialog;-><init>()V

    .line 19
    iput v3, p0, Lcom/ts/can/btobd/OBDPiniInputDialog;->mMaxInputLen:I

    .line 20
    iput v2, p0, Lcom/ts/can/btobd/OBDPiniInputDialog;->mCurLen:I

    .line 21
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/ts/can/btobd/OBDPiniInputDialog;->mStrInputText:Ljava/lang/String;

    .line 25
    iput-boolean v2, p0, Lcom/ts/can/btobd/OBDPiniInputDialog;->mIsList:Z

    .line 33
    const/16 v0, 0xd

    new-array v0, v0, [I

    sget v1, Lcom/ts/MainUI/R$id;->dvd_goto_btn_num0:I

    aput v1, v0, v2

    const/4 v1, 0x1

    sget v2, Lcom/ts/MainUI/R$id;->dvd_goto_btn_num1:I

    aput v2, v0, v1

    const/4 v1, 0x2

    .line 34
    sget v2, Lcom/ts/MainUI/R$id;->dvd_goto_btn_num2:I

    aput v2, v0, v1

    const/4 v1, 0x3

    sget v2, Lcom/ts/MainUI/R$id;->dvd_goto_btn_num3:I

    aput v2, v0, v1

    .line 35
    sget v1, Lcom/ts/MainUI/R$id;->dvd_goto_btn_num4:I

    aput v1, v0, v3

    const/4 v1, 0x5

    sget v2, Lcom/ts/MainUI/R$id;->dvd_goto_btn_num5:I

    aput v2, v0, v1

    const/4 v1, 0x6

    .line 36
    sget v2, Lcom/ts/MainUI/R$id;->dvd_goto_btn_num6:I

    aput v2, v0, v1

    const/4 v1, 0x7

    sget v2, Lcom/ts/MainUI/R$id;->dvd_goto_btn_num7:I

    aput v2, v0, v1

    const/16 v1, 0x8

    .line 37
    sget v2, Lcom/ts/MainUI/R$id;->dvd_goto_btn_num8:I

    aput v2, v0, v1

    const/16 v1, 0x9

    sget v2, Lcom/ts/MainUI/R$id;->dvd_goto_btn_num9:I

    aput v2, v0, v1

    const/16 v1, 0xa

    .line 38
    sget v2, Lcom/ts/MainUI/R$id;->dvd_goto_btn_delete:I

    aput v2, v0, v1

    const/16 v1, 0xb

    sget v2, Lcom/ts/MainUI/R$id;->dvd_goto_btn_close:I

    aput v2, v0, v1

    const/16 v1, 0xc

    .line 39
    sget v2, Lcom/ts/MainUI/R$id;->dvd_goto_btn_ok:I

    aput v2, v0, v1

    iput-object v0, p0, Lcom/ts/can/btobd/OBDPiniInputDialog;->mBtnNumId:[I

    .line 60
    invoke-virtual {p0, p1, p2, p3}, Lcom/ts/can/btobd/OBDPiniInputDialog;->createDlg(Landroid/content/Context;Lcom/ts/can/btobd/OBDPiniInputDialog$onInputOK;I)V

    .line 61
    return-void
.end method


# virtual methods
.method addStr(Ljava/lang/String;)V
    .locals 2
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 94
    iget v0, p0, Lcom/ts/can/btobd/OBDPiniInputDialog;->mCurLen:I

    iget v1, p0, Lcom/ts/can/btobd/OBDPiniInputDialog;->mMaxInputLen:I

    if-ge v0, v1, :cond_0

    .line 96
    iget-object v0, p0, Lcom/ts/can/btobd/OBDPiniInputDialog;->mStrInputText:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/btobd/OBDPiniInputDialog;->mStrInputText:Ljava/lang/String;

    .line 97
    iget v0, p0, Lcom/ts/can/btobd/OBDPiniInputDialog;->mCurLen:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ts/can/btobd/OBDPiniInputDialog;->mCurLen:I

    .line 98
    iget-object v0, p0, Lcom/ts/can/btobd/OBDPiniInputDialog;->mTvInput:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ts/can/btobd/OBDPiniInputDialog;->mStrInputText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    :cond_0
    return-void
.end method

.method public createBootDlg(Landroid/content/Context;Lcom/ts/can/btobd/OBDPiniInputDialog$onInputOK;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ok"    # Lcom/ts/can/btobd/OBDPiniInputDialog$onInputOK;
    .param p3, "inputLen"    # I

    .prologue
    .line 64
    invoke-virtual {p0, p1, p2, p3}, Lcom/ts/can/btobd/OBDPiniInputDialog;->createDlg(Landroid/content/Context;Lcom/ts/can/btobd/OBDPiniInputDialog$onInputOK;I)V

    .line 65
    return-void
.end method

.method public createDlg(Landroid/content/Context;Lcom/ts/can/btobd/OBDPiniInputDialog$onInputOK;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ok"    # Lcom/ts/can/btobd/OBDPiniInputDialog$onInputOK;
    .param p3, "inputLen"    # I

    .prologue
    .line 73
    iput p3, p0, Lcom/ts/can/btobd/OBDPiniInputDialog;->mMaxInputLen:I

    .line 74
    const-string v2, ""

    iput-object v2, p0, Lcom/ts/can/btobd/OBDPiniInputDialog;->mStrInputText:Ljava/lang/String;

    .line 75
    sget v2, Lcom/ts/MainUI/R$layout;->obd_numinput:I

    invoke-super {p0, v2, p1}, Lcom/ts/can/btobd/CustomDialog;->create(ILandroid/content/Context;)Landroid/app/AlertDialog;

    .line 80
    iget-object v2, p0, Lcom/ts/can/btobd/OBDPiniInputDialog;->mWindow:Landroid/view/Window;

    sget v3, Lcom/ts/MainUI/R$id;->dvd_goto_edx_num:I

    invoke-virtual {v2, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/ts/can/btobd/OBDPiniInputDialog;->mTvInput:Landroid/widget/TextView;

    .line 83
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/ts/can/btobd/OBDPiniInputDialog;->mBtnNumId:[I

    array-length v2, v2

    if-lt v1, v2, :cond_0

    .line 88
    iput-object p2, p0, Lcom/ts/can/btobd/OBDPiniInputDialog;->mOK:Lcom/ts/can/btobd/OBDPiniInputDialog$onInputOK;

    .line 90
    return-void

    .line 84
    :cond_0
    iget-object v2, p0, Lcom/ts/can/btobd/OBDPiniInputDialog;->mWindow:Landroid/view/Window;

    iget-object v3, p0, Lcom/ts/can/btobd/OBDPiniInputDialog;->mBtnNumId:[I

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 85
    .local v0, "btn":Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method decStr()V
    .locals 3

    .prologue
    .line 104
    iget-object v0, p0, Lcom/ts/can/btobd/OBDPiniInputDialog;->mStrInputText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    .line 106
    const-string v0, ""

    iput-object v0, p0, Lcom/ts/can/btobd/OBDPiniInputDialog;->mStrInputText:Ljava/lang/String;

    .line 113
    :goto_0
    iget-object v0, p0, Lcom/ts/can/btobd/OBDPiniInputDialog;->mStrInputText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lcom/ts/can/btobd/OBDPiniInputDialog;->mCurLen:I

    .line 114
    iget-object v0, p0, Lcom/ts/can/btobd/OBDPiniInputDialog;->mTvInput:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ts/can/btobd/OBDPiniInputDialog;->mStrInputText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    return-void

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/ts/can/btobd/OBDPiniInputDialog;->mStrInputText:Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/ts/can/btobd/OBDPiniInputDialog;->mStrInputText:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/can/btobd/OBDPiniInputDialog;->mStrInputText:Ljava/lang/String;

    goto :goto_0
.end method

.method public getSearch()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/ts/can/btobd/OBDPiniInputDialog;->mBtnSearch:Landroid/widget/Button;

    return-object v0
.end method

.method public getState()Z
    .locals 1

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/ts/can/btobd/OBDPiniInputDialog;->mIsList:Z

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 119
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 120
    .local v0, "id":I
    sget v1, Lcom/ts/MainUI/R$id;->dvd_goto_btn_num0:I

    if-ne v0, v1, :cond_1

    .line 121
    const-string v1, "0"

    invoke-virtual {p0, v1}, Lcom/ts/can/btobd/OBDPiniInputDialog;->addStr(Ljava/lang/String;)V

    .line 154
    :cond_0
    :goto_0
    return-void

    .line 122
    :cond_1
    sget v1, Lcom/ts/MainUI/R$id;->dvd_goto_btn_num1:I

    if-ne v0, v1, :cond_2

    .line 123
    const-string v1, "1"

    invoke-virtual {p0, v1}, Lcom/ts/can/btobd/OBDPiniInputDialog;->addStr(Ljava/lang/String;)V

    goto :goto_0

    .line 124
    :cond_2
    sget v1, Lcom/ts/MainUI/R$id;->dvd_goto_btn_num2:I

    if-ne v0, v1, :cond_3

    .line 125
    const-string v1, "2"

    invoke-virtual {p0, v1}, Lcom/ts/can/btobd/OBDPiniInputDialog;->addStr(Ljava/lang/String;)V

    goto :goto_0

    .line 126
    :cond_3
    sget v1, Lcom/ts/MainUI/R$id;->dvd_goto_btn_num3:I

    if-ne v0, v1, :cond_4

    .line 127
    const-string v1, "3"

    invoke-virtual {p0, v1}, Lcom/ts/can/btobd/OBDPiniInputDialog;->addStr(Ljava/lang/String;)V

    goto :goto_0

    .line 128
    :cond_4
    sget v1, Lcom/ts/MainUI/R$id;->dvd_goto_btn_num4:I

    if-ne v0, v1, :cond_5

    .line 129
    const-string v1, "4"

    invoke-virtual {p0, v1}, Lcom/ts/can/btobd/OBDPiniInputDialog;->addStr(Ljava/lang/String;)V

    goto :goto_0

    .line 130
    :cond_5
    sget v1, Lcom/ts/MainUI/R$id;->dvd_goto_btn_num5:I

    if-ne v0, v1, :cond_6

    .line 131
    const-string v1, "5"

    invoke-virtual {p0, v1}, Lcom/ts/can/btobd/OBDPiniInputDialog;->addStr(Ljava/lang/String;)V

    goto :goto_0

    .line 132
    :cond_6
    sget v1, Lcom/ts/MainUI/R$id;->dvd_goto_btn_num6:I

    if-ne v0, v1, :cond_7

    .line 133
    const-string v1, "6"

    invoke-virtual {p0, v1}, Lcom/ts/can/btobd/OBDPiniInputDialog;->addStr(Ljava/lang/String;)V

    goto :goto_0

    .line 134
    :cond_7
    sget v1, Lcom/ts/MainUI/R$id;->dvd_goto_btn_num7:I

    if-ne v0, v1, :cond_8

    .line 135
    const-string v1, "7"

    invoke-virtual {p0, v1}, Lcom/ts/can/btobd/OBDPiniInputDialog;->addStr(Ljava/lang/String;)V

    goto :goto_0

    .line 136
    :cond_8
    sget v1, Lcom/ts/MainUI/R$id;->dvd_goto_btn_num8:I

    if-ne v0, v1, :cond_9

    .line 137
    const-string v1, "8"

    invoke-virtual {p0, v1}, Lcom/ts/can/btobd/OBDPiniInputDialog;->addStr(Ljava/lang/String;)V

    goto :goto_0

    .line 138
    :cond_9
    sget v1, Lcom/ts/MainUI/R$id;->dvd_goto_btn_num9:I

    if-ne v0, v1, :cond_a

    .line 139
    const-string v1, "9"

    invoke-virtual {p0, v1}, Lcom/ts/can/btobd/OBDPiniInputDialog;->addStr(Ljava/lang/String;)V

    goto :goto_0

    .line 140
    :cond_a
    sget v1, Lcom/ts/MainUI/R$id;->dvd_goto_btn_close:I

    if-ne v0, v1, :cond_b

    .line 141
    invoke-virtual {p0}, Lcom/ts/can/btobd/OBDPiniInputDialog;->dismiss()V

    goto :goto_0

    .line 142
    :cond_b
    sget v1, Lcom/ts/MainUI/R$id;->dvd_goto_btn_delete:I

    if-ne v0, v1, :cond_c

    .line 143
    invoke-virtual {p0}, Lcom/ts/can/btobd/OBDPiniInputDialog;->decStr()V

    goto :goto_0

    .line 144
    :cond_c
    sget v1, Lcom/ts/MainUI/R$id;->dvd_goto_btn_ok:I

    if-ne v0, v1, :cond_0

    .line 145
    iget-object v1, p0, Lcom/ts/can/btobd/OBDPiniInputDialog;->mOK:Lcom/ts/can/btobd/OBDPiniInputDialog$onInputOK;

    if-eqz v1, :cond_d

    .line 147
    iget-object v1, p0, Lcom/ts/can/btobd/OBDPiniInputDialog;->mStrInputText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_d

    .line 149
    iget-object v1, p0, Lcom/ts/can/btobd/OBDPiniInputDialog;->mOK:Lcom/ts/can/btobd/OBDPiniInputDialog$onInputOK;

    iget-object v2, p0, Lcom/ts/can/btobd/OBDPiniInputDialog;->mStrInputText:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/ts/can/btobd/OBDPiniInputDialog$onInputOK;->onOK(Ljava/lang/String;)V

    .line 152
    :cond_d
    invoke-virtual {p0}, Lcom/ts/can/btobd/OBDPiniInputDialog;->dismiss()V

    goto/16 :goto_0
.end method

.method public updateState(III)V
    .locals 1
    .param p1, "state"    # I
    .param p2, "totalCount"    # I
    .param p3, "totalTime"    # I

    .prologue
    .line 46
    iput p2, p0, Lcom/ts/can/btobd/OBDPiniInputDialog;->mTotalCount:I

    .line 47
    div-int/lit16 v0, p3, 0x3e8

    iput v0, p0, Lcom/ts/can/btobd/OBDPiniInputDialog;->mTotalTime:I

    .line 48
    return-void
.end method
