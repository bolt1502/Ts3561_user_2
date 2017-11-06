.class public Lcom/ts/set/setview/SettingNumInuptDlg;
.super Lcom/ts/other/CustomDialog;
.source "SettingNumInuptDlg.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ts/set/setview/SettingNumInuptDlg$onInputOK;
    }
.end annotation


# instance fields
.field private mBtnCancle:Landroid/widget/Button;

.field private mBtnNumId:[I

.field private mBtnOK:Landroid/widget/Button;

.field private mBtnSearch:Landroid/widget/Button;

.field private mCurLen:I

.field private mMaxInputLen:I

.field private mOK:Lcom/ts/set/setview/SettingNumInuptDlg$onInputOK;

.field private mStrInputText:Ljava/lang/String;

.field private mTvInput:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 51
    invoke-direct {p0}, Lcom/ts/other/CustomDialog;-><init>()V

    .line 18
    iput v3, p0, Lcom/ts/set/setview/SettingNumInuptDlg;->mMaxInputLen:I

    .line 19
    iput v2, p0, Lcom/ts/set/setview/SettingNumInuptDlg;->mCurLen:I

    .line 20
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/ts/set/setview/SettingNumInuptDlg;->mStrInputText:Ljava/lang/String;

    .line 25
    const/16 v0, 0xd

    new-array v0, v0, [I

    .line 26
    sget v1, Lcom/ts/MainUI/R$id;->setting_bt_btn_num0:I

    aput v1, v0, v2

    const/4 v1, 0x1

    .line 27
    sget v2, Lcom/ts/MainUI/R$id;->setting_bt_btn_num1:I

    aput v2, v0, v1

    const/4 v1, 0x2

    .line 28
    sget v2, Lcom/ts/MainUI/R$id;->setting_bt_btn_num2:I

    aput v2, v0, v1

    const/4 v1, 0x3

    .line 29
    sget v2, Lcom/ts/MainUI/R$id;->setting_bt_btn_num3:I

    aput v2, v0, v1

    .line 30
    sget v1, Lcom/ts/MainUI/R$id;->setting_bt_btn_num4:I

    aput v1, v0, v3

    const/4 v1, 0x5

    .line 31
    sget v2, Lcom/ts/MainUI/R$id;->setting_bt_btn_num5:I

    aput v2, v0, v1

    const/4 v1, 0x6

    .line 32
    sget v2, Lcom/ts/MainUI/R$id;->setting_bt_btn_num6:I

    aput v2, v0, v1

    const/4 v1, 0x7

    .line 33
    sget v2, Lcom/ts/MainUI/R$id;->setting_bt_btn_num7:I

    aput v2, v0, v1

    const/16 v1, 0x8

    .line 34
    sget v2, Lcom/ts/MainUI/R$id;->setting_bt_btn_num8:I

    aput v2, v0, v1

    const/16 v1, 0x9

    .line 35
    sget v2, Lcom/ts/MainUI/R$id;->setting_bt_btn_num9:I

    aput v2, v0, v1

    const/16 v1, 0xa

    .line 36
    sget v2, Lcom/ts/MainUI/R$id;->setting_bt_btn_delete:I

    aput v2, v0, v1

    const/16 v1, 0xb

    .line 37
    sget v2, Lcom/ts/MainUI/R$id;->setting_bt_btn_close:I

    aput v2, v0, v1

    const/16 v1, 0xc

    .line 38
    sget v2, Lcom/ts/MainUI/R$id;->setting_bt_btn_ok:I

    aput v2, v0, v1

    iput-object v0, p0, Lcom/ts/set/setview/SettingNumInuptDlg;->mBtnNumId:[I

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/ts/set/setview/SettingNumInuptDlg$onInputOK;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ok"    # Lcom/ts/set/setview/SettingNumInuptDlg$onInputOK;
    .param p3, "inputLen"    # I

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 55
    invoke-direct {p0}, Lcom/ts/other/CustomDialog;-><init>()V

    .line 18
    iput v3, p0, Lcom/ts/set/setview/SettingNumInuptDlg;->mMaxInputLen:I

    .line 19
    iput v2, p0, Lcom/ts/set/setview/SettingNumInuptDlg;->mCurLen:I

    .line 20
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/ts/set/setview/SettingNumInuptDlg;->mStrInputText:Ljava/lang/String;

    .line 25
    const/16 v0, 0xd

    new-array v0, v0, [I

    .line 26
    sget v1, Lcom/ts/MainUI/R$id;->setting_bt_btn_num0:I

    aput v1, v0, v2

    const/4 v1, 0x1

    .line 27
    sget v2, Lcom/ts/MainUI/R$id;->setting_bt_btn_num1:I

    aput v2, v0, v1

    const/4 v1, 0x2

    .line 28
    sget v2, Lcom/ts/MainUI/R$id;->setting_bt_btn_num2:I

    aput v2, v0, v1

    const/4 v1, 0x3

    .line 29
    sget v2, Lcom/ts/MainUI/R$id;->setting_bt_btn_num3:I

    aput v2, v0, v1

    .line 30
    sget v1, Lcom/ts/MainUI/R$id;->setting_bt_btn_num4:I

    aput v1, v0, v3

    const/4 v1, 0x5

    .line 31
    sget v2, Lcom/ts/MainUI/R$id;->setting_bt_btn_num5:I

    aput v2, v0, v1

    const/4 v1, 0x6

    .line 32
    sget v2, Lcom/ts/MainUI/R$id;->setting_bt_btn_num6:I

    aput v2, v0, v1

    const/4 v1, 0x7

    .line 33
    sget v2, Lcom/ts/MainUI/R$id;->setting_bt_btn_num7:I

    aput v2, v0, v1

    const/16 v1, 0x8

    .line 34
    sget v2, Lcom/ts/MainUI/R$id;->setting_bt_btn_num8:I

    aput v2, v0, v1

    const/16 v1, 0x9

    .line 35
    sget v2, Lcom/ts/MainUI/R$id;->setting_bt_btn_num9:I

    aput v2, v0, v1

    const/16 v1, 0xa

    .line 36
    sget v2, Lcom/ts/MainUI/R$id;->setting_bt_btn_delete:I

    aput v2, v0, v1

    const/16 v1, 0xb

    .line 37
    sget v2, Lcom/ts/MainUI/R$id;->setting_bt_btn_close:I

    aput v2, v0, v1

    const/16 v1, 0xc

    .line 38
    sget v2, Lcom/ts/MainUI/R$id;->setting_bt_btn_ok:I

    aput v2, v0, v1

    iput-object v0, p0, Lcom/ts/set/setview/SettingNumInuptDlg;->mBtnNumId:[I

    .line 57
    invoke-virtual {p0, p1, p2, p3}, Lcom/ts/set/setview/SettingNumInuptDlg;->createDlg(Landroid/content/Context;Lcom/ts/set/setview/SettingNumInuptDlg$onInputOK;I)V

    .line 58
    return-void
.end method


# virtual methods
.method addStr(Ljava/lang/String;)V
    .locals 2
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 98
    iget v0, p0, Lcom/ts/set/setview/SettingNumInuptDlg;->mCurLen:I

    iget v1, p0, Lcom/ts/set/setview/SettingNumInuptDlg;->mMaxInputLen:I

    if-ge v0, v1, :cond_0

    .line 100
    iget-object v0, p0, Lcom/ts/set/setview/SettingNumInuptDlg;->mStrInputText:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/set/setview/SettingNumInuptDlg;->mStrInputText:Ljava/lang/String;

    .line 101
    iget v0, p0, Lcom/ts/set/setview/SettingNumInuptDlg;->mCurLen:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ts/set/setview/SettingNumInuptDlg;->mCurLen:I

    .line 102
    iget-object v0, p0, Lcom/ts/set/setview/SettingNumInuptDlg;->mTvInput:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ts/set/setview/SettingNumInuptDlg;->mStrInputText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    :cond_0
    return-void
.end method

.method public createBootDlg(Landroid/content/Context;Lcom/ts/set/setview/SettingNumInuptDlg$onInputOK;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ok"    # Lcom/ts/set/setview/SettingNumInuptDlg$onInputOK;
    .param p3, "inputLen"    # I

    .prologue
    .line 62
    invoke-virtual {p0, p1, p2, p3}, Lcom/ts/set/setview/SettingNumInuptDlg;->createDlg(Landroid/content/Context;Lcom/ts/set/setview/SettingNumInuptDlg$onInputOK;I)V

    .line 63
    return-void
.end method

.method public createDlg(Landroid/content/Context;Lcom/ts/set/setview/SettingNumInuptDlg$onInputOK;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ok"    # Lcom/ts/set/setview/SettingNumInuptDlg$onInputOK;
    .param p3, "inputLen"    # I

    .prologue
    .line 73
    iput p3, p0, Lcom/ts/set/setview/SettingNumInuptDlg;->mMaxInputLen:I

    .line 74
    const-string v2, ""

    iput-object v2, p0, Lcom/ts/set/setview/SettingNumInuptDlg;->mStrInputText:Ljava/lang/String;

    .line 75
    sget v2, Lcom/ts/MainUI/R$layout;->setting_bt_numinput:I

    invoke-super {p0, v2, p1}, Lcom/ts/other/CustomDialog;->create(ILandroid/content/Context;)Landroid/app/AlertDialog;

    .line 81
    iget-object v2, p0, Lcom/ts/set/setview/SettingNumInuptDlg;->mWindow:Landroid/view/Window;

    sget v3, Lcom/ts/MainUI/R$id;->setting_bt_edx_num:I

    invoke-virtual {v2, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/ts/set/setview/SettingNumInuptDlg;->mTvInput:Landroid/widget/TextView;

    .line 85
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/ts/set/setview/SettingNumInuptDlg;->mBtnNumId:[I

    array-length v2, v2

    if-lt v1, v2, :cond_0

    .line 91
    iput-object p2, p0, Lcom/ts/set/setview/SettingNumInuptDlg;->mOK:Lcom/ts/set/setview/SettingNumInuptDlg$onInputOK;

    .line 93
    return-void

    .line 87
    :cond_0
    iget-object v2, p0, Lcom/ts/set/setview/SettingNumInuptDlg;->mWindow:Landroid/view/Window;

    iget-object v3, p0, Lcom/ts/set/setview/SettingNumInuptDlg;->mBtnNumId:[I

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 88
    .local v0, "btn":Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method decStr()V
    .locals 3

    .prologue
    .line 108
    iget-object v0, p0, Lcom/ts/set/setview/SettingNumInuptDlg;->mStrInputText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    .line 110
    const-string v0, ""

    iput-object v0, p0, Lcom/ts/set/setview/SettingNumInuptDlg;->mStrInputText:Ljava/lang/String;

    .line 117
    :goto_0
    iget-object v0, p0, Lcom/ts/set/setview/SettingNumInuptDlg;->mStrInputText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lcom/ts/set/setview/SettingNumInuptDlg;->mCurLen:I

    .line 118
    iget-object v0, p0, Lcom/ts/set/setview/SettingNumInuptDlg;->mTvInput:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ts/set/setview/SettingNumInuptDlg;->mStrInputText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    return-void

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/ts/set/setview/SettingNumInuptDlg;->mStrInputText:Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/ts/set/setview/SettingNumInuptDlg;->mStrInputText:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ts/set/setview/SettingNumInuptDlg;->mStrInputText:Ljava/lang/String;

    goto :goto_0
.end method

.method public getSearch()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/ts/set/setview/SettingNumInuptDlg;->mBtnSearch:Landroid/widget/Button;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 124
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 125
    .local v0, "id":I
    sget v1, Lcom/ts/MainUI/R$id;->setting_bt_btn_num0:I

    if-ne v0, v1, :cond_1

    .line 126
    const-string v1, "0"

    invoke-virtual {p0, v1}, Lcom/ts/set/setview/SettingNumInuptDlg;->addStr(Ljava/lang/String;)V

    .line 162
    :cond_0
    :goto_0
    return-void

    .line 127
    :cond_1
    sget v1, Lcom/ts/MainUI/R$id;->setting_bt_btn_num1:I

    if-ne v0, v1, :cond_2

    .line 128
    const-string v1, "1"

    invoke-virtual {p0, v1}, Lcom/ts/set/setview/SettingNumInuptDlg;->addStr(Ljava/lang/String;)V

    goto :goto_0

    .line 129
    :cond_2
    sget v1, Lcom/ts/MainUI/R$id;->setting_bt_btn_num2:I

    if-ne v0, v1, :cond_3

    .line 130
    const-string v1, "2"

    invoke-virtual {p0, v1}, Lcom/ts/set/setview/SettingNumInuptDlg;->addStr(Ljava/lang/String;)V

    goto :goto_0

    .line 131
    :cond_3
    sget v1, Lcom/ts/MainUI/R$id;->setting_bt_btn_num3:I

    if-ne v0, v1, :cond_4

    .line 132
    const-string v1, "3"

    invoke-virtual {p0, v1}, Lcom/ts/set/setview/SettingNumInuptDlg;->addStr(Ljava/lang/String;)V

    goto :goto_0

    .line 133
    :cond_4
    sget v1, Lcom/ts/MainUI/R$id;->setting_bt_btn_num4:I

    if-ne v0, v1, :cond_5

    .line 134
    const-string v1, "4"

    invoke-virtual {p0, v1}, Lcom/ts/set/setview/SettingNumInuptDlg;->addStr(Ljava/lang/String;)V

    goto :goto_0

    .line 135
    :cond_5
    sget v1, Lcom/ts/MainUI/R$id;->setting_bt_btn_num5:I

    if-ne v0, v1, :cond_6

    .line 136
    const-string v1, "5"

    invoke-virtual {p0, v1}, Lcom/ts/set/setview/SettingNumInuptDlg;->addStr(Ljava/lang/String;)V

    goto :goto_0

    .line 137
    :cond_6
    sget v1, Lcom/ts/MainUI/R$id;->setting_bt_btn_num6:I

    if-ne v0, v1, :cond_7

    .line 138
    const-string v1, "6"

    invoke-virtual {p0, v1}, Lcom/ts/set/setview/SettingNumInuptDlg;->addStr(Ljava/lang/String;)V

    goto :goto_0

    .line 139
    :cond_7
    sget v1, Lcom/ts/MainUI/R$id;->setting_bt_btn_num7:I

    if-ne v0, v1, :cond_8

    .line 140
    const-string v1, "7"

    invoke-virtual {p0, v1}, Lcom/ts/set/setview/SettingNumInuptDlg;->addStr(Ljava/lang/String;)V

    goto :goto_0

    .line 141
    :cond_8
    sget v1, Lcom/ts/MainUI/R$id;->setting_bt_btn_num8:I

    if-ne v0, v1, :cond_9

    .line 142
    const-string v1, "8"

    invoke-virtual {p0, v1}, Lcom/ts/set/setview/SettingNumInuptDlg;->addStr(Ljava/lang/String;)V

    goto :goto_0

    .line 143
    :cond_9
    sget v1, Lcom/ts/MainUI/R$id;->setting_bt_btn_num9:I

    if-ne v0, v1, :cond_a

    .line 144
    const-string v1, "9"

    invoke-virtual {p0, v1}, Lcom/ts/set/setview/SettingNumInuptDlg;->addStr(Ljava/lang/String;)V

    goto :goto_0

    .line 145
    :cond_a
    sget v1, Lcom/ts/MainUI/R$id;->setting_bt_btn_close:I

    if-ne v0, v1, :cond_b

    .line 146
    invoke-virtual {p0}, Lcom/ts/set/setview/SettingNumInuptDlg;->dismiss()V

    goto :goto_0

    .line 147
    :cond_b
    sget v1, Lcom/ts/MainUI/R$id;->setting_bt_btn_delete:I

    if-ne v0, v1, :cond_c

    .line 148
    invoke-virtual {p0}, Lcom/ts/set/setview/SettingNumInuptDlg;->decStr()V

    goto :goto_0

    .line 149
    :cond_c
    sget v1, Lcom/ts/MainUI/R$id;->setting_bt_btn_ok:I

    if-ne v0, v1, :cond_0

    .line 150
    iget-object v1, p0, Lcom/ts/set/setview/SettingNumInuptDlg;->mOK:Lcom/ts/set/setview/SettingNumInuptDlg$onInputOK;

    if-eqz v1, :cond_d

    .line 152
    iget-object v1, p0, Lcom/ts/set/setview/SettingNumInuptDlg;->mStrInputText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_d

    .line 154
    iget-object v1, p0, Lcom/ts/set/setview/SettingNumInuptDlg;->mOK:Lcom/ts/set/setview/SettingNumInuptDlg$onInputOK;

    iget-object v2, p0, Lcom/ts/set/setview/SettingNumInuptDlg;->mStrInputText:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/ts/set/setview/SettingNumInuptDlg$onInputOK;->onOK(Ljava/lang/String;)V

    .line 157
    :cond_d
    invoke-virtual {p0}, Lcom/ts/set/setview/SettingNumInuptDlg;->dismiss()V

    goto/16 :goto_0
.end method
