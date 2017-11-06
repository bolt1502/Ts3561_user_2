.class Lcom/ts/can/toyota/spy/CanToyotaSpyHybridActivity$1;
.super Ljava/lang/Object;
.source "CanToyotaSpyHybridActivity.java"

# interfaces
.implements Lcom/ts/other/CustomImgView$onPaint;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ts/can/toyota/spy/CanToyotaSpyHybridActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ts/can/toyota/spy/CanToyotaSpyHybridActivity;


# direct methods
.method constructor <init>(Lcom/ts/can/toyota/spy/CanToyotaSpyHybridActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ts/can/toyota/spy/CanToyotaSpyHybridActivity$1;->this$0:Lcom/ts/can/toyota/spy/CanToyotaSpyHybridActivity;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public userPaint(Lcom/ts/other/CustomImgView;Landroid/graphics/Canvas;Landroid/graphics/Paint;)Z
    .locals 7
    .param p1, "view"    # Lcom/ts/other/CustomImgView;
    .param p2, "canvas"    # Landroid/graphics/Canvas;
    .param p3, "paint"    # Landroid/graphics/Paint;

    .prologue
    const/16 v2, 0x1d

    const/16 v6, 0x198

    const/16 v5, 0x9d

    const/16 v4, 0x90

    const/16 v3, 0x2f

    .line 55
    iget-object v0, p0, Lcom/ts/can/toyota/spy/CanToyotaSpyHybridActivity$1;->this$0:Lcom/ts/can/toyota/spy/CanToyotaSpyHybridActivity;

    # getter for: Lcom/ts/can/toyota/spy/CanToyotaSpyHybridActivity;->mHybridData:Lcom/lgb/canmodule/CanDataInfo$ToyotaHybrid;
    invoke-static {v0}, Lcom/ts/can/toyota/spy/CanToyotaSpyHybridActivity;->access$0(Lcom/ts/can/toyota/spy/CanToyotaSpyHybridActivity;)Lcom/lgb/canmodule/CanDataInfo$ToyotaHybrid;

    move-result-object v0

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ToyotaHybrid;->UpdateOnce:I

    if-nez v0, :cond_0

    .line 57
    sget v0, Lcom/ts/MainUI/R$drawable;->can_fdj_cl_up:I

    const/16 v1, 0x80

    invoke-virtual {p1, v0, v1, v2}, Lcom/ts/other/CustomImgView;->drawImage(III)V

    .line 58
    sget v0, Lcom/ts/MainUI/R$drawable;->can_fdj_md_up:I

    const/16 v1, 0xc9

    const/16 v2, 0x53

    invoke-virtual {p1, v0, v1, v2}, Lcom/ts/other/CustomImgView;->drawImage(III)V

    .line 59
    sget v0, Lcom/ts/MainUI/R$drawable;->can_cl_md_up:I

    invoke-virtual {p1, v0, v4, v3}, Lcom/ts/other/CustomImgView;->drawImage(III)V

    .line 60
    sget v0, Lcom/ts/MainUI/R$drawable;->can_md_dc_up:I

    invoke-virtual {p1, v0, v6, v5}, Lcom/ts/other/CustomImgView;->drawImage(III)V

    .line 61
    sget v0, Lcom/ts/MainUI/R$drawable;->can_ydhh_dc_08:I

    const/16 v1, 0x26b

    const/16 v2, 0xb1

    invoke-virtual {p1, v0, v1, v2}, Lcom/ts/other/CustomImgView;->drawImage(III)V

    .line 120
    :goto_0
    sget v0, Lcom/ts/MainUI/R$drawable;->can_ydhh_fdj:I

    const/16 v1, 0x5d

    const/16 v2, 0x1b

    invoke-virtual {p1, v0, v1, v2}, Lcom/ts/other/CustomImgView;->drawImage(III)V

    .line 121
    const/4 v0, 0x0

    return v0

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/ts/can/toyota/spy/CanToyotaSpyHybridActivity$1;->this$0:Lcom/ts/can/toyota/spy/CanToyotaSpyHybridActivity;

    # getter for: Lcom/ts/can/toyota/spy/CanToyotaSpyHybridActivity;->mHybridData:Lcom/lgb/canmodule/CanDataInfo$ToyotaHybrid;
    invoke-static {v0}, Lcom/ts/can/toyota/spy/CanToyotaSpyHybridActivity;->access$0(Lcom/ts/can/toyota/spy/CanToyotaSpyHybridActivity;)Lcom/lgb/canmodule/CanDataInfo$ToyotaHybrid;

    move-result-object v0

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ToyotaHybrid;->FdjQdCl:I

    # invokes: Lcom/ts/can/toyota/spy/CanToyotaSpyHybridActivity;->i2b(I)Z
    invoke-static {v0}, Lcom/ts/can/toyota/spy/CanToyotaSpyHybridActivity;->access$1(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 67
    sget v0, Lcom/ts/MainUI/R$drawable;->can_fdj_cl_dn:I

    const/16 v1, 0x80

    invoke-virtual {p1, v0, v1, v2}, Lcom/ts/other/CustomImgView;->drawImage(III)V

    .line 74
    :goto_1
    iget-object v0, p0, Lcom/ts/can/toyota/spy/CanToyotaSpyHybridActivity$1;->this$0:Lcom/ts/can/toyota/spy/CanToyotaSpyHybridActivity;

    # getter for: Lcom/ts/can/toyota/spy/CanToyotaSpyHybridActivity;->mHybridData:Lcom/lgb/canmodule/CanDataInfo$ToyotaHybrid;
    invoke-static {v0}, Lcom/ts/can/toyota/spy/CanToyotaSpyHybridActivity;->access$0(Lcom/ts/can/toyota/spy/CanToyotaSpyHybridActivity;)Lcom/lgb/canmodule/CanDataInfo$ToyotaHybrid;

    move-result-object v0

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ToyotaHybrid;->FdjQdMd:I

    # invokes: Lcom/ts/can/toyota/spy/CanToyotaSpyHybridActivity;->i2b(I)Z
    invoke-static {v0}, Lcom/ts/can/toyota/spy/CanToyotaSpyHybridActivity;->access$1(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 76
    sget v0, Lcom/ts/MainUI/R$drawable;->can_fdj_md_dn:I

    const/16 v1, 0xc9

    const/16 v2, 0x53

    invoke-virtual {p1, v0, v1, v2}, Lcom/ts/other/CustomImgView;->drawImage(III)V

    .line 83
    :goto_2
    iget-object v0, p0, Lcom/ts/can/toyota/spy/CanToyotaSpyHybridActivity$1;->this$0:Lcom/ts/can/toyota/spy/CanToyotaSpyHybridActivity;

    # getter for: Lcom/ts/can/toyota/spy/CanToyotaSpyHybridActivity;->mHybridData:Lcom/lgb/canmodule/CanDataInfo$ToyotaHybrid;
    invoke-static {v0}, Lcom/ts/can/toyota/spy/CanToyotaSpyHybridActivity;->access$0(Lcom/ts/can/toyota/spy/CanToyotaSpyHybridActivity;)Lcom/lgb/canmodule/CanDataInfo$ToyotaHybrid;

    move-result-object v0

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ToyotaHybrid;->MdQdCl:I

    # invokes: Lcom/ts/can/toyota/spy/CanToyotaSpyHybridActivity;->i2b(I)Z
    invoke-static {v0}, Lcom/ts/can/toyota/spy/CanToyotaSpyHybridActivity;->access$1(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 85
    sget v0, Lcom/ts/MainUI/R$drawable;->can_md_cl:I

    invoke-virtual {p1, v0, v4, v3}, Lcom/ts/other/CustomImgView;->drawImage(III)V

    .line 96
    :goto_3
    iget-object v0, p0, Lcom/ts/can/toyota/spy/CanToyotaSpyHybridActivity$1;->this$0:Lcom/ts/can/toyota/spy/CanToyotaSpyHybridActivity;

    # getter for: Lcom/ts/can/toyota/spy/CanToyotaSpyHybridActivity;->mHybridData:Lcom/lgb/canmodule/CanDataInfo$ToyotaHybrid;
    invoke-static {v0}, Lcom/ts/can/toyota/spy/CanToyotaSpyHybridActivity;->access$0(Lcom/ts/can/toyota/spy/CanToyotaSpyHybridActivity;)Lcom/lgb/canmodule/CanDataInfo$ToyotaHybrid;

    move-result-object v0

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ToyotaHybrid;->MdQdDc:I

    # invokes: Lcom/ts/can/toyota/spy/CanToyotaSpyHybridActivity;->i2b(I)Z
    invoke-static {v0}, Lcom/ts/can/toyota/spy/CanToyotaSpyHybridActivity;->access$1(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 98
    sget v0, Lcom/ts/MainUI/R$drawable;->can_md_dc_dn:I

    invoke-virtual {p1, v0, v6, v5}, Lcom/ts/other/CustomImgView;->drawImage(III)V

    .line 109
    :goto_4
    iget-object v0, p0, Lcom/ts/can/toyota/spy/CanToyotaSpyHybridActivity$1;->this$0:Lcom/ts/can/toyota/spy/CanToyotaSpyHybridActivity;

    # getter for: Lcom/ts/can/toyota/spy/CanToyotaSpyHybridActivity;->mHybridData:Lcom/lgb/canmodule/CanDataInfo$ToyotaHybrid;
    invoke-static {v0}, Lcom/ts/can/toyota/spy/CanToyotaSpyHybridActivity;->access$0(Lcom/ts/can/toyota/spy/CanToyotaSpyHybridActivity;)Lcom/lgb/canmodule/CanDataInfo$ToyotaHybrid;

    move-result-object v0

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ToyotaHybrid;->Battery:I

    if-ltz v0, :cond_7

    iget-object v0, p0, Lcom/ts/can/toyota/spy/CanToyotaSpyHybridActivity$1;->this$0:Lcom/ts/can/toyota/spy/CanToyotaSpyHybridActivity;

    # getter for: Lcom/ts/can/toyota/spy/CanToyotaSpyHybridActivity;->mHybridData:Lcom/lgb/canmodule/CanDataInfo$ToyotaHybrid;
    invoke-static {v0}, Lcom/ts/can/toyota/spy/CanToyotaSpyHybridActivity;->access$0(Lcom/ts/can/toyota/spy/CanToyotaSpyHybridActivity;)Lcom/lgb/canmodule/CanDataInfo$ToyotaHybrid;

    move-result-object v0

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ToyotaHybrid;->Battery:I

    const/16 v1, 0x8

    if-gt v0, v1, :cond_7

    .line 111
    # getter for: Lcom/ts/can/toyota/spy/CanToyotaSpyHybridActivity;->mBattery:[I
    invoke-static {}, Lcom/ts/can/toyota/spy/CanToyotaSpyHybridActivity;->access$2()[I

    move-result-object v0

    iget-object v1, p0, Lcom/ts/can/toyota/spy/CanToyotaSpyHybridActivity$1;->this$0:Lcom/ts/can/toyota/spy/CanToyotaSpyHybridActivity;

    # getter for: Lcom/ts/can/toyota/spy/CanToyotaSpyHybridActivity;->mHybridData:Lcom/lgb/canmodule/CanDataInfo$ToyotaHybrid;
    invoke-static {v1}, Lcom/ts/can/toyota/spy/CanToyotaSpyHybridActivity;->access$0(Lcom/ts/can/toyota/spy/CanToyotaSpyHybridActivity;)Lcom/lgb/canmodule/CanDataInfo$ToyotaHybrid;

    move-result-object v1

    iget v1, v1, Lcom/lgb/canmodule/CanDataInfo$ToyotaHybrid;->Battery:I

    aget v0, v0, v1

    const/16 v1, 0x26b

    const/16 v2, 0xb1

    invoke-virtual {p1, v0, v1, v2}, Lcom/ts/other/CustomImgView;->drawImage(III)V

    goto/16 :goto_0

    .line 71
    :cond_1
    sget v0, Lcom/ts/MainUI/R$drawable;->can_fdj_cl_up:I

    const/16 v1, 0x80

    invoke-virtual {p1, v0, v1, v2}, Lcom/ts/other/CustomImgView;->drawImage(III)V

    goto :goto_1

    .line 80
    :cond_2
    sget v0, Lcom/ts/MainUI/R$drawable;->can_fdj_md_up:I

    const/16 v1, 0xc9

    const/16 v2, 0x53

    invoke-virtual {p1, v0, v1, v2}, Lcom/ts/other/CustomImgView;->drawImage(III)V

    goto :goto_2

    .line 87
    :cond_3
    iget-object v0, p0, Lcom/ts/can/toyota/spy/CanToyotaSpyHybridActivity$1;->this$0:Lcom/ts/can/toyota/spy/CanToyotaSpyHybridActivity;

    # getter for: Lcom/ts/can/toyota/spy/CanToyotaSpyHybridActivity;->mHybridData:Lcom/lgb/canmodule/CanDataInfo$ToyotaHybrid;
    invoke-static {v0}, Lcom/ts/can/toyota/spy/CanToyotaSpyHybridActivity;->access$0(Lcom/ts/can/toyota/spy/CanToyotaSpyHybridActivity;)Lcom/lgb/canmodule/CanDataInfo$ToyotaHybrid;

    move-result-object v0

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ToyotaHybrid;->ClQdMd:I

    # invokes: Lcom/ts/can/toyota/spy/CanToyotaSpyHybridActivity;->i2b(I)Z
    invoke-static {v0}, Lcom/ts/can/toyota/spy/CanToyotaSpyHybridActivity;->access$1(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 89
    sget v0, Lcom/ts/MainUI/R$drawable;->can_cl_md_dn:I

    invoke-virtual {p1, v0, v4, v3}, Lcom/ts/other/CustomImgView;->drawImage(III)V

    goto :goto_3

    .line 93
    :cond_4
    sget v0, Lcom/ts/MainUI/R$drawable;->can_cl_md_up:I

    invoke-virtual {p1, v0, v4, v3}, Lcom/ts/other/CustomImgView;->drawImage(III)V

    goto :goto_3

    .line 100
    :cond_5
    iget-object v0, p0, Lcom/ts/can/toyota/spy/CanToyotaSpyHybridActivity$1;->this$0:Lcom/ts/can/toyota/spy/CanToyotaSpyHybridActivity;

    # getter for: Lcom/ts/can/toyota/spy/CanToyotaSpyHybridActivity;->mHybridData:Lcom/lgb/canmodule/CanDataInfo$ToyotaHybrid;
    invoke-static {v0}, Lcom/ts/can/toyota/spy/CanToyotaSpyHybridActivity;->access$0(Lcom/ts/can/toyota/spy/CanToyotaSpyHybridActivity;)Lcom/lgb/canmodule/CanDataInfo$ToyotaHybrid;

    move-result-object v0

    iget v0, v0, Lcom/lgb/canmodule/CanDataInfo$ToyotaHybrid;->DcQdMd:I

    # invokes: Lcom/ts/can/toyota/spy/CanToyotaSpyHybridActivity;->i2b(I)Z
    invoke-static {v0}, Lcom/ts/can/toyota/spy/CanToyotaSpyHybridActivity;->access$1(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 102
    sget v0, Lcom/ts/MainUI/R$drawable;->can_dc_md:I

    invoke-virtual {p1, v0, v6, v5}, Lcom/ts/other/CustomImgView;->drawImage(III)V

    goto :goto_4

    .line 106
    :cond_6
    sget v0, Lcom/ts/MainUI/R$drawable;->can_md_dc_up:I

    invoke-virtual {p1, v0, v6, v5}, Lcom/ts/other/CustomImgView;->drawImage(III)V

    goto :goto_4

    .line 115
    :cond_7
    sget v0, Lcom/ts/MainUI/R$drawable;->can_ydhh_dc_08:I

    const/16 v1, 0x26b

    const/16 v2, 0xb1

    invoke-virtual {p1, v0, v1, v2}, Lcom/ts/other/CustomImgView;->drawImage(III)V

    goto/16 :goto_0
.end method
