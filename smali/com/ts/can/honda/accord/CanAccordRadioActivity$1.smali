.class Lcom/ts/can/honda/accord/CanAccordRadioActivity$1;
.super Ljava/lang/Object;
.source "CanAccordRadioActivity.java"

# interfaces
.implements Lcom/ts/other/CustomImgView$onPaint;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ts/can/honda/accord/CanAccordRadioActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ts/can/honda/accord/CanAccordRadioActivity;


# direct methods
.method constructor <init>(Lcom/ts/can/honda/accord/CanAccordRadioActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ts/can/honda/accord/CanAccordRadioActivity$1;->this$0:Lcom/ts/can/honda/accord/CanAccordRadioActivity;

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public userPaint(Lcom/ts/other/CustomImgView;Landroid/graphics/Canvas;Landroid/graphics/Paint;)Z
    .locals 9
    .param p1, "view"    # Lcom/ts/other/CustomImgView;
    .param p2, "canvas"    # Landroid/graphics/Canvas;
    .param p3, "paint"    # Landroid/graphics/Paint;

    .prologue
    const/16 v8, 0x3e8

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 136
    iget-object v5, p0, Lcom/ts/can/honda/accord/CanAccordRadioActivity$1;->this$0:Lcom/ts/can/honda/accord/CanAccordRadioActivity;

    # getter for: Lcom/ts/can/honda/accord/CanAccordRadioActivity;->mCurFreqData:Lcom/lgb/canmodule/CanDataInfo$AccordRadCurFreq;
    invoke-static {v5}, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->access$0(Lcom/ts/can/honda/accord/CanAccordRadioActivity;)Lcom/lgb/canmodule/CanDataInfo$AccordRadCurFreq;

    move-result-object v5

    iget v5, v5, Lcom/lgb/canmodule/CanDataInfo$AccordRadCurFreq;->UpdateOnce:I

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/ts/can/honda/accord/CanAccordRadioActivity$1;->this$0:Lcom/ts/can/honda/accord/CanAccordRadioActivity;

    # getter for: Lcom/ts/can/honda/accord/CanAccordRadioActivity;->mCurFreqData:Lcom/lgb/canmodule/CanDataInfo$AccordRadCurFreq;
    invoke-static {v5}, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->access$0(Lcom/ts/can/honda/accord/CanAccordRadioActivity;)Lcom/lgb/canmodule/CanDataInfo$AccordRadCurFreq;

    move-result-object v5

    iget v5, v5, Lcom/lgb/canmodule/CanDataInfo$AccordRadCurFreq;->CurFreq:I

    if-nez v5, :cond_1

    .line 174
    :cond_0
    :goto_0
    return v7

    .line 141
    :cond_1
    iget-object v5, p0, Lcom/ts/can/honda/accord/CanAccordRadioActivity$1;->this$0:Lcom/ts/can/honda/accord/CanAccordRadioActivity;

    # getter for: Lcom/ts/can/honda/accord/CanAccordRadioActivity;->mCurFreqData:Lcom/lgb/canmodule/CanDataInfo$AccordRadCurFreq;
    invoke-static {v5}, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->access$0(Lcom/ts/can/honda/accord/CanAccordRadioActivity;)Lcom/lgb/canmodule/CanDataInfo$AccordRadCurFreq;

    move-result-object v5

    iget v5, v5, Lcom/lgb/canmodule/CanDataInfo$AccordRadCurFreq;->CurFreq:I

    div-int/lit8 v5, v5, 0x64

    rem-int/lit8 v0, v5, 0xa

    .line 142
    .local v0, "Bai":I
    iget-object v5, p0, Lcom/ts/can/honda/accord/CanAccordRadioActivity$1;->this$0:Lcom/ts/can/honda/accord/CanAccordRadioActivity;

    # getter for: Lcom/ts/can/honda/accord/CanAccordRadioActivity;->mCurFreqData:Lcom/lgb/canmodule/CanDataInfo$AccordRadCurFreq;
    invoke-static {v5}, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->access$0(Lcom/ts/can/honda/accord/CanAccordRadioActivity;)Lcom/lgb/canmodule/CanDataInfo$AccordRadCurFreq;

    move-result-object v5

    iget v5, v5, Lcom/lgb/canmodule/CanDataInfo$AccordRadCurFreq;->CurFreq:I

    div-int/lit8 v5, v5, 0xa

    rem-int/lit8 v2, v5, 0xa

    .line 143
    .local v2, "Shi":I
    iget-object v5, p0, Lcom/ts/can/honda/accord/CanAccordRadioActivity$1;->this$0:Lcom/ts/can/honda/accord/CanAccordRadioActivity;

    # getter for: Lcom/ts/can/honda/accord/CanAccordRadioActivity;->mCurFreqData:Lcom/lgb/canmodule/CanDataInfo$AccordRadCurFreq;
    invoke-static {v5}, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->access$0(Lcom/ts/can/honda/accord/CanAccordRadioActivity;)Lcom/lgb/canmodule/CanDataInfo$AccordRadCurFreq;

    move-result-object v5

    iget v5, v5, Lcom/lgb/canmodule/CanDataInfo$AccordRadCurFreq;->CurFreq:I

    rem-int/lit8 v1, v5, 0xa

    .line 145
    .local v1, "Ge":I
    const/4 v4, 0x0

    .line 146
    .local v4, "fmdtx":I
    const/16 v3, 0xa

    .line 147
    .local v3, "amdtx":I
    iget-object v5, p0, Lcom/ts/can/honda/accord/CanAccordRadioActivity$1;->this$0:Lcom/ts/can/honda/accord/CanAccordRadioActivity;

    # getter for: Lcom/ts/can/honda/accord/CanAccordRadioActivity;->mCurFreqData:Lcom/lgb/canmodule/CanDataInfo$AccordRadCurFreq;
    invoke-static {v5}, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->access$0(Lcom/ts/can/honda/accord/CanAccordRadioActivity;)Lcom/lgb/canmodule/CanDataInfo$AccordRadCurFreq;

    move-result-object v5

    iget v5, v5, Lcom/lgb/canmodule/CanDataInfo$AccordRadCurFreq;->Band:I

    if-eqz v5, :cond_3

    .line 150
    iget-object v5, p0, Lcom/ts/can/honda/accord/CanAccordRadioActivity$1;->this$0:Lcom/ts/can/honda/accord/CanAccordRadioActivity;

    # getter for: Lcom/ts/can/honda/accord/CanAccordRadioActivity;->mCurFreqData:Lcom/lgb/canmodule/CanDataInfo$AccordRadCurFreq;
    invoke-static {v5}, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->access$0(Lcom/ts/can/honda/accord/CanAccordRadioActivity;)Lcom/lgb/canmodule/CanDataInfo$AccordRadCurFreq;

    move-result-object v5

    iget v5, v5, Lcom/lgb/canmodule/CanDataInfo$AccordRadCurFreq;->CurFreq:I

    if-lt v5, v8, :cond_2

    .line 152
    sget-object v5, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->mFreqNumArr:[I

    aget v5, v5, v6

    const/16 v6, 0x18c

    invoke-virtual {p1, v5, v6, v7}, Lcom/ts/other/CustomImgView;->drawImage(III)V

    .line 155
    :cond_2
    sget-object v5, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->mFreqNumArr:[I

    aget v5, v5, v0

    const/16 v6, 0x1bc

    invoke-virtual {p1, v5, v6, v7}, Lcom/ts/other/CustomImgView;->drawImage(III)V

    .line 156
    sget-object v5, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->mFreqNumArr:[I

    aget v5, v5, v2

    const/16 v6, 0x1ec

    invoke-virtual {p1, v5, v6, v7}, Lcom/ts/other/CustomImgView;->drawImage(III)V

    .line 157
    sget-object v5, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->mFreqNumArr:[I

    aget v5, v5, v1

    const/16 v6, 0x21c

    invoke-virtual {p1, v5, v6, v7}, Lcom/ts/other/CustomImgView;->drawImage(III)V

    goto :goto_0

    .line 162
    :cond_3
    iget-object v5, p0, Lcom/ts/can/honda/accord/CanAccordRadioActivity$1;->this$0:Lcom/ts/can/honda/accord/CanAccordRadioActivity;

    # getter for: Lcom/ts/can/honda/accord/CanAccordRadioActivity;->mCurFreqData:Lcom/lgb/canmodule/CanDataInfo$AccordRadCurFreq;
    invoke-static {v5}, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->access$0(Lcom/ts/can/honda/accord/CanAccordRadioActivity;)Lcom/lgb/canmodule/CanDataInfo$AccordRadCurFreq;

    move-result-object v5

    iget v5, v5, Lcom/lgb/canmodule/CanDataInfo$AccordRadCurFreq;->CurFreq:I

    if-lt v5, v8, :cond_4

    .line 164
    sget-object v5, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->mFreqNumArr:[I

    aget v5, v5, v6

    const/16 v6, 0x182

    invoke-virtual {p1, v5, v6, v7}, Lcom/ts/other/CustomImgView;->drawImage(III)V

    .line 167
    :cond_4
    sget-object v5, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->mFreqNumArr:[I

    aget v5, v5, v0

    const/16 v6, 0x1b2

    invoke-virtual {p1, v5, v6, v7}, Lcom/ts/other/CustomImgView;->drawImage(III)V

    .line 168
    sget-object v5, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->mFreqNumArr:[I

    aget v5, v5, v2

    const/16 v6, 0x1e2

    invoke-virtual {p1, v5, v6, v7}, Lcom/ts/other/CustomImgView;->drawImage(III)V

    .line 169
    sget-object v5, Lcom/ts/can/honda/accord/CanAccordRadioActivity;->mFreqNumArr:[I

    aget v5, v5, v1

    const/16 v6, 0x227

    invoke-virtual {p1, v5, v6, v7}, Lcom/ts/other/CustomImgView;->drawImage(III)V

    .line 170
    sget v5, Lcom/ts/MainUI/R$drawable;->can_yg_radio_point:I

    const/16 v6, 0x206

    invoke-virtual {p1, v5, v6, v7}, Lcom/ts/other/CustomImgView;->drawImage(III)V

    goto/16 :goto_0
.end method
