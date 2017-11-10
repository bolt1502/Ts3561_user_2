.class public Lcom/ts/main/common/MainUI$easyConnectRecevie;
.super Landroid/content/BroadcastReceiver;
.source "MainUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ts/main/common/MainUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "easyConnectRecevie"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ts/main/common/MainUI;


# direct methods
.method public constructor <init>(Lcom/ts/main/common/MainUI;)V
    .locals 0

    .prologue
    .line 1867
    iput-object p1, p0, Lcom/ts/main/common/MainUI$easyConnectRecevie;->this$0:Lcom/ts/main/common/MainUI;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 31
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1872
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v12

    .line 1873
    .local v12, "action":Ljava/lang/String;
    const-string v28, "txz_get_weather_data"

    move-object/from16 v0, v28

    invoke-virtual {v0, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_0

    .line 1874
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v28

    const-string v29, "City"

    invoke-virtual/range {v28 .. v29}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1875
    .local v3, "City":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 1876
    invoke-static {}, Lcom/ts/main/txz/TxzReg;->GetInstance()Lcom/ts/main/txz/TxzReg;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Lcom/ts/main/txz/TxzReg;->GetWeatherData(Ljava/lang/String;)V

    .line 1879
    .end local v3    # "City":Ljava/lang/String;
    :cond_0
    const-string v28, "com.glsx.ddbox.action.VOICE"

    move-object/from16 v0, v28

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_1

    .line 1881
    invoke-static {}, Lcom/ts/main/txz/TxzReg;->GetInstance()Lcom/ts/main/txz/TxzReg;

    move-result-object v28

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Lcom/ts/main/txz/TxzReg;->TxzStartMic(Ljava/lang/String;)V

    .line 1883
    :cond_1
    const-string v28, "net.easyconn.bt.checkstatus"

    move-object/from16 v0, v28

    invoke-virtual {v0, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_4

    .line 1885
    invoke-static {}, Lcom/ts/bt/BtExe;->getBtInstance()Lcom/ts/bt/BtExe;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/ts/bt/BtExe;->isConnected()Z

    move-result v28

    if-eqz v28, :cond_3

    .line 1888
    const-string v28, "net.easyconn.bt.connected"

    invoke-static/range {v28 .. v28}, Lcom/ts/main/common/MainSet;->SendIntent(Ljava/lang/String;)V

    .line 2671
    :cond_2
    :goto_0
    return-void

    .line 1890
    :cond_3
    new-instance v28, Ljava/lang/StringBuilder;

    const-string v29, "net.easyconn.bt.opened@name="

    invoke-direct/range {v28 .. v29}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1891
    invoke-static {}, Lcom/ts/bt/BtExe;->getBtInstance()Lcom/ts/bt/BtExe;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcom/ts/bt/BtExe;->getDevName()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "@pin="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    .line 1892
    invoke-static {}, Lcom/ts/bt/BtExe;->getBtInstance()Lcom/ts/bt/BtExe;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcom/ts/bt/BtExe;->getDevPin()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    .line 1890
    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1894
    .local v5, "SendStr":Ljava/lang/String;
    invoke-static {v5}, Lcom/ts/main/common/MainSet;->SendIntent(Ljava/lang/String;)V

    goto :goto_0

    .line 1896
    .end local v5    # "SendStr":Ljava/lang/String;
    :cond_4
    const-string v28, "net.easyconn.a2dp.acquire"

    move-object/from16 v0, v28

    invoke-virtual {v0, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_5

    .line 1897
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/main/common/MainUI$easyConnectRecevie;->this$0:Lcom/ts/main/common/MainUI;

    move-object/from16 v28, v0

    # getter for: Lcom/ts/main/common/MainUI;->mEvc:Lcom/ts/MainUI/Evc;
    invoke-static/range {v28 .. v28}, Lcom/ts/main/common/MainUI;->access$4(Lcom/ts/main/common/MainUI;)Lcom/ts/MainUI/Evc;

    move-result-object v28

    const/16 v29, 0x5

    invoke-virtual/range {v28 .. v29}, Lcom/ts/MainUI/Evc;->evol_workmode_set(I)V

    goto :goto_0

    .line 1900
    :cond_5
    const-string v28, "net.easyconn.a2dp.release"

    move-object/from16 v0, v28

    invoke-virtual {v0, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v28

    if-nez v28, :cond_2

    .line 1903
    const-string v28, "net.easyconn.app.quit"

    move-object/from16 v0, v28

    invoke-virtual {v0, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v28

    if-nez v28, :cond_2

    .line 1907
    const-string v28, "com.globalconstant.BROADCAST_register_status"

    move-object/from16 v0, v28

    invoke-virtual {v0, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_6

    .line 1908
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v28

    const-string v29, "register_status"

    invoke-virtual/range {v28 .. v29}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v26

    .line 1909
    .local v26, "strStatus":I
    const-string v28, "MainUI"

    new-instance v29, Ljava/lang/StringBuilder;

    const-string v30, "register_status=="

    invoke-direct/range {v29 .. v30}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v29

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1910
    const/16 v28, 0x1

    move/from16 v0, v26

    move/from16 v1, v28

    if-eq v0, v1, :cond_2

    .line 1914
    if-eqz v26, :cond_2

    goto/16 :goto_0

    .line 1923
    .end local v26    # "strStatus":I
    :cond_6
    const-string v28, "com.globalconstant.BROADCAST_SEND_CMD"

    move-object/from16 v0, v28

    invoke-virtual {v0, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_53

    .line 1924
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v28

    const-string v29, "domain"

    invoke-virtual/range {v28 .. v29}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 1925
    .local v25, "strDomin":Ljava/lang/String;
    const-string v28, "MainUI"

    new-instance v29, Ljava/lang/StringBuilder;

    const-string v30, "ACTION_RECOGNIZE_CMD=="

    invoke-direct/range {v29 .. v30}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v29

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1926
    if-eqz v25, :cond_2

    .line 1931
    const-string v28, "music"

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_c

    .line 1933
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v28

    const-string v29, "action"

    invoke-virtual/range {v28 .. v29}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1934
    .local v9, "Straction":Ljava/lang/String;
    const-string v28, "MainUI"

    new-instance v29, Ljava/lang/StringBuilder;

    const-string v30, "ACTION_RECOGNIZE_CMD=="

    invoke-direct/range {v29 .. v30}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v29

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1935
    const-string v28, "play"

    move-object/from16 v0, v28

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v28

    if-nez v28, :cond_2

    .line 1939
    const-string v28, "open"

    move-object/from16 v0, v28

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_7

    .line 1941
    const-string v28, "com.ts.dvdplayer"

    const-string v29, "com.ts.dvdplayer.SDActivity"

    invoke-static/range {v28 .. v29}, Lcom/ts/main/common/WinShow;->show(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1943
    :cond_7
    const-string v28, "random"

    move-object/from16 v0, v28

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_8

    .line 1945
    const/16 v28, 0x5a

    invoke-static/range {v28 .. v28}, Lcom/yyw/ts70xhw/Mcu;->SetCkey(I)I

    goto/16 :goto_0

    .line 1947
    :cond_8
    const-string v28, "next"

    move-object/from16 v0, v28

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_9

    .line 1949
    const/16 v28, 0x2c

    invoke-static/range {v28 .. v28}, Lcom/yyw/ts70xhw/Mcu;->SetCkey(I)I

    goto/16 :goto_0

    .line 1951
    :cond_9
    const-string v28, "prev"

    move-object/from16 v0, v28

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_a

    .line 1953
    const/16 v28, 0x2d

    invoke-static/range {v28 .. v28}, Lcom/yyw/ts70xhw/Mcu;->SetCkey(I)I

    goto/16 :goto_0

    .line 1955
    :cond_a
    const-string v28, "resume"

    move-object/from16 v0, v28

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_b

    .line 1957
    const/16 v28, 0x5a

    invoke-static/range {v28 .. v28}, Lcom/yyw/ts70xhw/Mcu;->SetCkey(I)I

    goto/16 :goto_0

    .line 1959
    :cond_b
    const-string v28, "pause"

    move-object/from16 v0, v28

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_2

    .line 1961
    const/16 v28, 0x5b

    invoke-static/range {v28 .. v28}, Lcom/yyw/ts70xhw/Mcu;->SetCkey(I)I

    goto/16 :goto_0

    .line 1966
    .end local v9    # "Straction":Ljava/lang/String;
    :cond_c
    const-string v28, "app"

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_d

    .line 1968
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v28

    const-string v29, "action"

    invoke-virtual/range {v28 .. v29}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1969
    .restart local v9    # "Straction":Ljava/lang/String;
    const-string v28, "open"

    move-object/from16 v0, v28

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_2

    .line 1971
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v28

    const-string v29, "pck"

    invoke-virtual/range {v28 .. v29}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 1972
    .local v24, "pckName":Ljava/lang/String;
    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v28

    if-nez v28, :cond_2

    .line 1974
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/main/common/MainUI$easyConnectRecevie;->this$0:Lcom/ts/main/common/MainUI;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/ts/main/common/MainUI;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v19

    .line 1975
    .local v19, "it":Landroid/content/Intent;
    if-eqz v19, :cond_2

    .line 1977
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/main/common/MainUI$easyConnectRecevie;->this$0:Lcom/ts/main/common/MainUI;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/ts/main/common/MainUI;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1985
    .end local v9    # "Straction":Ljava/lang/String;
    .end local v19    # "it":Landroid/content/Intent;
    .end local v24    # "pckName":Ljava/lang/String;
    :cond_d
    const-string v28, "volume"

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_13

    .line 1987
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v28

    const-string v29, "action"

    invoke-virtual/range {v28 .. v29}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1988
    .restart local v9    # "Straction":Ljava/lang/String;
    const-string v28, "MainUI"

    new-instance v29, Ljava/lang/StringBuilder;

    const-string v30, "volume =="

    invoke-direct/range {v29 .. v30}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v29

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1989
    const-string v28, "up"

    move-object/from16 v0, v28

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_e

    .line 1991
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_1
    const/16 v28, 0x3

    move/from16 v0, v18

    move/from16 v1, v28

    if-ge v0, v1, :cond_2

    .line 1993
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/main/common/MainUI$easyConnectRecevie;->this$0:Lcom/ts/main/common/MainUI;

    move-object/from16 v28, v0

    # getter for: Lcom/ts/main/common/MainUI;->mEvc:Lcom/ts/MainUI/Evc;
    invoke-static/range {v28 .. v28}, Lcom/ts/main/common/MainUI;->access$4(Lcom/ts/main/common/MainUI;)Lcom/ts/MainUI/Evc;

    move-result-object v28

    const/16 v29, 0x1

    invoke-virtual/range {v28 .. v29}, Lcom/ts/MainUI/Evc;->Evol_vol_tune(I)V

    .line 1991
    add-int/lit8 v18, v18, 0x1

    goto :goto_1

    .line 1997
    .end local v18    # "i":I
    :cond_e
    const-string v28, "down"

    move-object/from16 v0, v28

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_f

    .line 1999
    const/16 v18, 0x0

    .restart local v18    # "i":I
    :goto_2
    const/16 v28, 0x3

    move/from16 v0, v18

    move/from16 v1, v28

    if-ge v0, v1, :cond_2

    .line 2001
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/main/common/MainUI$easyConnectRecevie;->this$0:Lcom/ts/main/common/MainUI;

    move-object/from16 v28, v0

    # getter for: Lcom/ts/main/common/MainUI;->mEvc:Lcom/ts/MainUI/Evc;
    invoke-static/range {v28 .. v28}, Lcom/ts/main/common/MainUI;->access$4(Lcom/ts/main/common/MainUI;)Lcom/ts/MainUI/Evc;

    move-result-object v28

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Lcom/ts/MainUI/Evc;->Evol_vol_tune(I)V

    .line 1999
    add-int/lit8 v18, v18, 0x1

    goto :goto_2

    .line 2005
    .end local v18    # "i":I
    :cond_f
    const-string v28, "max"

    move-object/from16 v0, v28

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_10

    .line 2007
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/main/common/MainUI$easyConnectRecevie;->this$0:Lcom/ts/main/common/MainUI;

    move-object/from16 v28, v0

    # getter for: Lcom/ts/main/common/MainUI;->mEvc:Lcom/ts/MainUI/Evc;
    invoke-static/range {v28 .. v28}, Lcom/ts/main/common/MainUI;->access$4(Lcom/ts/main/common/MainUI;)Lcom/ts/MainUI/Evc;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/main/common/MainUI$easyConnectRecevie;->this$0:Lcom/ts/main/common/MainUI;

    move-object/from16 v29, v0

    # getter for: Lcom/ts/main/common/MainUI;->mEvc:Lcom/ts/MainUI/Evc;
    invoke-static/range {v29 .. v29}, Lcom/ts/main/common/MainUI;->access$4(Lcom/ts/main/common/MainUI;)Lcom/ts/MainUI/Evc;

    move-result-object v29

    move-object/from16 v0, v29

    iget v0, v0, Lcom/ts/MainUI/Evc;->volume_max:I

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Lcom/ts/MainUI/Evc;->evol_vol_set(I)V

    goto/16 :goto_0

    .line 2009
    :cond_10
    const-string v28, "min"

    move-object/from16 v0, v28

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_11

    .line 2011
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/main/common/MainUI$easyConnectRecevie;->this$0:Lcom/ts/main/common/MainUI;

    move-object/from16 v28, v0

    # getter for: Lcom/ts/main/common/MainUI;->mEvc:Lcom/ts/MainUI/Evc;
    invoke-static/range {v28 .. v28}, Lcom/ts/main/common/MainUI;->access$4(Lcom/ts/main/common/MainUI;)Lcom/ts/MainUI/Evc;

    move-result-object v28

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Lcom/ts/MainUI/Evc;->evol_vol_set(I)V

    goto/16 :goto_0

    .line 2013
    :cond_11
    const-string v28, "mute_on"

    move-object/from16 v0, v28

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_12

    .line 2015
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/main/common/MainUI$easyConnectRecevie;->this$0:Lcom/ts/main/common/MainUI;

    move-object/from16 v28, v0

    # getter for: Lcom/ts/main/common/MainUI;->mEvc:Lcom/ts/MainUI/Evc;
    invoke-static/range {v28 .. v28}, Lcom/ts/main/common/MainUI;->access$4(Lcom/ts/main/common/MainUI;)Lcom/ts/MainUI/Evc;

    move-result-object v28

    const/16 v29, 0x1

    invoke-virtual/range {v28 .. v29}, Lcom/ts/MainUI/Evc;->evol_mut_set(I)V

    goto/16 :goto_0

    .line 2017
    :cond_12
    const-string v28, "mute_off"

    move-object/from16 v0, v28

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_2

    .line 2019
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/main/common/MainUI$easyConnectRecevie;->this$0:Lcom/ts/main/common/MainUI;

    move-object/from16 v28, v0

    # getter for: Lcom/ts/main/common/MainUI;->mEvc:Lcom/ts/MainUI/Evc;
    invoke-static/range {v28 .. v28}, Lcom/ts/main/common/MainUI;->access$4(Lcom/ts/main/common/MainUI;)Lcom/ts/MainUI/Evc;

    move-result-object v28

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Lcom/ts/MainUI/Evc;->evol_mut_set(I)V

    goto/16 :goto_0

    .line 2022
    .end local v9    # "Straction":Ljava/lang/String;
    :cond_13
    const-string v28, "radio"

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_1a

    .line 2024
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v28

    const-string v29, "action"

    invoke-virtual/range {v28 .. v29}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 2025
    .restart local v9    # "Straction":Ljava/lang/String;
    const-string v28, "radio"

    move-object/from16 v0, v28

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v28

    if-nez v28, :cond_14

    .line 2029
    const-string v28, "forword"

    move-object/from16 v0, v28

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_16

    .line 2031
    const/16 v28, 0x1

    invoke-static/range {v28 .. v28}, Lcom/yyw/ts70xhw/Radio;->TuneSearch(I)I

    .line 2047
    :cond_14
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v28

    const-string v29, "channelStyle"

    invoke-virtual/range {v28 .. v29}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2048
    .local v6, "StrBand":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v28

    const-string v29, "channelValue"

    invoke-virtual/range {v28 .. v29}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2049
    .local v8, "StrValue":Ljava/lang/String;
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v28

    if-lez v28, :cond_2

    if-eqz v8, :cond_2

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v28

    if-lez v28, :cond_2

    .line 2051
    invoke-static {}, Lcom/yyw/ts70xhw/Iop;->GetWorkMode()I

    move-result v28

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_15

    .line 2053
    const/16 v28, 0x2

    const/16 v29, 0x0

    invoke-static/range {v28 .. v29}, Lcom/ts/main/common/WinShow;->GotoWin(II)V

    .line 2056
    :cond_15
    const-string v28, "FM"

    move-object/from16 v0, v28

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_19

    .line 2059
    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v16

    .line 2060
    .local v16, "fm":F
    const-string v28, "MainUI"

    new-instance v29, Ljava/lang/StringBuilder;

    const-string v30, "ACTION_RECOGNIZE_CMD fm =="

    invoke-direct/range {v29 .. v30}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v29

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2061
    const/high16 v28, 0x42c80000    # 100.0f

    mul-float v28, v28, v16

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v22, v0

    .line 2062
    .local v22, "nFm":I
    const-string v28, "MainUI"

    new-instance v29, Ljava/lang/StringBuilder;

    const-string v30, "ACTION_RECOGNIZE_CMD nFm =="

    invoke-direct/range {v29 .. v30}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v29

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2064
    const/16 v28, 0x0

    move/from16 v0, v28

    move/from16 v1, v22

    invoke-static {v0, v1}, Lcom/yyw/ts70xhw/Radio;->TuneBandFq(II)I

    goto/16 :goto_0

    .line 2033
    .end local v6    # "StrBand":Ljava/lang/String;
    .end local v8    # "StrValue":Ljava/lang/String;
    .end local v16    # "fm":F
    .end local v22    # "nFm":I
    :cond_16
    const-string v28, "back"

    move-object/from16 v0, v28

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_17

    .line 2035
    const/16 v28, 0x0

    invoke-static/range {v28 .. v28}, Lcom/yyw/ts70xhw/Radio;->TuneSearch(I)I

    goto/16 :goto_3

    .line 2037
    :cond_17
    const-string v28, "prev"

    move-object/from16 v0, v28

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_18

    .line 2039
    invoke-static {}, Lcom/yyw/ts70xhw/Radio;->TuneMprev()I

    goto/16 :goto_3

    .line 2041
    :cond_18
    const-string v28, "next"

    move-object/from16 v0, v28

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_14

    .line 2043
    invoke-static {}, Lcom/yyw/ts70xhw/Radio;->TuneMnext()I

    goto/16 :goto_3

    .line 2066
    .restart local v6    # "StrBand":Ljava/lang/String;
    .restart local v8    # "StrValue":Ljava/lang/String;
    :cond_19
    const-string v28, "AM"

    move-object/from16 v0, v28

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_2

    .line 2068
    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v13

    .line 2069
    .local v13, "am":F
    const-string v28, "MainUI"

    new-instance v29, Ljava/lang/StringBuilder;

    const-string v30, "ACTION_RECOGNIZE_CMD fm =="

    invoke-direct/range {v29 .. v30}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v29

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2070
    float-to-int v0, v13

    move/from16 v21, v0

    .line 2071
    .local v21, "nAm":I
    const-string v28, "MainUI"

    new-instance v29, Ljava/lang/StringBuilder;

    const-string v30, "ACTION_RECOGNIZE_CMD nFm =="

    invoke-direct/range {v29 .. v30}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v29

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2073
    const/16 v28, 0x4

    move/from16 v0, v28

    move/from16 v1, v21

    invoke-static {v0, v1}, Lcom/yyw/ts70xhw/Radio;->TuneBandFq(II)I

    goto/16 :goto_0

    .line 2078
    .end local v6    # "StrBand":Ljava/lang/String;
    .end local v8    # "StrValue":Ljava/lang/String;
    .end local v9    # "Straction":Ljava/lang/String;
    .end local v13    # "am":F
    .end local v21    # "nAm":I
    :cond_1a
    const-string v28, "navigation"

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_1d

    .line 2080
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v28

    const-string v29, "action"

    invoke-virtual/range {v28 .. v29}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 2081
    .restart local v9    # "Straction":Ljava/lang/String;
    const-string v28, "MainUI"

    new-instance v29, Ljava/lang/StringBuilder;

    const-string v30, "ACTION_RECOGNIZE_CMD action=="

    invoke-direct/range {v29 .. v30}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v29

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2083
    const-string v28, "open"

    move-object/from16 v0, v28

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_1b

    .line 2085
    const/16 v28, 0x1

    const/16 v29, 0x0

    invoke-static/range {v28 .. v29}, Lcom/ts/main/common/WinShow;->GotoWin(II)V

    goto/16 :goto_0

    .line 2087
    :cond_1b
    const-string v28, "close"

    move-object/from16 v0, v28

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v28

    if-nez v28, :cond_2

    .line 2094
    const-string v28, "getNaviAppPck"

    move-object/from16 v0, v28

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_2

    .line 2096
    const/16 v28, 0x80

    move/from16 v0, v28

    new-array v14, v0, [B

    .line 2097
    .local v14, "byteNavipath":[B
    invoke-static {v14}, Lcom/yyw/ts70xhw/StSet;->GetNaviPack([B)I

    .line 2098
    invoke-static {v14}, Lcom/ts/can/CanIF;->byte2String([B)Ljava/lang/String;

    move-result-object v4

    .line 2099
    .local v4, "NaviPath":Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 2100
    .local v2, "Aintent":Landroid/content/Intent;
    const-string v28, "com.globalconstant.BROADCAST_CAR_SEND_CMD"

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2101
    const-string v28, "domain"

    const-string v29, "navigation"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2102
    const-string v28, "action"

    const-string v29, "sendNaviAppPck"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2104
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v28

    if-eqz v28, :cond_1c

    .line 2107
    const-string v28, "naviAppPck"

    const-string v29, "com.autonavi.amapauto"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2115
    :goto_4
    const-string v28, "MainUI"

    new-instance v29, Ljava/lang/StringBuilder;

    const-string v30, "ACTION_RECOGNIZE_CMD NaviPath=="

    invoke-direct/range {v29 .. v30}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2116
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/main/common/MainUI$easyConnectRecevie;->this$0:Lcom/ts/main/common/MainUI;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Lcom/ts/main/common/MainUI;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 2111
    :cond_1c
    const-string v28, "naviAppPck"

    move-object/from16 v0, v28

    invoke-virtual {v2, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_4

    .line 2120
    .end local v2    # "Aintent":Landroid/content/Intent;
    .end local v4    # "NaviPath":Ljava/lang/String;
    .end local v9    # "Straction":Ljava/lang/String;
    .end local v14    # "byteNavipath":[B
    :cond_1d
    const-string v28, "device"

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_49

    .line 2122
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v28

    const-string v29, "device_name"

    invoke-virtual/range {v28 .. v29}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2123
    .local v7, "StrDevName":Ljava/lang/String;
    const-string v28, "MainUI"

    new-instance v29, Ljava/lang/StringBuilder;

    const-string v30, "ACTION_RECOGNIZE_CMD device_name=="

    invoke-direct/range {v29 .. v30}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v29

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2125
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v28

    const-string v29, "action"

    invoke-virtual/range {v28 .. v29}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 2126
    .restart local v9    # "Straction":Ljava/lang/String;
    const-string v28, "MainUI"

    new-instance v29, Ljava/lang/StringBuilder;

    const-string v30, "ACTION_RECOGNIZE_CMD action =="

    invoke-direct/range {v29 .. v30}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v29

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2130
    const-string v28, "\u5149\u76d8"

    move-object/from16 v0, v28

    invoke-virtual {v7, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_1f

    .line 2132
    const-string v28, "open"

    move-object/from16 v0, v28

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_1e

    .line 2134
    const/16 v28, 0x3

    const/16 v29, 0x0

    invoke-static/range {v28 .. v29}, Lcom/ts/main/common/WinShow;->GotoWin(II)V

    goto/16 :goto_0

    .line 2136
    :cond_1e
    const-string v28, "close"

    move-object/from16 v0, v28

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 2141
    :cond_1f
    const-string v28, "\u84dd\u7259"

    move-object/from16 v0, v28

    invoke-virtual {v7, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_21

    .line 2143
    const-string v28, "open"

    move-object/from16 v0, v28

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_20

    .line 2145
    const/16 v28, 0x1d

    invoke-static/range {v28 .. v28}, Lcom/yyw/ts70xhw/Mcu;->SetCkey(I)I

    goto/16 :goto_0

    .line 2147
    :cond_20
    const-string v28, "close"

    move-object/from16 v0, v28

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 2152
    :cond_21
    const-string v28, "\u6536\u97f3\u673a"

    move-object/from16 v0, v28

    invoke-virtual {v7, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_22

    .line 2154
    const-string v28, "open"

    move-object/from16 v0, v28

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_2

    .line 2156
    const/16 v28, 0x2

    const/16 v29, 0x0

    invoke-static/range {v28 .. v29}, Lcom/ts/main/common/WinShow;->GotoWin(II)V

    goto/16 :goto_0

    .line 2159
    :cond_22
    const-string v28, "\u89c6\u9891"

    move-object/from16 v0, v28

    invoke-virtual {v7, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_23

    .line 2161
    const-string v28, "open"

    move-object/from16 v0, v28

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_2

    .line 2163
    invoke-static {}, Lcom/ts/main/common/WinShow;->ShowVideoWin()V

    goto/16 :goto_0

    .line 2167
    :cond_23
    const-string v28, "IPOD"

    move-object/from16 v0, v28

    invoke-virtual {v7, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_24

    .line 2169
    const-string v28, "open"

    move-object/from16 v0, v28

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_2

    .line 2171
    const/16 v28, 0xd

    const/16 v29, 0x0

    invoke-static/range {v28 .. v29}, Lcom/ts/main/common/WinShow;->GotoWin(II)V

    goto/16 :goto_0

    .line 2174
    :cond_24
    const-string v28, "bluetooth"

    move-object/from16 v0, v28

    invoke-virtual {v7, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_26

    .line 2176
    const-string v28, "open"

    move-object/from16 v0, v28

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_25

    .line 2178
    const/16 v28, 0x7

    const/16 v29, 0x4

    invoke-static/range {v28 .. v29}, Lcom/ts/main/common/WinShow;->GotoWin(II)V

    goto/16 :goto_0

    .line 2180
    :cond_25
    const-string v28, "close"

    move-object/from16 v0, v28

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_2

    .line 2181
    invoke-static {}, Lcom/yyw/ts70xhw/Iop;->GetWorkMode()I

    move-result v28

    const/16 v29, 0x5

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_2

    .line 2182
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/main/common/MainUI$easyConnectRecevie;->this$0:Lcom/ts/main/common/MainUI;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/ts/main/common/MainUI;->BackToLauncher()V

    .line 2183
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/main/common/MainUI$easyConnectRecevie;->this$0:Lcom/ts/main/common/MainUI;

    move-object/from16 v28, v0

    # getter for: Lcom/ts/main/common/MainUI;->mEvc:Lcom/ts/MainUI/Evc;
    invoke-static/range {v28 .. v28}, Lcom/ts/main/common/MainUI;->access$4(Lcom/ts/main/common/MainUI;)Lcom/ts/MainUI/Evc;

    move-result-object v28

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Lcom/ts/MainUI/Evc;->evol_workmode_set(I)V

    goto/16 :goto_0

    .line 2189
    :cond_26
    const-string v28, "phone"

    move-object/from16 v0, v28

    invoke-virtual {v7, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_28

    .line 2191
    const-string v28, "open"

    move-object/from16 v0, v28

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_27

    .line 2193
    const/16 v28, 0x7

    const/16 v29, 0x3

    invoke-static/range {v28 .. v29}, Lcom/ts/main/common/WinShow;->GotoWin(II)V

    goto/16 :goto_0

    .line 2195
    :cond_27
    const-string v28, "close"

    move-object/from16 v0, v28

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_2

    .line 2197
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/main/common/MainUI$easyConnectRecevie;->this$0:Lcom/ts/main/common/MainUI;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/ts/main/common/MainUI;->BackToLauncher()V

    goto/16 :goto_0

    .line 2201
    :cond_28
    const-string v28, "radio"

    move-object/from16 v0, v28

    invoke-virtual {v7, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_2a

    .line 2203
    const-string v28, "open"

    move-object/from16 v0, v28

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_29

    .line 2205
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/main/common/MainUI$easyConnectRecevie;->this$0:Lcom/ts/main/common/MainUI;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/main/common/MainUI$easyConnectRecevie;->this$0:Lcom/ts/main/common/MainUI;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/ts/main/common/MainUI;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    sget v30, Lcom/ts/MainUI/R$string;->txz_open_radio:I

    invoke-virtual/range {v29 .. v30}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v29

    const/16 v30, 0x0

    invoke-virtual/range {v28 .. v30}, Lcom/ts/main/common/MainUI;->Settts_info(Ljava/lang/String;Z)V

    .line 2207
    const/16 v28, 0x2

    const/16 v29, 0x0

    invoke-static/range {v28 .. v29}, Lcom/ts/main/common/WinShow;->GotoWin(II)V

    goto/16 :goto_0

    .line 2209
    :cond_29
    const-string v28, "close"

    move-object/from16 v0, v28

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_2

    .line 2210
    invoke-static {}, Lcom/yyw/ts70xhw/Iop;->GetWorkMode()I

    move-result v28

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_2

    .line 2211
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/main/common/MainUI$easyConnectRecevie;->this$0:Lcom/ts/main/common/MainUI;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/main/common/MainUI$easyConnectRecevie;->this$0:Lcom/ts/main/common/MainUI;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/ts/main/common/MainUI;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    sget v30, Lcom/ts/MainUI/R$string;->txz_close_radio:I

    invoke-virtual/range {v29 .. v30}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v29

    const/16 v30, 0x0

    invoke-virtual/range {v28 .. v30}, Lcom/ts/main/common/MainUI;->Settts_info(Ljava/lang/String;Z)V

    .line 2212
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/main/common/MainUI$easyConnectRecevie;->this$0:Lcom/ts/main/common/MainUI;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/ts/main/common/MainUI;->BackToLauncher()V

    .line 2213
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/main/common/MainUI$easyConnectRecevie;->this$0:Lcom/ts/main/common/MainUI;

    move-object/from16 v28, v0

    # getter for: Lcom/ts/main/common/MainUI;->mEvc:Lcom/ts/MainUI/Evc;
    invoke-static/range {v28 .. v28}, Lcom/ts/main/common/MainUI;->access$4(Lcom/ts/main/common/MainUI;)Lcom/ts/MainUI/Evc;

    move-result-object v28

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Lcom/ts/MainUI/Evc;->evol_workmode_set(I)V

    goto/16 :goto_0

    .line 2219
    :cond_2a
    const-string v28, "movie"

    move-object/from16 v0, v28

    invoke-virtual {v7, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_2c

    .line 2221
    const-string v28, "open"

    move-object/from16 v0, v28

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_2b

    .line 2223
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/main/common/MainUI$easyConnectRecevie;->this$0:Lcom/ts/main/common/MainUI;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/main/common/MainUI$easyConnectRecevie;->this$0:Lcom/ts/main/common/MainUI;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/ts/main/common/MainUI;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    sget v30, Lcom/ts/MainUI/R$string;->txz_open_video:I

    invoke-virtual/range {v29 .. v30}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v29

    const/16 v30, 0x0

    invoke-virtual/range {v28 .. v30}, Lcom/ts/main/common/MainUI;->Settts_info(Ljava/lang/String;Z)V

    .line 2224
    invoke-static {}, Lcom/ts/main/common/WinShow;->ShowVideoWin()V

    goto/16 :goto_0

    .line 2226
    :cond_2b
    const-string v28, "close"

    move-object/from16 v0, v28

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_2

    .line 2227
    invoke-static {}, Lcom/yyw/ts70xhw/Iop;->GetWorkMode()I

    move-result v28

    const/16 v29, 0x3

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_2

    .line 2228
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/main/common/MainUI$easyConnectRecevie;->this$0:Lcom/ts/main/common/MainUI;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/main/common/MainUI$easyConnectRecevie;->this$0:Lcom/ts/main/common/MainUI;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/ts/main/common/MainUI;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    sget v30, Lcom/ts/MainUI/R$string;->txz_close_video:I

    invoke-virtual/range {v29 .. v30}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v29

    const/16 v30, 0x0

    invoke-virtual/range {v28 .. v30}, Lcom/ts/main/common/MainUI;->Settts_info(Ljava/lang/String;Z)V

    .line 2229
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/main/common/MainUI$easyConnectRecevie;->this$0:Lcom/ts/main/common/MainUI;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/ts/main/common/MainUI;->BackToLauncher()V

    .line 2230
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/main/common/MainUI$easyConnectRecevie;->this$0:Lcom/ts/main/common/MainUI;

    move-object/from16 v28, v0

    # getter for: Lcom/ts/main/common/MainUI;->mEvc:Lcom/ts/MainUI/Evc;
    invoke-static/range {v28 .. v28}, Lcom/ts/main/common/MainUI;->access$4(Lcom/ts/main/common/MainUI;)Lcom/ts/MainUI/Evc;

    move-result-object v28

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Lcom/ts/MainUI/Evc;->evol_workmode_set(I)V

    goto/16 :goto_0

    .line 2236
    :cond_2c
    const-string v28, "music"

    move-object/from16 v0, v28

    invoke-virtual {v7, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_2e

    .line 2238
    const-string v28, "open"

    move-object/from16 v0, v28

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_2d

    .line 2240
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/main/common/MainUI$easyConnectRecevie;->this$0:Lcom/ts/main/common/MainUI;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/main/common/MainUI$easyConnectRecevie;->this$0:Lcom/ts/main/common/MainUI;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/ts/main/common/MainUI;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    sget v30, Lcom/ts/MainUI/R$string;->txz_open_music:I

    invoke-virtual/range {v29 .. v30}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v29

    const/16 v30, 0x0

    invoke-virtual/range {v28 .. v30}, Lcom/ts/main/common/MainUI;->Settts_info(Ljava/lang/String;Z)V

    .line 2241
    const-string v28, "com.ts.dvdplayer"

    const-string v29, "com.ts.dvdplayer.SDActivity"

    invoke-static/range {v28 .. v29}, Lcom/ts/main/common/WinShow;->show(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2243
    :cond_2d
    const-string v28, "close"

    move-object/from16 v0, v28

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_2

    .line 2244
    invoke-static {}, Lcom/yyw/ts70xhw/Iop;->GetWorkMode()I

    move-result v28

    const/16 v29, 0x4

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_2

    .line 2245
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/main/common/MainUI$easyConnectRecevie;->this$0:Lcom/ts/main/common/MainUI;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/main/common/MainUI$easyConnectRecevie;->this$0:Lcom/ts/main/common/MainUI;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/ts/main/common/MainUI;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    sget v30, Lcom/ts/MainUI/R$string;->txz_close_music:I

    invoke-virtual/range {v29 .. v30}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v29

    const/16 v30, 0x0

    invoke-virtual/range {v28 .. v30}, Lcom/ts/main/common/MainUI;->Settts_info(Ljava/lang/String;Z)V

    .line 2246
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/main/common/MainUI$easyConnectRecevie;->this$0:Lcom/ts/main/common/MainUI;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/ts/main/common/MainUI;->BackToLauncher()V

    .line 2247
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/main/common/MainUI$easyConnectRecevie;->this$0:Lcom/ts/main/common/MainUI;

    move-object/from16 v28, v0

    # getter for: Lcom/ts/main/common/MainUI;->mEvc:Lcom/ts/MainUI/Evc;
    invoke-static/range {v28 .. v28}, Lcom/ts/main/common/MainUI;->access$4(Lcom/ts/main/common/MainUI;)Lcom/ts/MainUI/Evc;

    move-result-object v28

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Lcom/ts/MainUI/Evc;->evol_workmode_set(I)V

    goto/16 :goto_0

    .line 2253
    :cond_2e
    const-string v28, "device_setting"

    move-object/from16 v0, v28

    invoke-virtual {v7, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_30

    .line 2255
    const-string v28, "open"

    move-object/from16 v0, v28

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_2f

    .line 2257
    const/16 v28, 0xb

    const/16 v29, 0x62

    invoke-static/range {v28 .. v29}, Lcom/ts/main/common/WinShow;->GotoWin(II)V

    goto/16 :goto_0

    .line 2259
    :cond_2f
    const-string v28, "close"

    move-object/from16 v0, v28

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_2

    .line 2260
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/main/common/MainUI$easyConnectRecevie;->this$0:Lcom/ts/main/common/MainUI;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/ts/main/common/MainUI;->BackToLauncher()V

    goto/16 :goto_0

    .line 2263
    :cond_30
    const-string v28, "avin"

    move-object/from16 v0, v28

    invoke-virtual {v7, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_32

    .line 2265
    const-string v28, "open"

    move-object/from16 v0, v28

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_31

    .line 2267
    const/16 v28, 0xa

    const/16 v29, 0x0

    invoke-static/range {v28 .. v29}, Lcom/ts/main/common/WinShow;->GotoWin(II)V

    goto/16 :goto_0

    .line 2269
    :cond_31
    const-string v28, "close"

    move-object/from16 v0, v28

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_2

    .line 2270
    invoke-static {}, Lcom/yyw/ts70xhw/Iop;->GetWorkMode()I

    move-result v28

    const/16 v29, 0x9

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_2

    .line 2271
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/main/common/MainUI$easyConnectRecevie;->this$0:Lcom/ts/main/common/MainUI;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/ts/main/common/MainUI;->BackToLauncher()V

    .line 2272
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/main/common/MainUI$easyConnectRecevie;->this$0:Lcom/ts/main/common/MainUI;

    move-object/from16 v28, v0

    # getter for: Lcom/ts/main/common/MainUI;->mEvc:Lcom/ts/MainUI/Evc;
    invoke-static/range {v28 .. v28}, Lcom/ts/main/common/MainUI;->access$4(Lcom/ts/main/common/MainUI;)Lcom/ts/MainUI/Evc;

    move-result-object v28

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Lcom/ts/MainUI/Evc;->evol_workmode_set(I)V

    goto/16 :goto_0

    .line 2277
    :cond_32
    const-string v28, "driving_record"

    move-object/from16 v0, v28

    invoke-virtual {v7, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_34

    .line 2279
    const-string v28, "open"

    move-object/from16 v0, v28

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_33

    .line 2281
    const-string v28, "com.ts.MainUI"

    const-string v29, "com.ts.main.dvr.DvrMainActivity"

    invoke-static/range {v28 .. v29}, Lcom/ts/main/common/WinShow;->show(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2283
    :cond_33
    const-string v28, "close"

    move-object/from16 v0, v28

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_2

    .line 2284
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/main/common/MainUI$easyConnectRecevie;->this$0:Lcom/ts/main/common/MainUI;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/ts/main/common/MainUI;->BackToLauncher()V

    goto/16 :goto_0

    .line 2288
    :cond_34
    const-string v28, "tpms"

    move-object/from16 v0, v28

    invoke-virtual {v7, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_36

    .line 2290
    const-string v28, "open"

    move-object/from16 v0, v28

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_35

    .line 2292
    const-string v28, "com.ts.MainUI"

    const-string v29, "com.ts.main.tpms.TPMSMainActivity"

    invoke-static/range {v28 .. v29}, Lcom/ts/main/common/WinShow;->show(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2294
    :cond_35
    const-string v28, "close"

    move-object/from16 v0, v28

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_2

    .line 2295
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/main/common/MainUI$easyConnectRecevie;->this$0:Lcom/ts/main/common/MainUI;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/ts/main/common/MainUI;->BackToLauncher()V

    goto/16 :goto_0

    .line 2299
    :cond_36
    const-string v28, "driving_assistance"

    move-object/from16 v0, v28

    invoke-virtual {v7, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_38

    .line 2301
    const/16 v28, 0x7f

    invoke-static/range {v28 .. v28}, Lcom/yyw/ts70xhw/FtSet;->IsIconExist(I)I

    move-result v28

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_2

    .line 2303
    const-string v28, "open"

    move-object/from16 v0, v28

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_37

    .line 2305
    const-string v28, "com.ts.MainUI"

    const-string v29, "com.ts.main.Media.ADASMainActivity"

    invoke-static/range {v28 .. v29}, Lcom/ts/main/common/WinShow;->show(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2307
    :cond_37
    const-string v28, "close"

    move-object/from16 v0, v28

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_2

    .line 2308
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/main/common/MainUI$easyConnectRecevie;->this$0:Lcom/ts/main/common/MainUI;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/ts/main/common/MainUI;->BackToLauncher()V

    goto/16 :goto_0

    .line 2314
    :cond_38
    const-string v28, "driving_message"

    move-object/from16 v0, v28

    invoke-virtual {v7, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_3a

    .line 2317
    const-string v28, "open"

    move-object/from16 v0, v28

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_39

    .line 2319
    const-string v28, "com.ts.MainUI"

    const-string v29, "com.ts.can.CanMainActivity"

    invoke-static/range {v28 .. v29}, Lcom/ts/main/common/WinShow;->show(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2321
    :cond_39
    const-string v28, "close"

    move-object/from16 v0, v28

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_2

    .line 2322
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/main/common/MainUI$easyConnectRecevie;->this$0:Lcom/ts/main/common/MainUI;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/ts/main/common/MainUI;->BackToLauncher()V

    goto/16 :goto_0

    .line 2328
    :cond_3a
    const-string v28, "dvd"

    move-object/from16 v0, v28

    invoke-virtual {v7, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_3d

    .line 2330
    const/16 v28, 0x2

    invoke-static/range {v28 .. v28}, Lcom/yyw/ts70xhw/FtSet;->IsIconExist(I)I

    move-result v28

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_3c

    .line 2332
    const-string v28, "open"

    move-object/from16 v0, v28

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_3b

    .line 2334
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/main/common/MainUI$easyConnectRecevie;->this$0:Lcom/ts/main/common/MainUI;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/main/common/MainUI$easyConnectRecevie;->this$0:Lcom/ts/main/common/MainUI;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/ts/main/common/MainUI;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    sget v30, Lcom/ts/MainUI/R$string;->txz_open_dvd:I

    invoke-virtual/range {v29 .. v30}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v29

    const/16 v30, 0x0

    invoke-virtual/range {v28 .. v30}, Lcom/ts/main/common/MainUI;->Settts_info(Ljava/lang/String;Z)V

    .line 2335
    const-string v28, "com.android.sdvdplayer"

    const-string v29, "com.android.sdvdplayer.SDVDPlayer"

    invoke-static/range {v28 .. v29}, Lcom/ts/main/common/WinShow;->show(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2337
    :cond_3b
    const-string v28, "close"

    move-object/from16 v0, v28

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_2

    .line 2339
    invoke-static {}, Lcom/yyw/ts70xhw/Iop;->GetWorkMode()I

    move-result v28

    const/16 v29, 0x2

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_2

    .line 2340
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/main/common/MainUI$easyConnectRecevie;->this$0:Lcom/ts/main/common/MainUI;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/main/common/MainUI$easyConnectRecevie;->this$0:Lcom/ts/main/common/MainUI;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/ts/main/common/MainUI;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    sget v30, Lcom/ts/MainUI/R$string;->txz_close_dvd:I

    invoke-virtual/range {v29 .. v30}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v29

    const/16 v30, 0x0

    invoke-virtual/range {v28 .. v30}, Lcom/ts/main/common/MainUI;->Settts_info(Ljava/lang/String;Z)V

    .line 2341
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/main/common/MainUI$easyConnectRecevie;->this$0:Lcom/ts/main/common/MainUI;

    move-object/from16 v28, v0

    # getter for: Lcom/ts/main/common/MainUI;->mEvc:Lcom/ts/MainUI/Evc;
    invoke-static/range {v28 .. v28}, Lcom/ts/main/common/MainUI;->access$4(Lcom/ts/main/common/MainUI;)Lcom/ts/MainUI/Evc;

    move-result-object v28

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Lcom/ts/MainUI/Evc;->evol_workmode_set(I)V

    .line 2342
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/main/common/MainUI$easyConnectRecevie;->this$0:Lcom/ts/main/common/MainUI;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/ts/main/common/MainUI;->BackToLauncher()V

    goto/16 :goto_0

    .line 2348
    :cond_3c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/main/common/MainUI$easyConnectRecevie;->this$0:Lcom/ts/main/common/MainUI;

    move-object/from16 v28, v0

    const-string v29, "\u5bf9\u4e0d\u8d77\uff0c\u672c\u673a\u65e0DVD"

    const/16 v30, 0x0

    invoke-virtual/range {v28 .. v30}, Lcom/ts/main/common/MainUI;->Settts_info(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 2354
    :cond_3d
    const-string v28, "tv"

    move-object/from16 v0, v28

    invoke-virtual {v7, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_3f

    .line 2356
    const/16 v28, 0x6

    invoke-static/range {v28 .. v28}, Lcom/yyw/ts70xhw/FtSet;->IsIconExist(I)I

    move-result v28

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_2

    .line 2358
    const-string v28, "open"

    move-object/from16 v0, v28

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_3e

    .line 2360
    const/16 v28, 0x8

    const/16 v29, 0x0

    invoke-static/range {v28 .. v29}, Lcom/ts/main/common/WinShow;->GotoWin(II)V

    goto/16 :goto_0

    .line 2362
    :cond_3e
    const-string v28, "close"

    move-object/from16 v0, v28

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_2

    .line 2364
    invoke-static {}, Lcom/yyw/ts70xhw/Iop;->GetWorkMode()I

    move-result v28

    const/16 v29, 0x6

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_2

    .line 2365
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/main/common/MainUI$easyConnectRecevie;->this$0:Lcom/ts/main/common/MainUI;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/ts/main/common/MainUI;->BackToLauncher()V

    .line 2366
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/main/common/MainUI$easyConnectRecevie;->this$0:Lcom/ts/main/common/MainUI;

    move-object/from16 v28, v0

    # getter for: Lcom/ts/main/common/MainUI;->mEvc:Lcom/ts/MainUI/Evc;
    invoke-static/range {v28 .. v28}, Lcom/ts/main/common/MainUI;->access$4(Lcom/ts/main/common/MainUI;)Lcom/ts/MainUI/Evc;

    move-result-object v28

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Lcom/ts/MainUI/Evc;->evol_workmode_set(I)V

    goto/16 :goto_0

    .line 2372
    :cond_3f
    const-string v28, "bluebooth"

    move-object/from16 v0, v28

    invoke-virtual {v7, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_41

    .line 2374
    const-string v28, "open"

    move-object/from16 v0, v28

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_40

    .line 2376
    const/16 v28, 0x7

    const/16 v29, 0x4

    invoke-static/range {v28 .. v29}, Lcom/ts/main/common/WinShow;->GotoWin(II)V

    goto/16 :goto_0

    .line 2378
    :cond_40
    const-string v28, "close"

    move-object/from16 v0, v28

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_2

    .line 2380
    invoke-static {}, Lcom/yyw/ts70xhw/Iop;->GetWorkMode()I

    move-result v28

    const/16 v29, 0x5

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_2

    .line 2381
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/main/common/MainUI$easyConnectRecevie;->this$0:Lcom/ts/main/common/MainUI;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/ts/main/common/MainUI;->BackToLauncher()V

    .line 2382
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/main/common/MainUI$easyConnectRecevie;->this$0:Lcom/ts/main/common/MainUI;

    move-object/from16 v28, v0

    # getter for: Lcom/ts/main/common/MainUI;->mEvc:Lcom/ts/MainUI/Evc;
    invoke-static/range {v28 .. v28}, Lcom/ts/main/common/MainUI;->access$4(Lcom/ts/main/common/MainUI;)Lcom/ts/MainUI/Evc;

    move-result-object v28

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Lcom/ts/MainUI/Evc;->evol_workmode_set(I)V

    goto/16 :goto_0

    .line 2388
    :cond_41
    const-string v28, "cd"

    move-object/from16 v0, v28

    invoke-virtual {v7, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_43

    .line 2390
    const-string v28, "open"

    move-object/from16 v0, v28

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_42

    .line 2393
    const-string v28, "com.ts.MainUI"

    const-string v29, "com.ts.can.CanCarDeviceActivity"

    invoke-static/range {v28 .. v29}, Lcom/ts/main/common/WinShow;->show(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2397
    :cond_42
    const-string v28, "close"

    move-object/from16 v0, v28

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_2

    .line 2399
    invoke-static {}, Lcom/yyw/ts70xhw/Iop;->GetWorkMode()I

    move-result v28

    const/16 v29, 0xc

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_2

    .line 2400
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/main/common/MainUI$easyConnectRecevie;->this$0:Lcom/ts/main/common/MainUI;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/ts/main/common/MainUI;->BackToLauncher()V

    .line 2401
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/main/common/MainUI$easyConnectRecevie;->this$0:Lcom/ts/main/common/MainUI;

    move-object/from16 v28, v0

    # getter for: Lcom/ts/main/common/MainUI;->mEvc:Lcom/ts/MainUI/Evc;
    invoke-static/range {v28 .. v28}, Lcom/ts/main/common/MainUI;->access$4(Lcom/ts/main/common/MainUI;)Lcom/ts/MainUI/Evc;

    move-result-object v28

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Lcom/ts/MainUI/Evc;->evol_workmode_set(I)V

    goto/16 :goto_0

    .line 2407
    :cond_43
    const-string v28, "car_device"

    move-object/from16 v0, v28

    invoke-virtual {v7, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_45

    .line 2409
    const-string v28, "open"

    move-object/from16 v0, v28

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_44

    .line 2411
    const/16 v28, 0xf

    invoke-static/range {v28 .. v28}, Lcom/yyw/ts70xhw/FtSet;->IsIconExist(I)I

    move-result v28

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_2

    .line 2413
    const-string v28, "com.ts.MainUI"

    const-string v29, "com.ts.can.CanCarDeviceActivity"

    invoke-static/range {v28 .. v29}, Lcom/ts/main/common/WinShow;->show(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2417
    :cond_44
    const-string v28, "close"

    move-object/from16 v0, v28

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_2

    .line 2419
    invoke-static {}, Lcom/yyw/ts70xhw/Iop;->GetWorkMode()I

    move-result v28

    const/16 v29, 0xc

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_2

    .line 2420
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/main/common/MainUI$easyConnectRecevie;->this$0:Lcom/ts/main/common/MainUI;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/ts/main/common/MainUI;->BackToLauncher()V

    .line 2421
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/main/common/MainUI$easyConnectRecevie;->this$0:Lcom/ts/main/common/MainUI;

    move-object/from16 v28, v0

    # getter for: Lcom/ts/main/common/MainUI;->mEvc:Lcom/ts/MainUI/Evc;
    invoke-static/range {v28 .. v28}, Lcom/ts/main/common/MainUI;->access$4(Lcom/ts/main/common/MainUI;)Lcom/ts/MainUI/Evc;

    move-result-object v28

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Lcom/ts/MainUI/Evc;->evol_workmode_set(I)V

    goto/16 :goto_0

    .line 2427
    :cond_45
    const-string v28, "car_recog"

    move-object/from16 v0, v28

    invoke-virtual {v7, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_47

    .line 2429
    const-string v28, "open"

    move-object/from16 v0, v28

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_46

    .line 2432
    const-string v28, "com.ts.MainUI"

    const-string v29, "com.ts.can.CanCarDeviceActivity"

    invoke-static/range {v28 .. v29}, Lcom/ts/main/common/WinShow;->show(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2436
    :cond_46
    const-string v28, "close"

    move-object/from16 v0, v28

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_2

    .line 2438
    invoke-static {}, Lcom/yyw/ts70xhw/Iop;->GetWorkMode()I

    move-result v28

    const/16 v29, 0xc

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_2

    .line 2439
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/main/common/MainUI$easyConnectRecevie;->this$0:Lcom/ts/main/common/MainUI;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/ts/main/common/MainUI;->BackToLauncher()V

    .line 2440
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/main/common/MainUI$easyConnectRecevie;->this$0:Lcom/ts/main/common/MainUI;

    move-object/from16 v28, v0

    # getter for: Lcom/ts/main/common/MainUI;->mEvc:Lcom/ts/MainUI/Evc;
    invoke-static/range {v28 .. v28}, Lcom/ts/main/common/MainUI;->access$4(Lcom/ts/main/common/MainUI;)Lcom/ts/MainUI/Evc;

    move-result-object v28

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Lcom/ts/MainUI/Evc;->evol_workmode_set(I)V

    goto/16 :goto_0

    .line 2446
    :cond_47
    const-string v28, "sync"

    move-object/from16 v0, v28

    invoke-virtual {v7, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_2

    .line 2448
    const-string v28, "open"

    move-object/from16 v0, v28

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_48

    .line 2451
    const-string v28, "com.ts.MainUI"

    const-string v29, "com.ts.can.ford.CanFordSyncActivity"

    invoke-static/range {v28 .. v29}, Lcom/ts/main/common/WinShow;->show(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2455
    :cond_48
    const-string v28, "close"

    move-object/from16 v0, v28

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_2

    .line 2457
    invoke-static {}, Lcom/yyw/ts70xhw/Iop;->GetWorkMode()I

    move-result v28

    const/16 v29, 0xc

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_2

    .line 2458
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/main/common/MainUI$easyConnectRecevie;->this$0:Lcom/ts/main/common/MainUI;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/ts/main/common/MainUI;->BackToLauncher()V

    .line 2459
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/main/common/MainUI$easyConnectRecevie;->this$0:Lcom/ts/main/common/MainUI;

    move-object/from16 v28, v0

    # getter for: Lcom/ts/main/common/MainUI;->mEvc:Lcom/ts/MainUI/Evc;
    invoke-static/range {v28 .. v28}, Lcom/ts/main/common/MainUI;->access$4(Lcom/ts/main/common/MainUI;)Lcom/ts/MainUI/Evc;

    move-result-object v28

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Lcom/ts/MainUI/Evc;->evol_workmode_set(I)V

    goto/16 :goto_0

    .line 2466
    .end local v7    # "StrDevName":Ljava/lang/String;
    .end local v9    # "Straction":Ljava/lang/String;
    :cond_49
    const-string v28, "autoking"

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_4f

    .line 2468
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v28

    const-string v29, "action"

    invoke-virtual/range {v28 .. v29}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 2469
    .restart local v9    # "Straction":Ljava/lang/String;
    if-eqz v9, :cond_2

    .line 2473
    const-string v28, "MainUI"

    new-instance v29, Ljava/lang/StringBuilder;

    const-string v30, "ACTION_RECOGNIZE_CMD action =="

    invoke-direct/range {v29 .. v30}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v29

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2474
    invoke-static {}, Lcom/ts/main/common/MainSet;->GetInstance()Lcom/ts/main/common/MainSet;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/ts/main/common/MainSet;->IsLocal()Z

    move-result v28

    if-eqz v28, :cond_2

    .line 2476
    const-string v28, "factory_reset"

    move-object/from16 v0, v28

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_4a

    .line 2478
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/main/common/MainUI$easyConnectRecevie;->this$0:Lcom/ts/main/common/MainUI;

    move-object/from16 v28, v0

    new-instance v29, Landroid/content/Intent;

    const-string v30, "android.intent.action.MASTER_CLEAR"

    invoke-direct/range {v29 .. v30}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v28 .. v29}, Lcom/ts/main/common/MainUI;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 2480
    :cond_4a
    const-string v28, "homekey_enable"

    move-object/from16 v0, v28

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_4b

    .line 2482
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/main/common/MainUI$easyConnectRecevie;->this$0:Lcom/ts/main/common/MainUI;

    move-object/from16 v28, v0

    const/16 v29, 0x1

    move/from16 v0, v29

    move-object/from16 v1, v28

    iput v0, v1, Lcom/ts/main/common/MainUI;->nHomeKey_enable:I

    goto/16 :goto_0

    .line 2484
    :cond_4b
    const-string v28, "homekey_disable"

    move-object/from16 v0, v28

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_4c

    .line 2486
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/main/common/MainUI$easyConnectRecevie;->this$0:Lcom/ts/main/common/MainUI;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    move/from16 v0, v29

    move-object/from16 v1, v28

    iput v0, v1, Lcom/ts/main/common/MainUI;->nHomeKey_enable:I

    goto/16 :goto_0

    .line 2488
    :cond_4c
    const-string v28, "ready_for_acc_off"

    move-object/from16 v0, v28

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_4d

    .line 2490
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/main/common/MainUI$easyConnectRecevie;->this$0:Lcom/ts/main/common/MainUI;

    move-object/from16 v28, v0

    const/16 v29, 0x1

    move/from16 v0, v29

    move-object/from16 v1, v28

    iput v0, v1, Lcom/ts/main/common/MainUI;->nAccOffEnable:I

    goto/16 :goto_0

    .line 2492
    :cond_4d
    const-string v28, "reboot_system"

    move-object/from16 v0, v28

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_4e

    .line 2494
    const/16 v28, 0x14

    invoke-static/range {v28 .. v28}, Lcom/yyw/ts70xhw/Mcu;->SendXKey(I)I

    goto/16 :goto_0

    .line 2496
    :cond_4e
    const-string v28, "request_vr_status"

    move-object/from16 v0, v28

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_2

    .line 2497
    invoke-static {}, Lcom/yyw/ts70xhw/FtSet;->GetSpeechMode()I

    move-result v28

    invoke-static/range {v28 .. v28}, Lcom/ts/main/common/MainSet;->SendVrStateToAutoKing(I)V

    goto/16 :goto_0

    .line 2502
    .end local v9    # "Straction":Ljava/lang/String;
    :cond_4f
    const-string v28, "phone"

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_2

    .line 2504
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v28

    const-string v29, "action"

    invoke-virtual/range {v28 .. v29}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 2505
    .restart local v9    # "Straction":Ljava/lang/String;
    const-string v28, "call"

    move-object/from16 v0, v28

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_50

    .line 2507
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v28

    const-string v29, "number"

    invoke-virtual/range {v28 .. v29}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 2508
    .local v11, "Strnumber":Ljava/lang/String;
    invoke-static {}, Lcom/ts/bt/BtExe;->getBtInstance()Lcom/ts/bt/BtExe;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Lcom/ts/bt/BtExe;->dial(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2510
    .end local v11    # "Strnumber":Ljava/lang/String;
    :cond_50
    const-string v28, "incomingcall"

    move-object/from16 v0, v28

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_52

    .line 2512
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v28

    const-string v29, "answerIntent"

    invoke-virtual/range {v28 .. v29}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 2513
    .local v10, "StranswerIntent":Ljava/lang/String;
    const-string v28, "reject"

    move-object/from16 v0, v28

    invoke-virtual {v10, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_51

    .line 2515
    invoke-static {}, Lcom/ts/bt/BtExe;->getBtInstance()Lcom/ts/bt/BtExe;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/ts/bt/BtExe;->isHaveCall()Z

    move-result v28

    if-eqz v28, :cond_2

    .line 2517
    invoke-static {}, Lcom/ts/bt/BtExe;->getBtInstance()Lcom/ts/bt/BtExe;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/ts/bt/BtExe;->hangup()V

    goto/16 :goto_0

    .line 2520
    :cond_51
    const-string v28, "accept"

    move-object/from16 v0, v28

    invoke-virtual {v10, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_2

    .line 2522
    invoke-static {}, Lcom/ts/bt/BtExe;->getBtInstance()Lcom/ts/bt/BtExe;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/ts/bt/BtExe;->isHaveCall()Z

    move-result v28

    if-eqz v28, :cond_2

    .line 2524
    invoke-static {}, Lcom/ts/bt/BtExe;->getBtInstance()Lcom/ts/bt/BtExe;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/ts/bt/BtExe;->answer()V

    goto/16 :goto_0

    .line 2528
    .end local v10    # "StranswerIntent":Ljava/lang/String;
    :cond_52
    const-string v28, "requestphoneList"

    move-object/from16 v0, v28

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_2

    .line 2530
    invoke-static {}, Lcom/ts/bt/BtExe;->getBtInstance()Lcom/ts/bt/BtExe;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/ts/bt/BtExe;->UpdatePbMap()V

    goto/16 :goto_0

    .line 2537
    .end local v9    # "Straction":Ljava/lang/String;
    .end local v25    # "strDomin":Ljava/lang/String;
    :cond_53
    const-string v28, "com.globalconstant.BROADCAST_SEND_VOLUME"

    move-object/from16 v0, v28

    invoke-virtual {v0, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_55

    .line 2539
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v28

    const-string v29, "mute"

    invoke-virtual/range {v28 .. v29}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v23

    .line 2540
    .local v23, "naction":I
    const-string v28, "MainUI"

    new-instance v29, Ljava/lang/StringBuilder;

    const-string v30, "ACTION_RECOGNIZE_CMD mute=="

    invoke-direct/range {v29 .. v30}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v29

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2541
    const/16 v28, 0x1

    move/from16 v0, v23

    move/from16 v1, v28

    if-ne v0, v1, :cond_54

    .line 2543
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/main/common/MainUI$easyConnectRecevie;->this$0:Lcom/ts/main/common/MainUI;

    move-object/from16 v28, v0

    # getter for: Lcom/ts/main/common/MainUI;->mEvc:Lcom/ts/MainUI/Evc;
    invoke-static/range {v28 .. v28}, Lcom/ts/main/common/MainUI;->access$4(Lcom/ts/main/common/MainUI;)Lcom/ts/MainUI/Evc;

    move-result-object v28

    invoke-static {}, Lcom/yyw/ts70xhw/Iop;->GetWorkMode()I

    move-result v29

    invoke-virtual/range {v28 .. v29}, Lcom/ts/MainUI/Evc;->evol_popmute_set(I)V

    .line 2544
    const-string v28, "MainUI"

    new-instance v29, Ljava/lang/StringBuilder;

    const-string v30, "ACTION_RECOGNIZE_CMD setmute=="

    invoke-direct/range {v29 .. v30}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v29

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2546
    :cond_54
    const/16 v28, 0x2

    move/from16 v0, v23

    move/from16 v1, v28

    if-ne v0, v1, :cond_2

    .line 2550
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/main/common/MainUI$easyConnectRecevie;->this$0:Lcom/ts/main/common/MainUI;

    move-object/from16 v28, v0

    # getter for: Lcom/ts/main/common/MainUI;->mEvc:Lcom/ts/MainUI/Evc;
    invoke-static/range {v28 .. v28}, Lcom/ts/main/common/MainUI;->access$4(Lcom/ts/main/common/MainUI;)Lcom/ts/MainUI/Evc;

    move-result-object v28

    invoke-static {}, Lcom/yyw/ts70xhw/Iop;->GetWorkMode()I

    move-result v29

    invoke-virtual/range {v28 .. v29}, Lcom/ts/MainUI/Evc;->evol_popmute_clr(I)V

    .line 2551
    const-string v28, "MainUI"

    new-instance v29, Ljava/lang/StringBuilder;

    const-string v30, "ACTION_RECOGNIZE_CMD clrmute=="

    invoke-direct/range {v29 .. v30}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v29

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2556
    .end local v23    # "naction":I
    :cond_55
    const-string v28, "android.net.conn.CONNECTIVITY_CHANGE"

    move-object/from16 v0, v28

    invoke-virtual {v0, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_57

    .line 2558
    const-string v28, "connectivity"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v20

    .line 2557
    check-cast v20, Landroid/net/ConnectivityManager;

    .line 2560
    .local v20, "manager":Landroid/net/ConnectivityManager;
    const/16 v28, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v17

    .line 2562
    .local v17, "gprs":Landroid/net/NetworkInfo;
    const/16 v28, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v27

    .line 2563
    .local v27, "wifi":Landroid/net/NetworkInfo;
    invoke-virtual/range {v17 .. v17}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v28

    if-nez v28, :cond_56

    invoke-virtual/range {v27 .. v27}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v28

    if-nez v28, :cond_56

    .line 2565
    const-string v28, "MainUI"

    const-string v29, "net is unconnect"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2566
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/main/common/MainUI$easyConnectRecevie;->this$0:Lcom/ts/main/common/MainUI;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    move/from16 v0, v29

    move-object/from16 v1, v28

    iput v0, v1, Lcom/ts/main/common/MainUI;->nNetIsConnect:I

    .line 2567
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/main/common/MainUI$easyConnectRecevie;->this$0:Lcom/ts/main/common/MainUI;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    move/from16 v0, v29

    move-object/from16 v1, v28

    iput v0, v1, Lcom/ts/main/common/MainUI;->nOldConnect:I

    goto/16 :goto_0

    .line 2571
    :cond_56
    const-string v28, "MainUI"

    const-string v29, "net is connect"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2572
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/main/common/MainUI$easyConnectRecevie;->this$0:Lcom/ts/main/common/MainUI;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Lcom/ts/main/common/MainUI;->nMcuRet:I

    move/from16 v28, v0

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_2

    .line 2573
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/main/common/MainUI$easyConnectRecevie;->this$0:Lcom/ts/main/common/MainUI;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Lcom/ts/main/common/MainUI;->nNetIsConnect:I

    move/from16 v28, v0

    if-nez v28, :cond_2

    .line 2574
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/main/common/MainUI$easyConnectRecevie;->this$0:Lcom/ts/main/common/MainUI;

    move-object/from16 v28, v0

    const/16 v29, 0x1

    move/from16 v0, v29

    move-object/from16 v1, v28

    iput v0, v1, Lcom/ts/main/common/MainUI;->nNetIsConnect:I

    .line 2575
    invoke-static {}, Lcom/ts/MainUI/AuthServer;->GetInstance()Lcom/ts/MainUI/AuthServer;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/ts/MainUI/AuthServer;->IsAuthOk()Z

    move-result v28

    if-nez v28, :cond_2

    .line 2576
    const/16 v28, 0x10

    const/16 v29, 0x0

    invoke-static/range {v28 .. v29}, Lcom/ts/main/common/WinShow;->GotoWin(II)V

    goto/16 :goto_0

    .line 2584
    .end local v17    # "gprs":Landroid/net/NetworkInfo;
    .end local v20    # "manager":Landroid/net/ConnectivityManager;
    .end local v27    # "wifi":Landroid/net/NetworkInfo;
    :cond_57
    const-string v28, "forfan.intent.action.ACCELERATION"

    .line 2585
    move-object/from16 v0, v28

    invoke-virtual {v0, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v28

#insert new if branch
    if-eqz v28, :cond_4ee

    .line 2586
    const-string v28, "MainUI"

    const-string v29, "BROADCAST_LANCHER_FUNC_ACCELERATION"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

# START API for changing brightness
	:cond_4ee
	const-string v28, "forfan.intent.action.BRIGHT_LEVEL_DAY"
	move-object/from16 v0, v28
	invoke-virtual {v0, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    
	move-result v28
	if-eqz v28, :cond_4ef

	.local v1, "brightness":I
    const-string v28, "MainUI"
    const-string v29, "BROADCAST_LANCHER_FUNC_BRIGHT_LEVEL_DAY"
    invoke-static/range {v28 .. v29}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v28

    const-string v29, "brightness"

    invoke-virtual/range {v28 .. v29}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

	move-result v1
    #move/from16 v1, v23

    invoke-static {v1}, Lcom/yyw/ts70xhw/StSet;->SetBLDay(I)I    

	goto/16 :goto_0

	:cond_4ef
	const-string v28, "forfan.intent.action.BRIGHT_LEVEL_NIGHT"
	move-object/from16 v0, v28
	invoke-virtual {v0, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    
	move-result v28
	if-eqz v28, :cond_4e

	.local v1, "brightness":I
    const-string v28, "MainUI"
    const-string v29, "BROADCAST_LANCHER_FUNC_BRIGHT_LEVEL_NIGHT"
    invoke-static/range {v28 .. v29}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v28

    const-string v29, "brightness"

    invoke-virtual/range {v28 .. v29}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

	move-result v1
    #move/from16 v1, v23

    invoke-static {v1}, Lcom/yyw/ts70xhw/StSet;->SetBLNight(I)I

	goto/16 :goto_0
# END of changing brightness API
    .line 2587
    :cond_58
    const-string v28, "forfan.intent.action.MUTE"

    move-object/from16 v0, v28

    invoke-virtual {v0, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_59

    .line 2588
    const-string v28, "MainUI"

    const-string v29, "BROADCAST_LANCHER_FUNC_MUTE"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2589
    const/16 v28, 0x10

    invoke-static/range {v28 .. v28}, Lcom/yyw/ts70xhw/Mcu;->SetCkey(I)I

    goto/16 :goto_0

    .line 2590
    :cond_59
    const-string v28, "forfan.intent.action.VOLUME"

    move-object/from16 v0, v28

    invoke-virtual {v0, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_5a

    .line 2591
    const-string v28, "MainUI"

    const-string v29, "BROADCAST_LANCHER_FUNC_VOLUME"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2592
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/main/common/MainUI$easyConnectRecevie;->this$0:Lcom/ts/main/common/MainUI;

    move-object/from16 v28, v0

    # getter for: Lcom/ts/main/common/MainUI;->mMainVolume:Lcom/ts/main/common/MainVolume;
    invoke-static/range {v28 .. v28}, Lcom/ts/main/common/MainUI;->access$5(Lcom/ts/main/common/MainUI;)Lcom/ts/main/common/MainVolume;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/ts/main/common/MainVolume;->VolWinShow()V

    goto/16 :goto_0

    .line 2593
    :cond_5a
    const-string v28, "forfan.intent.action.VOLUMEUP"

    .line 2594
    move-object/from16 v0, v28

    invoke-virtual {v0, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_5b

    .line 2595
    const-string v28, "MainUI"

    const-string v29, "BROADCAST_LANCHER_FUNC_VOLUMEADD"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2596
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/main/common/MainUI$easyConnectRecevie;->this$0:Lcom/ts/main/common/MainUI;

    move-object/from16 v28, v0

    # getter for: Lcom/ts/main/common/MainUI;->mEvc:Lcom/ts/MainUI/Evc;
    invoke-static/range {v28 .. v28}, Lcom/ts/main/common/MainUI;->access$4(Lcom/ts/main/common/MainUI;)Lcom/ts/MainUI/Evc;

    move-result-object v28

    const/16 v29, 0x1

    invoke-virtual/range {v28 .. v29}, Lcom/ts/MainUI/Evc;->Evol_vol_tune(I)V

    goto/16 :goto_0

    .line 2597
    :cond_5b
    const-string v28, "forfan.intent.action.VOLUMEDN"

    .line 2598
    move-object/from16 v0, v28

    invoke-virtual {v0, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_5c

    .line 2599
    const-string v28, "MainUI"

    const-string v29, "BROADCAST_LANCHER_FUNC_VOLUMEDEC"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2600
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/main/common/MainUI$easyConnectRecevie;->this$0:Lcom/ts/main/common/MainUI;

    move-object/from16 v28, v0

    # getter for: Lcom/ts/main/common/MainUI;->mEvc:Lcom/ts/MainUI/Evc;
    invoke-static/range {v28 .. v28}, Lcom/ts/main/common/MainUI;->access$4(Lcom/ts/main/common/MainUI;)Lcom/ts/MainUI/Evc;

    move-result-object v28

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Lcom/ts/MainUI/Evc;->Evol_vol_tune(I)V

    goto/16 :goto_0

    .line 2602
    :cond_5c
    const-string v28, "forfan.intent.action.SCREENOFF"

    move-object/from16 v0, v28

    invoke-virtual {v0, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_5d

    .line 2604
    invoke-static {}, Lcom/ts/main/common/WinShow;->DealModeKey()V

    .line 2605
    const-string v28, "MainUI"

    const-string v29, "BROADCAST_LANCHER_FUNC_SCREENOFF"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2607
    :cond_5d
    const-string v28, "forfan.intent.action.MODE"

    move-object/from16 v0, v28

    invoke-virtual {v0, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_61

    .line 2609
    const-string v28, "MainUI"

    const-string v29, "BROADCAST_LANCHER_FUNC_NOWMODE"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2610
    invoke-static {}, Lcom/yyw/ts70xhw/Iop;->GetWorkMode()I

    move-result v28

    if-eqz v28, :cond_5e

    .line 2612
    invoke-static {}, Lcom/yyw/ts70xhw/Iop;->GetWorkMode()I

    move-result v28

    invoke-static/range {v28 .. v28}, Lcom/ts/main/common/WinShow;->TsEnterMode(I)I

    goto/16 :goto_0

    .line 2616
    :cond_5e
    invoke-static {}, Lcom/ts/main/common/MainSet;->GetInstance()Lcom/ts/main/common/MainSet;

    move-result-object v28

    const-string v29, "cn.kuwo.kwmusiccar"

    invoke-virtual/range {v28 .. v29}, Lcom/ts/main/common/MainSet;->IsHaveApk(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_5f

    .line 2618
    invoke-static {}, Lcom/ts/main/common/MainSet;->GetInstance()Lcom/ts/main/common/MainSet;

    move-result-object v28

    # getter for: Lcom/ts/main/common/MainUI;->mMainUI:Lcom/ts/main/common/MainUI;
    invoke-static {}, Lcom/ts/main/common/MainUI;->access$6()Lcom/ts/main/common/MainUI;

    move-result-object v29

    const-string v30, "cn.kuwo.kwmusiccar"

    invoke-virtual/range {v28 .. v30}, Lcom/ts/main/common/MainSet;->openApplication(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2620
    :cond_5f
    invoke-static {}, Lcom/ts/main/common/MainSet;->GetInstance()Lcom/ts/main/common/MainSet;

    move-result-object v28

    const-string v29, "com.hongfans.rearview"

    invoke-virtual/range {v28 .. v29}, Lcom/ts/main/common/MainSet;->IsHaveApk(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_60

    .line 2622
    invoke-static {}, Lcom/ts/main/common/MainSet;->GetInstance()Lcom/ts/main/common/MainSet;

    move-result-object v28

    # getter for: Lcom/ts/main/common/MainUI;->mMainUI:Lcom/ts/main/common/MainUI;
    invoke-static {}, Lcom/ts/main/common/MainUI;->access$6()Lcom/ts/main/common/MainUI;

    move-result-object v29

    const-string v30, "com.hongfans.rearview"

    invoke-virtual/range {v28 .. v30}, Lcom/ts/main/common/MainSet;->openApplication(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2626
    :cond_60
    const/16 v28, 0x4

    invoke-static/range {v28 .. v28}, Lcom/ts/main/common/WinShow;->TsEnterMode(I)I

    goto/16 :goto_0

    .line 2632
    :cond_61
    const-string v28, "forfan.intent.action.BRIGHTNESS"

    .line 2633
    move-object/from16 v0, v28

    invoke-virtual {v0, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_62

    .line 2634
    const-string v28, "MainUI"

    const-string v29, "BROADCAST_LANCHER_FUNC_BRIGHTNESS"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2635
    const-string v28, "com.ts.MainUI"

    .line 2636
    const-string v29, "com.ts.set.SettingDisplayActivity"

    .line 2635
    invoke-static/range {v28 .. v29}, Lcom/ts/main/common/WinShow;->show(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2638
    :cond_62
    const-string v28, "forfan.intent.action.BLUETOOTH"

    .line 2639
    move-object/from16 v0, v28

    invoke-virtual {v0, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_64

    .line 2640
    const-string v28, "MainUI"

    const-string v29, "BROADCAST_LANCHER_FUNC_BLUETOOTH"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2641
    invoke-static {}, Lcom/ts/bt/BtExe;->getBtInstance()Lcom/ts/bt/BtExe;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/ts/bt/BtExe;->isConnected()Z

    move-result v28

    if-eqz v28, :cond_63

    .line 2642
    const/16 v28, 0x7

    const/16 v29, 0x3

    invoke-static/range {v28 .. v29}, Lcom/ts/main/common/WinShow;->GotoWin(II)V

    goto/16 :goto_0

    .line 2644
    :cond_63
    const/16 v28, 0x7

    const/16 v29, 0x0

    invoke-static/range {v28 .. v29}, Lcom/ts/main/common/WinShow;->GotoWin(II)V

    goto/16 :goto_0

    .line 2648
    :cond_64
    const-string v28, "com.ts.media.listupdate"

    move-object/from16 v0, v28

    invoke-virtual {v0, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_2

    .line 2650
    const-string v28, "MainUI"

    const-string v29, "playlisname==com.ts.media.listupdate"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2651
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/main/common/MainUI$easyConnectRecevie;->this$0:Lcom/ts/main/common/MainUI;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/ts/main/common/MainUI;->mTsPlayerService:Lcom/ts/dvdplayer/ITsPlayerService;

    move-object/from16 v28, v0

    if-eqz v28, :cond_2

    .line 2657
    :try_start_0
    invoke-static {}, Lcom/ts/main/txz/TxzReg;->GetInstance()Lcom/ts/main/txz/TxzReg;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ts/main/common/MainUI$easyConnectRecevie;->this$0:Lcom/ts/main/common/MainUI;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/ts/main/common/MainUI;->mTsPlayerService:Lcom/ts/dvdplayer/ITsPlayerService;

    move-object/from16 v29, v0

    invoke-interface/range {v29 .. v29}, Lcom/ts/dvdplayer/ITsPlayerService;->getMediaList()Ljava/util/Map;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Lcom/ts/main/txz/TxzReg;->AddMusicList(Ljava/util/Map;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 2660
    :catch_0
    move-exception v15

    .line 2662
    .local v15, "e":Landroid/os/RemoteException;
    invoke-virtual {v15}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0
.end method
