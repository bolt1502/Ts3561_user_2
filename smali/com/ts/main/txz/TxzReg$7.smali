.class Lcom/ts/main/txz/TxzReg$7;
.super Ljava/lang/Object;
.source "TxzReg.java"

# interfaces
.implements Lcom/txznet/sdk/TXZAsrManager$CommandListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ts/main/txz/TxzReg;->AddListenser()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ts/main/txz/TxzReg;


# direct methods
.method constructor <init>(Lcom/ts/main/txz/TxzReg;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ts/main/txz/TxzReg$7;->this$0:Lcom/ts/main/txz/TxzReg;

    .line 1001
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/ts/main/txz/TxzReg$7;)Lcom/ts/main/txz/TxzReg;
    .locals 1

    .prologue
    .line 1001
    iget-object v0, p0, Lcom/ts/main/txz/TxzReg$7;->this$0:Lcom/ts/main/txz/TxzReg;

    return-object v0
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;Ljava/lang/String;)V
    .locals 13
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    const/4 v12, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x1

    .line 1006
    const-string v7, "TxzReg"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "onCommand==="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1008
    const-string v7, "OPEN_WENAVI"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1010
    iget-object v7, p0, Lcom/ts/main/txz/TxzReg$7;->this$0:Lcom/ts/main/txz/TxzReg;

    const/16 v8, 0x2711

    invoke-virtual {v7, v8}, Lcom/ts/main/txz/TxzReg;->SetWeNaviCmd(I)V

    .line 1021
    :cond_0
    :goto_0
    const-string v7, "DDBOX_OPEN"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1023
    invoke-static {}, Lcom/txznet/sdk/TXZResourceManager;->getInstance()Lcom/txznet/sdk/TXZResourceManager;

    move-result-object v7

    iget-object v8, p0, Lcom/ts/main/txz/TxzReg$7;->this$0:Lcom/ts/main/txz/TxzReg;

    sget v9, Lcom/ts/MainUI/R$string;->ddbox_open:I

    invoke-virtual {v8, v9}, Lcom/ts/main/txz/TxzReg;->GetResString(I)Ljava/lang/String;

    move-result-object v8

    .line 1024
    new-instance v9, Lcom/ts/main/txz/TxzReg$7$1;

    invoke-direct {v9, p0}, Lcom/ts/main/txz/TxzReg$7$1;-><init>(Lcom/ts/main/txz/TxzReg$7;)V

    .line 1023
    invoke-virtual {v7, v8, v11, v9}, Lcom/txznet/sdk/TXZResourceManager;->speakTextOnRecordWin(Ljava/lang/String;ZLjava/lang/Runnable;)V

    .line 1150
    :cond_1
    :goto_1
    const-string v7, "OPEN_RADIO"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 1152
    invoke-static {}, Lcom/txznet/sdk/TXZResourceManager;->getInstance()Lcom/txznet/sdk/TXZResourceManager;

    move-result-object v7

    iget-object v8, p0, Lcom/ts/main/txz/TxzReg$7;->this$0:Lcom/ts/main/txz/TxzReg;

    sget v9, Lcom/ts/MainUI/R$string;->txz_open_radio:I

    invoke-virtual {v8, v9}, Lcom/ts/main/txz/TxzReg;->GetResString(I)Ljava/lang/String;

    move-result-object v8

    .line 1153
    new-instance v9, Lcom/ts/main/txz/TxzReg$7$11;

    invoke-direct {v9, p0}, Lcom/ts/main/txz/TxzReg$7$11;-><init>(Lcom/ts/main/txz/TxzReg$7;)V

    .line 1152
    invoke-virtual {v7, v8, v11, v9}, Lcom/txznet/sdk/TXZResourceManager;->speakTextOnRecordWin(Ljava/lang/String;ZLjava/lang/Runnable;)V

    .line 1510
    :cond_2
    :goto_2
    return-void

    .line 1012
    :cond_3
    const-string v7, "WENAVI_TO_AIM"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1014
    iget-object v7, p0, Lcom/ts/main/txz/TxzReg$7;->this$0:Lcom/ts/main/txz/TxzReg;

    const/16 v8, 0x2712

    invoke-virtual {v7, v8}, Lcom/ts/main/txz/TxzReg;->SetWeNaviCmd(I)V

    goto :goto_0

    .line 1016
    :cond_4
    const-string v7, "WENAVI_TO_SHARE"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1018
    iget-object v7, p0, Lcom/ts/main/txz/TxzReg$7;->this$0:Lcom/ts/main/txz/TxzReg;

    const/16 v8, 0x2713

    invoke-virtual {v7, v8}, Lcom/ts/main/txz/TxzReg;->SetWeNaviCmd(I)V

    goto :goto_0

    .line 1035
    :cond_5
    const-string v7, "DDBOX_OPEN_MUSIC"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1037
    invoke-static {}, Lcom/txznet/sdk/TXZResourceManager;->getInstance()Lcom/txznet/sdk/TXZResourceManager;

    move-result-object v7

    iget-object v8, p0, Lcom/ts/main/txz/TxzReg$7;->this$0:Lcom/ts/main/txz/TxzReg;

    sget v9, Lcom/ts/MainUI/R$string;->ddbox_open_music:I

    invoke-virtual {v8, v9}, Lcom/ts/main/txz/TxzReg;->GetResString(I)Ljava/lang/String;

    move-result-object v8

    .line 1038
    new-instance v9, Lcom/ts/main/txz/TxzReg$7$2;

    invoke-direct {v9, p0}, Lcom/ts/main/txz/TxzReg$7$2;-><init>(Lcom/ts/main/txz/TxzReg$7;)V

    .line 1037
    invoke-virtual {v7, v8, v11, v9}, Lcom/txznet/sdk/TXZResourceManager;->speakTextOnRecordWin(Ljava/lang/String;ZLjava/lang/Runnable;)V

    goto :goto_1

    .line 1047
    :cond_6
    const-string v7, "DDBOX_OPEN_LK"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 1049
    invoke-static {}, Lcom/txznet/sdk/TXZResourceManager;->getInstance()Lcom/txznet/sdk/TXZResourceManager;

    move-result-object v7

    iget-object v8, p0, Lcom/ts/main/txz/TxzReg$7;->this$0:Lcom/ts/main/txz/TxzReg;

    sget v9, Lcom/ts/MainUI/R$string;->ddbox_open_lk:I

    invoke-virtual {v8, v9}, Lcom/ts/main/txz/TxzReg;->GetResString(I)Ljava/lang/String;

    move-result-object v8

    .line 1050
    new-instance v9, Lcom/ts/main/txz/TxzReg$7$3;

    invoke-direct {v9, p0}, Lcom/ts/main/txz/TxzReg$7$3;-><init>(Lcom/ts/main/txz/TxzReg$7;)V

    .line 1049
    invoke-virtual {v7, v8, v11, v9}, Lcom/txznet/sdk/TXZResourceManager;->speakTextOnRecordWin(Ljava/lang/String;ZLjava/lang/Runnable;)V

    goto :goto_1

    .line 1060
    :cond_7
    const-string v7, "OPEN_CZDH"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 1062
    invoke-static {}, Lcom/txznet/sdk/TXZResourceManager;->getInstance()Lcom/txznet/sdk/TXZResourceManager;

    move-result-object v7

    iget-object v8, p0, Lcom/ts/main/txz/TxzReg$7;->this$0:Lcom/ts/main/txz/TxzReg;

    sget v9, Lcom/ts/MainUI/R$string;->ddbox_open_czdh:I

    invoke-virtual {v8, v9}, Lcom/ts/main/txz/TxzReg;->GetResString(I)Ljava/lang/String;

    move-result-object v8

    .line 1063
    new-instance v9, Lcom/ts/main/txz/TxzReg$7$4;

    invoke-direct {v9, p0}, Lcom/ts/main/txz/TxzReg$7$4;-><init>(Lcom/ts/main/txz/TxzReg$7;)V

    .line 1062
    invoke-virtual {v7, v8, v11, v9}, Lcom/txznet/sdk/TXZResourceManager;->speakTextOnRecordWin(Ljava/lang/String;ZLjava/lang/Runnable;)V

    goto/16 :goto_1

    .line 1073
    :cond_8
    const-string v7, "CLOSE_WZCX"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 1075
    invoke-static {}, Lcom/txznet/sdk/TXZResourceManager;->getInstance()Lcom/txznet/sdk/TXZResourceManager;

    move-result-object v7

    iget-object v8, p0, Lcom/ts/main/txz/TxzReg$7;->this$0:Lcom/ts/main/txz/TxzReg;

    sget v9, Lcom/ts/MainUI/R$string;->ddbox_open_wzcx:I

    invoke-virtual {v8, v9}, Lcom/ts/main/txz/TxzReg;->GetResString(I)Ljava/lang/String;

    move-result-object v8

    .line 1076
    new-instance v9, Lcom/ts/main/txz/TxzReg$7$5;

    invoke-direct {v9, p0}, Lcom/ts/main/txz/TxzReg$7$5;-><init>(Lcom/ts/main/txz/TxzReg$7;)V

    .line 1075
    invoke-virtual {v7, v8, v11, v9}, Lcom/txznet/sdk/TXZResourceManager;->speakTextOnRecordWin(Ljava/lang/String;ZLjava/lang/Runnable;)V

    goto/16 :goto_1

    .line 1086
    :cond_9
    const-string v7, "DDBOX_OPEN_HUMNAVI"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 1088
    invoke-static {}, Lcom/txznet/sdk/TXZResourceManager;->getInstance()Lcom/txznet/sdk/TXZResourceManager;

    move-result-object v7

    iget-object v8, p0, Lcom/ts/main/txz/TxzReg$7;->this$0:Lcom/ts/main/txz/TxzReg;

    sget v9, Lcom/ts/MainUI/R$string;->ddbox_open_humnavi:I

    invoke-virtual {v8, v9}, Lcom/ts/main/txz/TxzReg;->GetResString(I)Ljava/lang/String;

    move-result-object v8

    .line 1089
    new-instance v9, Lcom/ts/main/txz/TxzReg$7$6;

    invoke-direct {v9, p0}, Lcom/ts/main/txz/TxzReg$7$6;-><init>(Lcom/ts/main/txz/TxzReg$7;)V

    .line 1088
    invoke-virtual {v7, v8, v11, v9}, Lcom/txznet/sdk/TXZResourceManager;->speakTextOnRecordWin(Ljava/lang/String;ZLjava/lang/Runnable;)V

    goto/16 :goto_1

    .line 1099
    :cond_a
    const-string v7, "DDBOX_OPEN_DDBX"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 1101
    invoke-static {}, Lcom/txznet/sdk/TXZResourceManager;->getInstance()Lcom/txznet/sdk/TXZResourceManager;

    move-result-object v7

    iget-object v8, p0, Lcom/ts/main/txz/TxzReg$7;->this$0:Lcom/ts/main/txz/TxzReg;

    sget v9, Lcom/ts/MainUI/R$string;->ddbox_open_ddbx:I

    invoke-virtual {v8, v9}, Lcom/ts/main/txz/TxzReg;->GetResString(I)Ljava/lang/String;

    move-result-object v8

    .line 1102
    new-instance v9, Lcom/ts/main/txz/TxzReg$7$7;

    invoke-direct {v9, p0}, Lcom/ts/main/txz/TxzReg$7$7;-><init>(Lcom/ts/main/txz/TxzReg$7;)V

    .line 1101
    invoke-virtual {v7, v8, v11, v9}, Lcom/txznet/sdk/TXZResourceManager;->speakTextOnRecordWin(Ljava/lang/String;ZLjava/lang/Runnable;)V

    goto/16 :goto_1

    .line 1112
    :cond_b
    const-string v7, "DDBOX_OPEN_DDHCZ"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 1114
    invoke-static {}, Lcom/txznet/sdk/TXZResourceManager;->getInstance()Lcom/txznet/sdk/TXZResourceManager;

    move-result-object v7

    iget-object v8, p0, Lcom/ts/main/txz/TxzReg$7;->this$0:Lcom/ts/main/txz/TxzReg;

    sget v9, Lcom/ts/MainUI/R$string;->ddbox_open_hcz:I

    invoke-virtual {v8, v9}, Lcom/ts/main/txz/TxzReg;->GetResString(I)Ljava/lang/String;

    move-result-object v8

    .line 1115
    new-instance v9, Lcom/ts/main/txz/TxzReg$7$8;

    invoke-direct {v9, p0}, Lcom/ts/main/txz/TxzReg$7$8;-><init>(Lcom/ts/main/txz/TxzReg$7;)V

    .line 1114
    invoke-virtual {v7, v8, v11, v9}, Lcom/txznet/sdk/TXZResourceManager;->speakTextOnRecordWin(Ljava/lang/String;ZLjava/lang/Runnable;)V

    goto/16 :goto_1

    .line 1125
    :cond_c
    const-string v7, "DDBOX_OPEN_DDDLJY"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 1127
    invoke-static {}, Lcom/txznet/sdk/TXZResourceManager;->getInstance()Lcom/txznet/sdk/TXZResourceManager;

    move-result-object v7

    iget-object v8, p0, Lcom/ts/main/txz/TxzReg$7;->this$0:Lcom/ts/main/txz/TxzReg;

    sget v9, Lcom/ts/MainUI/R$string;->ddbox_open_ddjy:I

    invoke-virtual {v8, v9}, Lcom/ts/main/txz/TxzReg;->GetResString(I)Ljava/lang/String;

    move-result-object v8

    .line 1128
    new-instance v9, Lcom/ts/main/txz/TxzReg$7$9;

    invoke-direct {v9, p0}, Lcom/ts/main/txz/TxzReg$7$9;-><init>(Lcom/ts/main/txz/TxzReg$7;)V

    .line 1127
    invoke-virtual {v7, v8, v11, v9}, Lcom/txznet/sdk/TXZResourceManager;->speakTextOnRecordWin(Ljava/lang/String;ZLjava/lang/Runnable;)V

    goto/16 :goto_1

    .line 1138
    :cond_d
    const-string v7, "DDBOX_CHECK_QFLK"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1140
    invoke-static {}, Lcom/txznet/sdk/TXZResourceManager;->getInstance()Lcom/txznet/sdk/TXZResourceManager;

    move-result-object v7

    iget-object v8, p0, Lcom/ts/main/txz/TxzReg$7;->this$0:Lcom/ts/main/txz/TxzReg;

    sget v9, Lcom/ts/MainUI/R$string;->ddbox_check_qflk:I

    invoke-virtual {v8, v9}, Lcom/ts/main/txz/TxzReg;->GetResString(I)Ljava/lang/String;

    move-result-object v8

    .line 1141
    new-instance v9, Lcom/ts/main/txz/TxzReg$7$10;

    invoke-direct {v9, p0}, Lcom/ts/main/txz/TxzReg$7$10;-><init>(Lcom/ts/main/txz/TxzReg$7;)V

    .line 1140
    invoke-virtual {v7, v8, v11, v9}, Lcom/txznet/sdk/TXZResourceManager;->speakTextOnRecordWin(Ljava/lang/String;ZLjava/lang/Runnable;)V

    goto/16 :goto_1

    .line 1163
    :cond_e
    const-string v7, "OPEN_NAVI"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 1165
    invoke-static {}, Lcom/txznet/sdk/TXZResourceManager;->getInstance()Lcom/txznet/sdk/TXZResourceManager;

    move-result-object v7

    iget-object v8, p0, Lcom/ts/main/txz/TxzReg$7;->this$0:Lcom/ts/main/txz/TxzReg;

    sget v9, Lcom/ts/MainUI/R$string;->txz_open_navi:I

    invoke-virtual {v8, v9}, Lcom/ts/main/txz/TxzReg;->GetResString(I)Ljava/lang/String;

    move-result-object v8

    .line 1166
    new-instance v9, Lcom/ts/main/txz/TxzReg$7$12;

    invoke-direct {v9, p0}, Lcom/ts/main/txz/TxzReg$7$12;-><init>(Lcom/ts/main/txz/TxzReg$7;)V

    .line 1165
    invoke-virtual {v7, v8, v11, v9}, Lcom/txznet/sdk/TXZResourceManager;->speakTextOnRecordWin(Ljava/lang/String;ZLjava/lang/Runnable;)V

    goto/16 :goto_2

    .line 1176
    :cond_f
    const-string v7, "CLOSE_RADIO"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 1177
    invoke-static {}, Lcom/txznet/sdk/TXZResourceManager;->getInstance()Lcom/txznet/sdk/TXZResourceManager;

    move-result-object v7

    iget-object v8, p0, Lcom/ts/main/txz/TxzReg$7;->this$0:Lcom/ts/main/txz/TxzReg;

    sget v9, Lcom/ts/MainUI/R$string;->txz_close_radio:I

    invoke-virtual {v8, v9}, Lcom/ts/main/txz/TxzReg;->GetResString(I)Ljava/lang/String;

    move-result-object v8

    .line 1178
    new-instance v9, Lcom/ts/main/txz/TxzReg$7$13;

    invoke-direct {v9, p0}, Lcom/ts/main/txz/TxzReg$7$13;-><init>(Lcom/ts/main/txz/TxzReg$7;)V

    .line 1177
    invoke-virtual {v7, v8, v11, v9}, Lcom/txznet/sdk/TXZResourceManager;->speakTextOnRecordWin(Ljava/lang/String;ZLjava/lang/Runnable;)V

    goto/16 :goto_2

    .line 1191
    :cond_10
    const-string v7, "OPEN_AUDIO"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_11

    .line 1192
    invoke-static {}, Lcom/txznet/sdk/TXZResourceManager;->getInstance()Lcom/txznet/sdk/TXZResourceManager;

    move-result-object v7

    iget-object v8, p0, Lcom/ts/main/txz/TxzReg$7;->this$0:Lcom/ts/main/txz/TxzReg;

    sget v9, Lcom/ts/MainUI/R$string;->txz_open_music:I

    invoke-virtual {v8, v9}, Lcom/ts/main/txz/TxzReg;->GetResString(I)Ljava/lang/String;

    move-result-object v8

    .line 1193
    new-instance v9, Lcom/ts/main/txz/TxzReg$7$14;

    invoke-direct {v9, p0}, Lcom/ts/main/txz/TxzReg$7$14;-><init>(Lcom/ts/main/txz/TxzReg$7;)V

    .line 1192
    invoke-virtual {v7, v8, v11, v9}, Lcom/txznet/sdk/TXZResourceManager;->speakTextOnRecordWin(Ljava/lang/String;ZLjava/lang/Runnable;)V

    goto/16 :goto_2

    .line 1204
    :cond_11
    const-string v7, "CLOSE_AUDIO"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_12

    .line 1205
    invoke-static {}, Lcom/txznet/sdk/TXZResourceManager;->getInstance()Lcom/txznet/sdk/TXZResourceManager;

    move-result-object v7

    iget-object v8, p0, Lcom/ts/main/txz/TxzReg$7;->this$0:Lcom/ts/main/txz/TxzReg;

    sget v9, Lcom/ts/MainUI/R$string;->txz_close_music:I

    invoke-virtual {v8, v9}, Lcom/ts/main/txz/TxzReg;->GetResString(I)Ljava/lang/String;

    move-result-object v8

    .line 1206
    new-instance v9, Lcom/ts/main/txz/TxzReg$7$15;

    invoke-direct {v9, p0}, Lcom/ts/main/txz/TxzReg$7$15;-><init>(Lcom/ts/main/txz/TxzReg$7;)V

    .line 1205
    invoke-virtual {v7, v8, v11, v9}, Lcom/txznet/sdk/TXZResourceManager;->speakTextOnRecordWin(Ljava/lang/String;ZLjava/lang/Runnable;)V

    goto/16 :goto_2

    .line 1217
    :cond_12
    const-string v7, "OPEN_VIDEO"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_13

    .line 1218
    invoke-static {}, Lcom/txznet/sdk/TXZResourceManager;->getInstance()Lcom/txznet/sdk/TXZResourceManager;

    move-result-object v7

    iget-object v8, p0, Lcom/ts/main/txz/TxzReg$7;->this$0:Lcom/ts/main/txz/TxzReg;

    sget v9, Lcom/ts/MainUI/R$string;->txz_open_video:I

    invoke-virtual {v8, v9}, Lcom/ts/main/txz/TxzReg;->GetResString(I)Ljava/lang/String;

    move-result-object v8

    .line 1219
    new-instance v9, Lcom/ts/main/txz/TxzReg$7$16;

    invoke-direct {v9, p0}, Lcom/ts/main/txz/TxzReg$7$16;-><init>(Lcom/ts/main/txz/TxzReg$7;)V

    .line 1218
    invoke-virtual {v7, v8, v11, v9}, Lcom/txznet/sdk/TXZResourceManager;->speakTextOnRecordWin(Ljava/lang/String;ZLjava/lang/Runnable;)V

    goto/16 :goto_2

    .line 1227
    :cond_13
    const-string v7, "CLOSE_VIDEO"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_14

    .line 1228
    invoke-static {}, Lcom/txznet/sdk/TXZResourceManager;->getInstance()Lcom/txznet/sdk/TXZResourceManager;

    move-result-object v7

    iget-object v8, p0, Lcom/ts/main/txz/TxzReg$7;->this$0:Lcom/ts/main/txz/TxzReg;

    sget v9, Lcom/ts/MainUI/R$string;->txz_close_video:I

    invoke-virtual {v8, v9}, Lcom/ts/main/txz/TxzReg;->GetResString(I)Ljava/lang/String;

    move-result-object v8

    .line 1229
    new-instance v9, Lcom/ts/main/txz/TxzReg$7$17;

    invoke-direct {v9, p0}, Lcom/ts/main/txz/TxzReg$7$17;-><init>(Lcom/ts/main/txz/TxzReg$7;)V

    .line 1228
    invoke-virtual {v7, v8, v11, v9}, Lcom/txznet/sdk/TXZResourceManager;->speakTextOnRecordWin(Ljava/lang/String;ZLjava/lang/Runnable;)V

    goto/16 :goto_2

    .line 1242
    :cond_14
    const-string v7, "OPEN_DTV"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_15

    .line 1243
    invoke-static {}, Lcom/txznet/sdk/TXZResourceManager;->getInstance()Lcom/txznet/sdk/TXZResourceManager;

    move-result-object v7

    iget-object v8, p0, Lcom/ts/main/txz/TxzReg$7;->this$0:Lcom/ts/main/txz/TxzReg;

    sget v9, Lcom/ts/MainUI/R$string;->txz_open_cmmb:I

    invoke-virtual {v8, v9}, Lcom/ts/main/txz/TxzReg;->GetResString(I)Ljava/lang/String;

    move-result-object v8

    .line 1244
    new-instance v9, Lcom/ts/main/txz/TxzReg$7$18;

    invoke-direct {v9, p0}, Lcom/ts/main/txz/TxzReg$7$18;-><init>(Lcom/ts/main/txz/TxzReg$7;)V

    .line 1243
    invoke-virtual {v7, v8, v11, v9}, Lcom/txznet/sdk/TXZResourceManager;->speakTextOnRecordWin(Ljava/lang/String;ZLjava/lang/Runnable;)V

    goto/16 :goto_2

    .line 1252
    :cond_15
    const-string v7, "CLOSE_DTV"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_16

    .line 1253
    invoke-static {}, Lcom/txznet/sdk/TXZResourceManager;->getInstance()Lcom/txznet/sdk/TXZResourceManager;

    move-result-object v7

    iget-object v8, p0, Lcom/ts/main/txz/TxzReg$7;->this$0:Lcom/ts/main/txz/TxzReg;

    sget v9, Lcom/ts/MainUI/R$string;->txz_close_cmmb:I

    invoke-virtual {v8, v9}, Lcom/ts/main/txz/TxzReg;->GetResString(I)Ljava/lang/String;

    move-result-object v8

    .line 1254
    new-instance v9, Lcom/ts/main/txz/TxzReg$7$19;

    invoke-direct {v9, p0}, Lcom/ts/main/txz/TxzReg$7$19;-><init>(Lcom/ts/main/txz/TxzReg$7;)V

    .line 1253
    invoke-virtual {v7, v8, v11, v9}, Lcom/txznet/sdk/TXZResourceManager;->speakTextOnRecordWin(Ljava/lang/String;ZLjava/lang/Runnable;)V

    goto/16 :goto_2

    .line 1266
    :cond_16
    const-string v7, "OPEN_DVD"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_17

    .line 1267
    invoke-static {}, Lcom/txznet/sdk/TXZResourceManager;->getInstance()Lcom/txznet/sdk/TXZResourceManager;

    move-result-object v7

    iget-object v8, p0, Lcom/ts/main/txz/TxzReg$7;->this$0:Lcom/ts/main/txz/TxzReg;

    sget v9, Lcom/ts/MainUI/R$string;->txz_open_dvd:I

    invoke-virtual {v8, v9}, Lcom/ts/main/txz/TxzReg;->GetResString(I)Ljava/lang/String;

    move-result-object v8

    .line 1268
    new-instance v9, Lcom/ts/main/txz/TxzReg$7$20;

    invoke-direct {v9, p0}, Lcom/ts/main/txz/TxzReg$7$20;-><init>(Lcom/ts/main/txz/TxzReg$7;)V

    .line 1267
    invoke-virtual {v7, v8, v11, v9}, Lcom/txznet/sdk/TXZResourceManager;->speakTextOnRecordWin(Ljava/lang/String;ZLjava/lang/Runnable;)V

    goto/16 :goto_2

    .line 1276
    :cond_17
    const-string v7, "CLOSE_DVD"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_18

    .line 1277
    invoke-static {}, Lcom/txznet/sdk/TXZResourceManager;->getInstance()Lcom/txznet/sdk/TXZResourceManager;

    move-result-object v7

    iget-object v8, p0, Lcom/ts/main/txz/TxzReg$7;->this$0:Lcom/ts/main/txz/TxzReg;

    sget v9, Lcom/ts/MainUI/R$string;->txz_close_dvd:I

    invoke-virtual {v8, v9}, Lcom/ts/main/txz/TxzReg;->GetResString(I)Ljava/lang/String;

    move-result-object v8

    .line 1278
    new-instance v9, Lcom/ts/main/txz/TxzReg$7$21;

    invoke-direct {v9, p0}, Lcom/ts/main/txz/TxzReg$7$21;-><init>(Lcom/ts/main/txz/TxzReg$7;)V

    .line 1277
    invoke-virtual {v7, v8, v11, v9}, Lcom/txznet/sdk/TXZResourceManager;->speakTextOnRecordWin(Ljava/lang/String;ZLjava/lang/Runnable;)V

    goto/16 :goto_2

    .line 1289
    :cond_18
    const-string v7, "OPEN_DVR"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_19

    .line 1290
    invoke-static {}, Lcom/txznet/sdk/TXZResourceManager;->getInstance()Lcom/txznet/sdk/TXZResourceManager;

    move-result-object v7

    iget-object v8, p0, Lcom/ts/main/txz/TxzReg$7;->this$0:Lcom/ts/main/txz/TxzReg;

    sget v9, Lcom/ts/MainUI/R$string;->txz_open_dvr:I

    invoke-virtual {v8, v9}, Lcom/ts/main/txz/TxzReg;->GetResString(I)Ljava/lang/String;

    move-result-object v8

    .line 1291
    new-instance v9, Lcom/ts/main/txz/TxzReg$7$22;

    invoke-direct {v9, p0}, Lcom/ts/main/txz/TxzReg$7$22;-><init>(Lcom/ts/main/txz/TxzReg$7;)V

    .line 1290
    invoke-virtual {v7, v8, v11, v9}, Lcom/txznet/sdk/TXZResourceManager;->speakTextOnRecordWin(Ljava/lang/String;ZLjava/lang/Runnable;)V

    goto/16 :goto_2

    .line 1299
    :cond_19
    const-string v7, "OPEN_XMLY"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1a

    .line 1300
    invoke-static {}, Lcom/txznet/sdk/TXZResourceManager;->getInstance()Lcom/txznet/sdk/TXZResourceManager;

    move-result-object v7

    iget-object v8, p0, Lcom/ts/main/txz/TxzReg$7;->this$0:Lcom/ts/main/txz/TxzReg;

    sget v9, Lcom/ts/MainUI/R$string;->txz_open_xmly:I

    invoke-virtual {v8, v9}, Lcom/ts/main/txz/TxzReg;->GetResString(I)Ljava/lang/String;

    move-result-object v8

    .line 1301
    new-instance v9, Lcom/ts/main/txz/TxzReg$7$23;

    invoke-direct {v9, p0}, Lcom/ts/main/txz/TxzReg$7$23;-><init>(Lcom/ts/main/txz/TxzReg$7;)V

    .line 1300
    invoke-virtual {v7, v8, v11, v9}, Lcom/txznet/sdk/TXZResourceManager;->speakTextOnRecordWin(Ljava/lang/String;ZLjava/lang/Runnable;)V

    goto/16 :goto_2

    .line 1308
    :cond_1a
    const-string v7, "CLOSE_XMLY"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1b

    .line 1309
    invoke-static {}, Lcom/txznet/sdk/TXZResourceManager;->getInstance()Lcom/txznet/sdk/TXZResourceManager;

    move-result-object v7

    iget-object v8, p0, Lcom/ts/main/txz/TxzReg$7;->this$0:Lcom/ts/main/txz/TxzReg;

    sget v9, Lcom/ts/MainUI/R$string;->txz_close_xmly:I

    invoke-virtual {v8, v9}, Lcom/ts/main/txz/TxzReg;->GetResString(I)Ljava/lang/String;

    move-result-object v8

    .line 1310
    new-instance v9, Lcom/ts/main/txz/TxzReg$7$24;

    invoke-direct {v9, p0}, Lcom/ts/main/txz/TxzReg$7$24;-><init>(Lcom/ts/main/txz/TxzReg$7;)V

    .line 1309
    invoke-virtual {v7, v8, v11, v9}, Lcom/txznet/sdk/TXZResourceManager;->speakTextOnRecordWin(Ljava/lang/String;ZLjava/lang/Runnable;)V

    goto/16 :goto_2

    .line 1321
    :cond_1b
    const-string v7, "OPEN_BT"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1d

    .line 1322
    invoke-static {}, Lcom/ts/bt/BtExe;->getBtInstance()Lcom/ts/bt/BtExe;

    move-result-object v7

    invoke-virtual {v7}, Lcom/ts/bt/BtExe;->isConnected()Z

    move-result v7

    if-eqz v7, :cond_1c

    .line 1323
    invoke-static {}, Lcom/txznet/sdk/TXZResourceManager;->getInstance()Lcom/txznet/sdk/TXZResourceManager;

    move-result-object v7

    iget-object v8, p0, Lcom/ts/main/txz/TxzReg$7;->this$0:Lcom/ts/main/txz/TxzReg;

    sget v9, Lcom/ts/MainUI/R$string;->txz_open_bt_music:I

    invoke-virtual {v8, v9}, Lcom/ts/main/txz/TxzReg;->GetResString(I)Ljava/lang/String;

    move-result-object v8

    .line 1324
    new-instance v9, Lcom/ts/main/txz/TxzReg$7$25;

    invoke-direct {v9, p0}, Lcom/ts/main/txz/TxzReg$7$25;-><init>(Lcom/ts/main/txz/TxzReg$7;)V

    .line 1323
    invoke-virtual {v7, v8, v11, v9}, Lcom/txznet/sdk/TXZResourceManager;->speakTextOnRecordWin(Ljava/lang/String;ZLjava/lang/Runnable;)V

    goto/16 :goto_2

    .line 1333
    :cond_1c
    invoke-static {}, Lcom/txznet/sdk/TXZTtsManager;->getInstance()Lcom/txznet/sdk/TXZTtsManager;

    move-result-object v7

    const-string v8, "\u8bf7\u5148\u8fde\u63a5\u84dd\u7259"

    invoke-virtual {v7, v8}, Lcom/txznet/sdk/TXZTtsManager;->speakText(Ljava/lang/String;)I

    .line 1334
    const/4 v7, 0x7

    invoke-static {v7, v10}, Lcom/ts/main/common/WinShow;->GotoWin(II)V

    goto/16 :goto_2

    .line 1336
    :cond_1d
    const-string v7, "SINGLE_LOOP"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1e

    .line 1338
    invoke-static {}, Lcom/txznet/sdk/TXZResourceManager;->getInstance()Lcom/txznet/sdk/TXZResourceManager;

    move-result-object v7

    iget-object v8, p0, Lcom/ts/main/txz/TxzReg$7;->this$0:Lcom/ts/main/txz/TxzReg;

    sget v9, Lcom/ts/MainUI/R$string;->txz_no_support_this_cmd:I

    invoke-virtual {v8, v9}, Lcom/ts/main/txz/TxzReg;->GetResString(I)Ljava/lang/String;

    move-result-object v8

    .line 1339
    new-instance v9, Lcom/ts/main/txz/TxzReg$7$26;

    invoke-direct {v9, p0}, Lcom/ts/main/txz/TxzReg$7$26;-><init>(Lcom/ts/main/txz/TxzReg$7;)V

    .line 1338
    invoke-virtual {v7, v8, v11, v9}, Lcom/txznet/sdk/TXZResourceManager;->speakTextOnRecordWin(Ljava/lang/String;ZLjava/lang/Runnable;)V

    goto/16 :goto_2

    .line 1347
    :cond_1e
    const-string v7, "LOOP_ALL"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1f

    .line 1349
    invoke-static {}, Lcom/txznet/sdk/TXZResourceManager;->getInstance()Lcom/txznet/sdk/TXZResourceManager;

    move-result-object v7

    iget-object v8, p0, Lcom/ts/main/txz/TxzReg$7;->this$0:Lcom/ts/main/txz/TxzReg;

    sget v9, Lcom/ts/MainUI/R$string;->txz_no_support_this_cmd:I

    invoke-virtual {v8, v9}, Lcom/ts/main/txz/TxzReg;->GetResString(I)Ljava/lang/String;

    move-result-object v8

    .line 1350
    new-instance v9, Lcom/ts/main/txz/TxzReg$7$27;

    invoke-direct {v9, p0}, Lcom/ts/main/txz/TxzReg$7$27;-><init>(Lcom/ts/main/txz/TxzReg$7;)V

    .line 1349
    invoke-virtual {v7, v8, v11, v9}, Lcom/txznet/sdk/TXZResourceManager;->speakTextOnRecordWin(Ljava/lang/String;ZLjava/lang/Runnable;)V

    goto/16 :goto_2

    .line 1358
    :cond_1f
    const-string v7, "RANDOM_LOOP"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_20

    .line 1360
    invoke-static {}, Lcom/txznet/sdk/TXZResourceManager;->getInstance()Lcom/txznet/sdk/TXZResourceManager;

    move-result-object v7

    iget-object v8, p0, Lcom/ts/main/txz/TxzReg$7;->this$0:Lcom/ts/main/txz/TxzReg;

    sget v9, Lcom/ts/MainUI/R$string;->txz_no_support_this_cmd:I

    invoke-virtual {v8, v9}, Lcom/ts/main/txz/TxzReg;->GetResString(I)Ljava/lang/String;

    move-result-object v8

    .line 1361
    new-instance v9, Lcom/ts/main/txz/TxzReg$7$28;

    invoke-direct {v9, p0}, Lcom/ts/main/txz/TxzReg$7$28;-><init>(Lcom/ts/main/txz/TxzReg$7;)V

    .line 1360
    invoke-virtual {v7, v8, v11, v9}, Lcom/txznet/sdk/TXZResourceManager;->speakTextOnRecordWin(Ljava/lang/String;ZLjava/lang/Runnable;)V

    goto/16 :goto_2

    .line 1369
    :cond_20
    const-string v7, "MUSIC_FAVOURITE"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_21

    .line 1371
    invoke-static {}, Lcom/txznet/sdk/TXZResourceManager;->getInstance()Lcom/txznet/sdk/TXZResourceManager;

    move-result-object v7

    iget-object v8, p0, Lcom/ts/main/txz/TxzReg$7;->this$0:Lcom/ts/main/txz/TxzReg;

    sget v9, Lcom/ts/MainUI/R$string;->txz_no_support_this_cmd:I

    invoke-virtual {v8, v9}, Lcom/ts/main/txz/TxzReg;->GetResString(I)Ljava/lang/String;

    move-result-object v8

    .line 1372
    new-instance v9, Lcom/ts/main/txz/TxzReg$7$29;

    invoke-direct {v9, p0}, Lcom/ts/main/txz/TxzReg$7$29;-><init>(Lcom/ts/main/txz/TxzReg$7;)V

    .line 1371
    invoke-virtual {v7, v8, v11, v9}, Lcom/txznet/sdk/TXZResourceManager;->speakTextOnRecordWin(Ljava/lang/String;ZLjava/lang/Runnable;)V

    goto/16 :goto_2

    .line 1380
    :cond_21
    const-string v7, "CANCEL_MUSIC_FAVOURITE"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_22

    .line 1382
    invoke-static {}, Lcom/txznet/sdk/TXZResourceManager;->getInstance()Lcom/txznet/sdk/TXZResourceManager;

    move-result-object v7

    iget-object v8, p0, Lcom/ts/main/txz/TxzReg$7;->this$0:Lcom/ts/main/txz/TxzReg;

    sget v9, Lcom/ts/MainUI/R$string;->txz_no_support_this_cmd:I

    invoke-virtual {v8, v9}, Lcom/ts/main/txz/TxzReg;->GetResString(I)Ljava/lang/String;

    move-result-object v8

    .line 1383
    new-instance v9, Lcom/ts/main/txz/TxzReg$7$30;

    invoke-direct {v9, p0}, Lcom/ts/main/txz/TxzReg$7$30;-><init>(Lcom/ts/main/txz/TxzReg$7;)V

    .line 1382
    invoke-virtual {v7, v8, v11, v9}, Lcom/txznet/sdk/TXZResourceManager;->speakTextOnRecordWin(Ljava/lang/String;ZLjava/lang/Runnable;)V

    goto/16 :goto_2

    .line 1391
    :cond_22
    const-string v7, "OPEN_PALY_LSIT"

    invoke-virtual {p2, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_23

    .line 1394
    const-string v7, "\u7b2c"

    invoke-virtual {p1, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 1395
    .local v2, "index":I
    const-string v7, "\u9996"

    invoke-virtual {p1, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 1396
    .local v3, "index2":I
    add-int/lit8 v7, v2, 0x1

    invoke-virtual {p1, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 1397
    .local v6, "strList":Ljava/lang/String;
    const-string v7, "TxzReg"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "strList==="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1398
    iget-object v7, p0, Lcom/ts/main/txz/TxzReg$7;->this$0:Lcom/ts/main/txz/TxzReg;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v7, Lcom/ts/main/txz/TxzReg;->nIndex:I

    .line 1399
    iget-object v7, p0, Lcom/ts/main/txz/TxzReg$7;->this$0:Lcom/ts/main/txz/TxzReg;

    iget v7, v7, Lcom/ts/main/txz/TxzReg;->nIndex:I

    if-lez v7, :cond_2

    iget-object v7, p0, Lcom/ts/main/txz/TxzReg$7;->this$0:Lcom/ts/main/txz/TxzReg;

    iget v7, v7, Lcom/ts/main/txz/TxzReg;->nIndex:I

    const/16 v8, 0x1e

    if-gt v7, v8, :cond_2

    .line 1401
    invoke-static {}, Lcom/txznet/sdk/TXZResourceManager;->getInstance()Lcom/txznet/sdk/TXZResourceManager;

    move-result-object v7

    .line 1402
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "\u5c06\u4e3a\u60a8\u64ad\u653e\u7b2c"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/ts/main/txz/TxzReg$7;->this$0:Lcom/ts/main/txz/TxzReg;

    iget v9, v9, Lcom/ts/main/txz/TxzReg;->nIndex:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\u9996"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lcom/ts/main/txz/TxzReg$7$31;

    invoke-direct {v9, p0}, Lcom/ts/main/txz/TxzReg$7$31;-><init>(Lcom/ts/main/txz/TxzReg$7;)V

    .line 1401
    invoke-virtual {v7, v8, v11, v9}, Lcom/txznet/sdk/TXZResourceManager;->speakTextOnRecordWin(Ljava/lang/String;ZLjava/lang/Runnable;)V

    goto/16 :goto_2

    .line 1419
    .end local v2    # "index":I
    .end local v3    # "index2":I
    .end local v6    # "strList":Ljava/lang/String;
    :cond_23
    const-string v7, "OPEN_FM_FREQ#"

    invoke-virtual {p2, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_25

    .line 1420
    const-string v7, "OPEN_FM_FREQ#"

    .line 1421
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    .line 1420
    invoke-virtual {p2, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 1422
    .local v5, "strHz":Ljava/lang/String;
    const/high16 v1, 0x42af0000    # 87.5f

    .line 1423
    .local v1, "hz":F
    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    .line 1424
    invoke-static {}, Lcom/yyw/ts70xhw/Iop;->GetWorkMode()I

    move-result v7

    if-eq v7, v11, :cond_24

    .line 1425
    const/4 v7, 0x2

    invoke-static {v7, v10}, Lcom/ts/main/common/WinShow;->GotoWin(II)V

    .line 1427
    :cond_24
    const/high16 v7, 0x42c80000    # 100.0f

    mul-float/2addr v7, v1

    float-to-int v4, v7

    .line 1428
    .local v4, "nFm":I
    const-string v7, "TxzReg"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "ACTION_RECOGNIZE_CMD nFm =="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1429
    invoke-static {v10, v4}, Lcom/yyw/ts70xhw/Radio;->TuneBandFq(II)I

    goto/16 :goto_2

    .line 1432
    .end local v1    # "hz":F
    .end local v4    # "nFm":I
    .end local v5    # "strHz":Ljava/lang/String;
    :cond_25
    const-string v7, "OPEN_FM_FREQ"

    invoke-virtual {p2, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_29

    .line 1433
    const-string v7, "M"

    invoke-virtual {p1, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 1434
    .restart local v2    # "index":I
    if-ne v2, v12, :cond_26

    .line 1435
    const-string v7, "\u9891"

    invoke-virtual {p1, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 1437
    :cond_26
    add-int/lit8 v7, v2, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {p1, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 1438
    .restart local v5    # "strHz":Ljava/lang/String;
    const-string v7, "\u70b9"

    const-string v8, "."

    invoke-virtual {v5, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 1439
    const/high16 v1, 0x42af0000    # 87.5f

    .line 1441
    .restart local v1    # "hz":F
    :try_start_0
    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1445
    :goto_3
    float-to-double v7, v1

    const-wide v9, 0x4055e00000000000L    # 87.5

    cmpg-double v7, v7, v9

    if-gez v7, :cond_27

    .line 1446
    const/high16 v1, 0x42af0000    # 87.5f

    .line 1448
    :cond_27
    const/high16 v7, 0x42d80000    # 108.0f

    cmpl-float v7, v1, v7

    if-lez v7, :cond_28

    .line 1449
    const/high16 v1, 0x42d80000    # 108.0f

    .line 1451
    :cond_28
    iget-object v7, p0, Lcom/ts/main/txz/TxzReg$7;->this$0:Lcom/ts/main/txz/TxzReg;

    iput v1, v7, Lcom/ts/main/txz/TxzReg;->fhz:F

    .line 1453
    invoke-static {}, Lcom/txznet/sdk/TXZResourceManager;->getInstance()Lcom/txznet/sdk/TXZResourceManager;

    move-result-object v7

    .line 1454
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "\u5c06\u4e3a\u60a8\u8c03\u9891\u5230FM"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lcom/ts/main/txz/TxzReg$7$32;

    invoke-direct {v9, p0}, Lcom/ts/main/txz/TxzReg$7$32;-><init>(Lcom/ts/main/txz/TxzReg$7;)V

    .line 1453
    invoke-virtual {v7, v8, v11, v9}, Lcom/txznet/sdk/TXZResourceManager;->speakTextOnRecordWin(Ljava/lang/String;ZLjava/lang/Runnable;)V

    .line 1469
    const-string v7, "TxzReg"

    .line 1470
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "OPEN_FM_FREQ==="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1471
    const-string v9, "OPEN_FM_FREQ#"

    .line 1472
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    .line 1471
    invoke-virtual {p2, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1472
    const-string v9, "  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1470
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1469
    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1442
    :catch_0
    move-exception v0

    .line 1443
    .local v0, "e":Ljava/lang/Exception;
    const-string v7, "TxzReg"

    const-string v8, "parseFloat error!"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1475
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "hz":F
    .end local v2    # "index":I
    .end local v5    # "strHz":Ljava/lang/String;
    :cond_29
    const-string v7, "OPEN_AM_FREQ"

    invoke-virtual {p2, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1476
    const-string v7, "M"

    invoke-virtual {p1, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 1477
    .restart local v2    # "index":I
    if-ne v2, v12, :cond_2a

    .line 1478
    const-string v7, "\u5e45"

    invoke-virtual {p1, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 1480
    :cond_2a
    add-int/lit8 v7, v2, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {p1, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 1481
    .restart local v5    # "strHz":Ljava/lang/String;
    const/16 v1, 0x20a

    .line 1483
    .local v1, "hz":I
    :try_start_1
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    .line 1487
    :goto_4
    const/16 v7, 0x20a

    if-ge v1, v7, :cond_2b

    .line 1488
    const/16 v1, 0x20a

    .line 1490
    :cond_2b
    const/16 v7, 0x64b

    if-le v1, v7, :cond_2c

    .line 1491
    const/16 v1, 0x64b

    .line 1493
    :cond_2c
    iget-object v7, p0, Lcom/ts/main/txz/TxzReg$7;->this$0:Lcom/ts/main/txz/TxzReg;

    iput v1, v7, Lcom/ts/main/txz/TxzReg;->mHz:I

    .line 1494
    invoke-static {}, Lcom/txznet/sdk/TXZResourceManager;->getInstance()Lcom/txznet/sdk/TXZResourceManager;

    move-result-object v7

    .line 1495
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "\u5c06\u4e3a\u60a8\u8c03\u5e45\u5230AM"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lcom/ts/main/txz/TxzReg$7$33;

    invoke-direct {v9, p0}, Lcom/ts/main/txz/TxzReg$7$33;-><init>(Lcom/ts/main/txz/TxzReg$7;)V

    .line 1494
    invoke-virtual {v7, v8, v11, v9}, Lcom/txznet/sdk/TXZResourceManager;->speakTextOnRecordWin(Ljava/lang/String;ZLjava/lang/Runnable;)V

    .line 1503
    const-string v7, "TxzReg"

    .line 1504
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "OPEN_AM_FREQ==="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1505
    const-string v9, "OPEN_AM_FREQ#"

    .line 1506
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    .line 1505
    invoke-virtual {p2, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1506
    const-string v9, "  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1504
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1503
    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1484
    :catch_1
    move-exception v0

    .line 1485
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v7, "TxzReg"

    const-string v8, "parseFloat error!"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method
