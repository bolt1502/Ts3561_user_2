.class public Lcom/txznet/comm/ui/TG/T;
.super Ljava/lang/Object;
.source "Proguard"


# static fields
.field public static T:I

.field private static T0:Ljava/lang/Boolean;

.field static T2:I

.field static T3:Z

.field static T7:I

.field static TB:I

.field static TG:I

.field private static TH:Ljava/lang/String;

.field public static TJ:I

.field private static TL:Ljava/lang/String;

.field static TN:I

.field private static TO:I

.field static TP:I

.field private static TQ:Ljava/lang/String;

.field static TR:I

.field public static TW:I

.field static Te:I

.field static Tn:I

.field private static To:Ljava/lang/String;

.field static Tr:I

.field static Tw:I

.field static Ty:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 38
    sput v1, Lcom/txznet/comm/ui/TG/T;->TO:I

    .line 49
    const/4 v0, 0x2

    sput v0, Lcom/txznet/comm/ui/TG/T;->T:I

    .line 51
    sput-boolean v1, Lcom/txznet/comm/ui/TG/T;->T3:Z

    .line 52
    const/16 v0, 0x78

    sput v0, Lcom/txznet/comm/ui/TG/T;->T2:I

    .line 56
    sput v1, Lcom/txznet/comm/ui/TG/T;->TN:I

    .line 280
    sput-object v2, Lcom/txznet/comm/ui/TG/T;->TH:Ljava/lang/String;

    .line 457
    sput-object v2, Lcom/txznet/comm/ui/TG/T;->T0:Ljava/lang/Boolean;

    return-void
.end method

.method public static T()I
    .locals 1

    .prologue
    .line 252
    sget v0, Lcom/txznet/comm/ui/TG/T;->T:I

    return v0
.end method

.method public static T(Z)I
    .locals 6
    .param p0, "needReset"    # Z

    .prologue
    const/4 v3, 0x1

    .line 405
    sget v1, Lcom/txznet/comm/ui/TG/T;->TB:I

    if-lez v1, :cond_0

    if-nez p0, :cond_0

    .line 406
    sget v1, Lcom/txznet/comm/ui/TG/T;->TB:I

    .line 449
    :goto_0
    return v1

    .line 414
    :cond_0
    sget v1, Lcom/txznet/comm/ui/TG/T;->TG:I

    sget v2, Lcom/txznet/comm/ui/TG/T;->T2:I

    if-le v1, v2, :cond_1

    .line 415
    sget v1, Lcom/txznet/comm/ui/TG/T;->T2:I

    sput v1, Lcom/txznet/comm/ui/TG/T;->TG:I

    .line 418
    :cond_1
    sget v1, Lcom/txznet/comm/ui/TG/T;->TW:I

    if-lez v1, :cond_3

    .line 419
    sget v1, Lcom/txznet/comm/ui/TG/T;->TG:I

    if-nez v1, :cond_2

    .line 420
    sput v3, Lcom/txznet/comm/ui/TG/T;->TG:I

    .line 422
    :cond_2
    sget v1, Lcom/txznet/comm/ui/TG/T;->TW:I

    sget v2, Lcom/txznet/comm/ui/TG/T;->TG:I

    div-int v0, v1, v2

    .line 423
    .local v0, "count":I
    sget v1, Lcom/txznet/comm/ui/TG/T;->TR:I

    if-le v0, v1, :cond_5

    .line 424
    sget v0, Lcom/txznet/comm/ui/TG/T;->TR:I

    .line 425
    sget-boolean v1, Lcom/txznet/comm/ui/TG/T;->T3:Z

    if-eqz v1, :cond_4

    .line 426
    sget v1, Lcom/txznet/comm/ui/TG/T;->TW:I

    div-int/2addr v1, v0

    int-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    sput v1, Lcom/txznet/comm/ui/TG/T;->TB:I

    .line 440
    :goto_1
    sput v0, Lcom/txznet/comm/ui/TG/T;->TP:I

    .line 442
    sget v1, Lcom/txznet/comm/ui/TG/T;->TP:I

    sget v2, Lcom/txznet/comm/ui/TG/T;->TB:I

    mul-int/2addr v1, v2

    sput v1, Lcom/txznet/comm/ui/TG/T;->Tr:I

    .line 443
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RectHeight:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/txznet/comm/ui/TG/T;->TW:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",ItemH:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/txznet/comm/ui/TG/T;->TB:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/txznet/comm/T3/T/Te;->T(Ljava/lang/String;)I

    .line 446
    .end local v0    # "count":I
    :cond_3
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v1

    const-string v2, "com.txznet.txz"

    const-string v3, "txz.record.ui.event.display.count"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget v5, Lcom/txznet/comm/ui/TG/T;->TP:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    .line 449
    sget v1, Lcom/txznet/comm/ui/TG/T;->TB:I

    goto/16 :goto_0

    .line 428
    .restart local v0    # "count":I
    :cond_4
    sget v1, Lcom/txznet/comm/ui/TG/T;->TG:I

    sput v1, Lcom/txznet/comm/ui/TG/T;->TB:I

    goto :goto_1

    .line 431
    :cond_5
    if-nez v0, :cond_7

    .line 432
    sget v1, Lcom/txznet/comm/ui/TG/T;->TB:I

    if-lez v1, :cond_6

    .line 433
    sget v1, Lcom/txznet/comm/ui/TG/T;->TB:I

    goto/16 :goto_0

    .line 435
    :cond_6
    sput v3, Lcom/txznet/comm/ui/TG/T;->TB:I

    .line 438
    :cond_7
    sget v1, Lcom/txznet/comm/ui/TG/T;->TW:I

    div-int/2addr v1, v0

    int-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    sput v1, Lcom/txznet/comm/ui/TG/T;->TB:I

    goto :goto_1
.end method

.method public static T(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 5
    .param p0, "color"    # Ljava/lang/String;

    .prologue
    .line 567
    const/4 v1, 0x0

    .line 568
    .local v1, "colorValue":Ljava/lang/Integer;
    const-string v3, "#"

    const-string v4, ""

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 569
    .local v0, "colorStr":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x6

    if-ne v3, v4, :cond_1

    .line 570
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FF"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 576
    :cond_0
    const/16 v3, 0x10

    :try_start_0
    invoke-static {v0, v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v3

    long-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    move-object v3, v1

    .line 580
    :goto_1
    return-object v3

    .line 571
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_0

    .line 573
    const/4 v3, 0x0

    goto :goto_1

    .line 577
    :catch_0
    move-exception v2

    .line 578
    .local v2, "e":Ljava/lang/NumberFormatException;
    const-string v3, "number format error!"

    invoke-static {v3}, Lcom/txznet/comm/T3/T/Te;->TN(Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static T(Ljava/io/File;)Ljava/lang/String;
    .locals 9
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 631
    const/4 v3, 0x0

    .line 632
    .local v3, "fis":Ljava/io/FileInputStream;
    const/4 v6, 0x0

    .line 633
    .local v6, "reader":Ljava/io/InputStreamReader;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v8, ""

    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 634
    .local v1, "content":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_0

    .line 635
    const-string v8, ""

    .line 658
    :goto_0
    return-object v8

    .line 638
    :cond_0
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 639
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .local v4, "fis":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v7, Ljava/io/InputStreamReader;

    invoke-direct {v7, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 640
    .end local v6    # "reader":Ljava/io/InputStreamReader;
    .local v7, "reader":Ljava/io/InputStreamReader;
    :try_start_2
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 641
    .local v0, "bufferedReader":Ljava/io/BufferedReader;
    const/4 v5, 0x0

    .line 642
    .local v5, "lineTxt":Ljava/lang/String;
    :goto_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 643
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    .line 646
    .end local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v5    # "lineTxt":Ljava/lang/String;
    :catch_0
    move-exception v2

    move-object v6, v7

    .end local v7    # "reader":Ljava/io/InputStreamReader;
    .restart local v6    # "reader":Ljava/io/InputStreamReader;
    move-object v3, v4

    .line 647
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .local v2, "e":Ljava/lang/Exception;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :goto_2
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 650
    if-eqz v3, :cond_1

    .line 651
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 652
    :cond_1
    if-eqz v6, :cond_2

    .line 653
    invoke-virtual {v6}, Ljava/io/InputStreamReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 658
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_3
    const/4 v8, 0x0

    goto :goto_0

    .line 645
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .end local v6    # "reader":Ljava/io/InputStreamReader;
    .restart local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "lineTxt":Ljava/lang/String;
    .restart local v7    # "reader":Ljava/io/InputStreamReader;
    :cond_3
    :try_start_5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-result-object v8

    .line 650
    if-eqz v4, :cond_4

    .line 651
    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 652
    :cond_4
    if-eqz v7, :cond_5

    .line 653
    invoke-virtual {v7}, Ljava/io/InputStreamReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    :cond_5
    :goto_4
    move-object v6, v7

    .end local v7    # "reader":Ljava/io/InputStreamReader;
    .restart local v6    # "reader":Ljava/io/InputStreamReader;
    move-object v3, v4

    .line 656
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    goto :goto_0

    .line 654
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .end local v6    # "reader":Ljava/io/InputStreamReader;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v7    # "reader":Ljava/io/InputStreamReader;
    :catch_1
    move-exception v2

    .line 655
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 654
    .end local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .end local v5    # "lineTxt":Ljava/lang/String;
    .end local v7    # "reader":Ljava/io/InputStreamReader;
    .local v2, "e":Ljava/lang/Exception;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "reader":Ljava/io/InputStreamReader;
    :catch_2
    move-exception v2

    .line 655
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 649
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    .line 650
    :goto_5
    if-eqz v3, :cond_6

    .line 651
    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 652
    :cond_6
    if-eqz v6, :cond_7

    .line 653
    invoke-virtual {v6}, Ljava/io/InputStreamReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 656
    :cond_7
    :goto_6
    throw v8

    .line 654
    :catch_3
    move-exception v2

    .line 655
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 649
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v8

    move-object v3, v4

    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    goto :goto_5

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .end local v6    # "reader":Ljava/io/InputStreamReader;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v7    # "reader":Ljava/io/InputStreamReader;
    :catchall_2
    move-exception v8

    move-object v6, v7

    .end local v7    # "reader":Ljava/io/InputStreamReader;
    .restart local v6    # "reader":Ljava/io/InputStreamReader;
    move-object v3, v4

    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    goto :goto_5

    .line 646
    :catch_4
    move-exception v2

    goto :goto_2

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    :catch_5
    move-exception v2

    move-object v3, v4

    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    goto :goto_2
.end method

.method public static T(Ljava/util/HashMap;Ljava/lang/String;)Ljava/util/HashMap;
    .locals 16
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 519
    .local p0, "config":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object/from16 v4, p0

    .line 520
    .local v4, "configs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v7, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 521
    .local v7, "file":Ljava/io/File;
    if-eqz p1, :cond_0

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v14

    if-nez v14, :cond_1

    :cond_0
    move-object v5, v4

    .line 562
    .end local v4    # "configs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .local v5, "configs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :goto_0
    return-object v5

    .line 524
    .end local v5    # "configs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v4    # "configs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1
    invoke-static {v7}, Lcom/txznet/comm/ui/TG/T;->T(Ljava/io/File;)Ljava/lang/String;

    move-result-object v11

    .line 526
    .local v11, "jsonString":Ljava/lang/String;
    :try_start_0
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10, v11}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 527
    .local v10, "jsonObject":Lorg/json/JSONObject;
    const-string v14, "attrs"

    invoke-virtual {v10, v14}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 528
    .local v1, "attrArray":Lorg/json/JSONArray;
    if-nez v4, :cond_2

    .line 529
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .end local v4    # "configs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v5    # "configs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object v4, v5

    .line 531
    .end local v5    # "configs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v4    # "configs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_2
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v14

    if-ge v8, v14, :cond_4

    .line 532
    invoke-virtual {v1, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 533
    .local v2, "attrItem":Lorg/json/JSONObject;
    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v9

    .line 534
    .local v9, "iterator":Ljava/util/Iterator;
    :cond_3
    :goto_2
    :pswitch_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_5

    .line 535
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 536
    .local v12, "key":Ljava/lang/String;
    invoke-static {v12}, Lcom/txznet/comm/ui/TG/T;->T3(Ljava/lang/String;)I

    move-result v14

    packed-switch v14, :pswitch_data_0

    :pswitch_1
    goto :goto_2

    .line 538
    :pswitch_2
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, ""

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v2, v12}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/txznet/comm/ui/TG/T;->T(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    .line 539
    .local v3, "colorValue":Ljava/lang/Integer;
    if-eqz v3, :cond_3

    .line 540
    invoke-virtual {v4, v12, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 559
    .end local v1    # "attrArray":Lorg/json/JSONArray;
    .end local v2    # "attrItem":Lorg/json/JSONObject;
    .end local v3    # "colorValue":Ljava/lang/Integer;
    .end local v8    # "i":I
    .end local v9    # "iterator":Ljava/util/Iterator;
    .end local v10    # "jsonObject":Lorg/json/JSONObject;
    .end local v12    # "key":Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 560
    .local v6, "e":Lorg/json/JSONException;
    invoke-virtual {v6}, Lorg/json/JSONException;->printStackTrace()V

    .end local v6    # "e":Lorg/json/JSONException;
    :cond_4
    move-object v5, v4

    .line 562
    .end local v4    # "configs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v5    # "configs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    goto :goto_0

    .line 544
    .end local v5    # "configs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v1    # "attrArray":Lorg/json/JSONArray;
    .restart local v2    # "attrItem":Lorg/json/JSONObject;
    .restart local v4    # "configs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v8    # "i":I
    .restart local v9    # "iterator":Ljava/util/Iterator;
    .restart local v10    # "jsonObject":Lorg/json/JSONObject;
    .restart local v12    # "key":Ljava/lang/String;
    :pswitch_3
    :try_start_1
    invoke-virtual {v2, v12}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v13

    .line 545
    .local v13, "sizeValue":I
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v4, v12, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 531
    .end local v12    # "key":Ljava/lang/String;
    .end local v13    # "sizeValue":I
    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 536
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static T(I)V
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 263
    packed-switch p0, :pswitch_data_0

    .line 270
    const/4 v0, 0x1

    sput v0, Lcom/txznet/comm/ui/TG/T;->TO:I

    .line 273
    :goto_0
    return-void

    .line 267
    :pswitch_0
    sput p0, Lcom/txznet/comm/ui/TG/T;->TO:I

    goto :goto_0

    .line 263
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static T(Landroid/view/View;)V
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 76
    const-string v1, "orientation"

    invoke-static {v1}, Lcom/txznet/comm/ui/TG/T3;->Te(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 77
    .local v0, "mOrientation":Ljava/lang/String;
    const-string v1, "horizontal"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 78
    invoke-static {p0}, Lcom/txznet/comm/ui/TG/T;->T2(Landroid/view/View;)V

    .line 85
    :goto_0
    return-void

    .line 79
    :cond_0
    const-string v1, "vertical"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 80
    invoke-static {p0}, Lcom/txznet/comm/ui/TG/T;->T3(Landroid/view/View;)V

    goto :goto_0

    .line 82
    :cond_1
    invoke-static {p0}, Lcom/txznet/comm/ui/TG/T;->TN(Landroid/view/View;)V

    goto :goto_0
.end method

.method public static T2()I
    .locals 1

    .prologue
    .line 277
    sget v0, Lcom/txznet/comm/ui/TG/T;->TO:I

    return v0
.end method

.method private static T2(I)V
    .locals 2
    .param p0, "conHeight"    # I

    .prologue
    .line 352
    if-gtz p0, :cond_0

    .line 399
    :goto_0
    return-void

    .line 356
    :cond_0
    invoke-static {}, Lcom/txznet/comm/ui/TG/T;->T3()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 373
    :pswitch_0
    invoke-static {}, Lcom/txznet/comm/ui/TG/T;->T2()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 376
    :pswitch_1
    sput p0, Lcom/txznet/comm/ui/TG/T;->TJ:I

    .line 377
    sget v0, Lcom/txznet/comm/ui/TG/T;->Te:I

    sub-int v0, p0, v0

    sput v0, Lcom/txznet/comm/ui/TG/T;->TW:I

    goto :goto_0

    .line 358
    :pswitch_2
    invoke-static {}, Lcom/txznet/comm/ui/TG/T;->T2()I

    move-result v0

    packed-switch v0, :pswitch_data_2

    goto :goto_0

    .line 361
    :pswitch_3
    sget v0, Lcom/txznet/comm/ui/TG/T;->Tn:I

    sub-int v0, p0, v0

    sput v0, Lcom/txznet/comm/ui/TG/T;->TJ:I

    .line 362
    sget v0, Lcom/txznet/comm/ui/TG/T;->Te:I

    sub-int v0, p0, v0

    sget v1, Lcom/txznet/comm/ui/TG/T;->Tn:I

    sub-int/2addr v0, v1

    sput v0, Lcom/txznet/comm/ui/TG/T;->TW:I

    goto :goto_0

    .line 365
    :pswitch_4
    sget v0, Lcom/txznet/comm/ui/TG/T;->Tn:I

    sub-int v0, p0, v0

    sget v1, Lcom/txznet/comm/ui/TG/T;->Ty:I

    sub-int/2addr v0, v1

    sput v0, Lcom/txznet/comm/ui/TG/T;->TJ:I

    .line 366
    sget v0, Lcom/txznet/comm/ui/TG/T;->Te:I

    sub-int v0, p0, v0

    sget v1, Lcom/txznet/comm/ui/TG/T;->Tn:I

    sub-int/2addr v0, v1

    sget v1, Lcom/txznet/comm/ui/TG/T;->Ty:I

    sub-int/2addr v0, v1

    sput v0, Lcom/txznet/comm/ui/TG/T;->TW:I

    goto :goto_0

    .line 380
    :pswitch_5
    invoke-static {}, Lcom/txznet/comm/ui/TG/T;->T()I

    move-result v0

    packed-switch v0, :pswitch_data_3

    .line 386
    sput p0, Lcom/txznet/comm/ui/TG/T;->TJ:I

    .line 387
    sget v0, Lcom/txznet/comm/ui/TG/T;->Te:I

    sub-int v0, p0, v0

    sget v1, Lcom/txznet/comm/ui/TG/T;->Ty:I

    sub-int/2addr v0, v1

    sput v0, Lcom/txznet/comm/ui/TG/T;->TW:I

    goto :goto_0

    .line 382
    :pswitch_6
    sput p0, Lcom/txznet/comm/ui/TG/T;->TJ:I

    .line 383
    sget v0, Lcom/txznet/comm/ui/TG/T;->Te:I

    sub-int v0, p0, v0

    sget v1, Lcom/txznet/comm/ui/TG/T;->Tn:I

    sub-int/2addr v0, v1

    sput v0, Lcom/txznet/comm/ui/TG/T;->TW:I

    goto :goto_0

    .line 356
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 373
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_5
        :pswitch_1
    .end packed-switch

    .line 358
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_3
    .end packed-switch

    .line 380
    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_6
    .end packed-switch
.end method

.method public static T2(Landroid/view/View;)V
    .locals 11
    .param p0, "view"    # Landroid/view/View;

    .prologue
    const/4 v10, 0x0

    const v9, 0x3fd1eb85    # 1.64f

    const/4 v8, 0x4

    const/16 v7, 0x1e0

    const/4 v6, 0x1

    .line 146
    const-string v4, "y64"

    invoke-static {v4}, Lcom/txznet/comm/ui/TG/T3;->TN(Ljava/lang/String;)F

    move-result v4

    float-to-int v4, v4

    sput v4, Lcom/txznet/comm/ui/TG/T;->Te:I

    .line 147
    const-string v4, "y66"

    invoke-static {v4}, Lcom/txznet/comm/ui/TG/T3;->TN(Ljava/lang/String;)F

    move-result v4

    float-to-int v4, v4

    sput v4, Lcom/txznet/comm/ui/TG/T;->Tw:I

    .line 148
    const-string v4, "y80"

    invoke-static {v4}, Lcom/txznet/comm/ui/TG/T3;->TN(Ljava/lang/String;)F

    move-result v4

    float-to-int v4, v4

    sput v4, Lcom/txznet/comm/ui/TG/T;->Ty:I

    .line 149
    const-string v4, "y100"

    invoke-static {v4}, Lcom/txznet/comm/ui/TG/T3;->TN(Ljava/lang/String;)F

    move-result v4

    float-to-int v4, v4

    sput v4, Lcom/txznet/comm/ui/TG/T;->Tn:I

    .line 151
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 152
    .local v2, "outRect":Landroid/graphics/Rect;
    invoke-virtual {p0, v2}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 154
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v3

    .line 155
    .local v3, "width":I
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 156
    .local v0, "height":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "width:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",height:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/txznet/comm/T3/T/Te;->T(Ljava/lang/String;)I

    .line 157
    int-to-float v4, v3

    int-to-float v5, v0

    div-float v1, v4, v5

    .line 158
    .local v1, "mAspectRatio":F
    sput v6, Lcom/txznet/comm/ui/TG/T;->TN:I

    .line 159
    if-ge v3, v7, :cond_0

    if-ge v0, v7, :cond_0

    .line 160
    sput v6, Lcom/txznet/comm/ui/TG/T;->T:I

    .line 161
    sget v4, Lcom/txznet/comm/ui/TG/T;->Ty:I

    sput v4, Lcom/txznet/comm/ui/TG/T;->TG:I

    .line 162
    sput v8, Lcom/txznet/comm/ui/TG/T;->TR:I

    .line 163
    sput-boolean v6, Lcom/txznet/comm/ui/TG/T;->T3:Z

    .line 192
    :goto_0
    invoke-static {v0}, Lcom/txznet/comm/ui/TG/T;->T2(I)V

    .line 193
    invoke-static {v6}, Lcom/txznet/comm/ui/TG/T;->T(Z)I

    .line 194
    return-void

    .line 164
    :cond_0
    const/16 v4, 0x316

    if-lt v3, v4, :cond_1

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v4, v1, v4

    if-gtz v4, :cond_2

    :cond_1
    cmpl-float v4, v1, v9

    if-lez v4, :cond_6

    .line 165
    :cond_2
    const/16 v4, 0x190

    if-lt v0, v4, :cond_3

    if-ge v0, v7, :cond_3

    .line 166
    sput v6, Lcom/txznet/comm/ui/TG/T;->T:I

    .line 167
    sget v4, Lcom/txznet/comm/ui/TG/T;->Ty:I

    sput v4, Lcom/txznet/comm/ui/TG/T;->TG:I

    .line 168
    sput-boolean v6, Lcom/txznet/comm/ui/TG/T;->T3:Z

    .line 181
    :goto_1
    sput v8, Lcom/txznet/comm/ui/TG/T;->TR:I

    goto :goto_0

    .line 169
    :cond_3
    if-lt v0, v7, :cond_4

    const/16 v4, 0x258

    if-ge v0, v4, :cond_4

    .line 170
    const/4 v4, 0x3

    sput v4, Lcom/txznet/comm/ui/TG/T;->T:I

    .line 171
    sget v4, Lcom/txznet/comm/ui/TG/T;->Ty:I

    sput v4, Lcom/txznet/comm/ui/TG/T;->TG:I

    .line 172
    sput-boolean v6, Lcom/txznet/comm/ui/TG/T;->T3:Z

    goto :goto_1

    .line 173
    :cond_4
    const/16 v4, 0x258

    if-lt v0, v4, :cond_5

    .line 174
    sput v8, Lcom/txznet/comm/ui/TG/T;->T:I

    .line 175
    sget v4, Lcom/txznet/comm/ui/TG/T;->Ty:I

    sput v4, Lcom/txznet/comm/ui/TG/T;->TG:I

    .line 176
    sput-boolean v10, Lcom/txznet/comm/ui/TG/T;->T3:Z

    goto :goto_1

    .line 178
    :cond_5
    sget v4, Lcom/txznet/comm/ui/TG/T;->Ty:I

    sput v4, Lcom/txznet/comm/ui/TG/T;->TG:I

    .line 179
    sput-boolean v6, Lcom/txznet/comm/ui/TG/T;->T3:Z

    goto :goto_1

    .line 182
    :cond_6
    if-lt v3, v7, :cond_7

    const/16 v4, 0x320

    if-lt v3, v4, :cond_8

    :cond_7
    cmpg-float v4, v1, v9

    if-gtz v4, :cond_9

    .line 183
    :cond_8
    const/4 v4, 0x3

    sput v4, Lcom/txznet/comm/ui/TG/T;->T:I

    .line 184
    sget v4, Lcom/txznet/comm/ui/TG/T;->Ty:I

    sput v4, Lcom/txznet/comm/ui/TG/T;->TG:I

    .line 185
    sput v8, Lcom/txznet/comm/ui/TG/T;->TR:I

    .line 186
    sput-boolean v10, Lcom/txznet/comm/ui/TG/T;->T3:Z

    goto :goto_0

    .line 188
    :cond_9
    sget v4, Lcom/txznet/comm/ui/TG/T;->Ty:I

    sput v4, Lcom/txznet/comm/ui/TG/T;->TG:I

    .line 189
    sput-boolean v6, Lcom/txznet/comm/ui/TG/T;->T3:Z

    goto :goto_0
.end method

.method public static T3()I
    .locals 1

    .prologue
    .line 259
    sget v0, Lcom/txznet/comm/ui/TG/T;->TN:I

    return v0
.end method

.method public static T3(Ljava/lang/String;)I
    .locals 2
    .param p0, "attrName"    # Ljava/lang/String;

    .prologue
    const/4 v0, -0x1

    .line 595
    sget-object v1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    .line 596
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 608
    :cond_0
    :goto_0
    return v0

    .line 599
    :cond_1
    const-string v1, "comment"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 600
    const/4 v0, -0x2

    goto :goto_0

    .line 602
    :cond_2
    const-string v1, "color"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 603
    const/4 v0, 0x1

    goto :goto_0

    .line 605
    :cond_3
    const-string v1, "size"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 606
    const/4 v0, 0x2

    goto :goto_0
.end method

.method static synthetic T3(I)V
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 28
    invoke-static {p0}, Lcom/txznet/comm/ui/TG/T;->T2(I)V

    return-void
.end method

.method public static T3(Landroid/view/View;)V
    .locals 11
    .param p0, "view"    # Landroid/view/View;

    .prologue
    const/4 v10, 0x3

    const v9, 0x3fd1eb85    # 1.64f

    const/4 v8, 0x4

    const/16 v7, 0x1e0

    const/4 v6, 0x1

    .line 92
    const-string v4, "y64"

    invoke-static {v4}, Lcom/txznet/comm/ui/TG/T3;->TN(Ljava/lang/String;)F

    move-result v4

    float-to-int v4, v4

    sput v4, Lcom/txznet/comm/ui/TG/T;->Te:I

    .line 93
    const-string v4, "y66"

    invoke-static {v4}, Lcom/txznet/comm/ui/TG/T3;->TN(Ljava/lang/String;)F

    move-result v4

    float-to-int v4, v4

    sput v4, Lcom/txznet/comm/ui/TG/T;->Tw:I

    .line 94
    const-string v4, "y80"

    invoke-static {v4}, Lcom/txznet/comm/ui/TG/T3;->TN(Ljava/lang/String;)F

    move-result v4

    float-to-int v4, v4

    sput v4, Lcom/txznet/comm/ui/TG/T;->Ty:I

    .line 95
    const-string v4, "y100"

    invoke-static {v4}, Lcom/txznet/comm/ui/TG/T3;->TN(Ljava/lang/String;)F

    move-result v4

    float-to-int v4, v4

    sput v4, Lcom/txznet/comm/ui/TG/T;->Tn:I

    .line 97
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 98
    .local v2, "outRect":Landroid/graphics/Rect;
    invoke-virtual {p0, v2}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 100
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v3

    .line 101
    .local v3, "width":I
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 102
    .local v0, "height":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "width:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",height:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/txznet/comm/T3/T/Te;->T(Ljava/lang/String;)I

    .line 103
    int-to-float v4, v3

    int-to-float v5, v0

    div-float v1, v4, v5

    .line 104
    .local v1, "mAspectRatio":F
    const/4 v4, 0x2

    sput v4, Lcom/txznet/comm/ui/TG/T;->TN:I

    .line 105
    if-ge v3, v7, :cond_0

    if-ge v0, v7, :cond_0

    .line 106
    sput v6, Lcom/txznet/comm/ui/TG/T;->T:I

    .line 107
    sget v4, Lcom/txznet/comm/ui/TG/T;->Ty:I

    sput v4, Lcom/txznet/comm/ui/TG/T;->TG:I

    .line 108
    sput v8, Lcom/txznet/comm/ui/TG/T;->TR:I

    .line 109
    sput-boolean v6, Lcom/txznet/comm/ui/TG/T;->T3:Z

    .line 138
    :goto_0
    invoke-static {v0}, Lcom/txznet/comm/ui/TG/T;->T2(I)V

    .line 139
    invoke-static {v6}, Lcom/txznet/comm/ui/TG/T;->T(Z)I

    .line 140
    return-void

    .line 110
    :cond_0
    const/16 v4, 0x316

    if-lt v3, v4, :cond_1

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v4, v1, v4

    if-gtz v4, :cond_2

    :cond_1
    cmpl-float v4, v1, v9

    if-lez v4, :cond_6

    .line 111
    :cond_2
    const/16 v4, 0x190

    if-lt v0, v4, :cond_3

    if-ge v0, v7, :cond_3

    .line 112
    sput v6, Lcom/txznet/comm/ui/TG/T;->T:I

    .line 113
    sget v4, Lcom/txznet/comm/ui/TG/T;->Ty:I

    sput v4, Lcom/txznet/comm/ui/TG/T;->TG:I

    .line 114
    sput-boolean v6, Lcom/txznet/comm/ui/TG/T;->T3:Z

    .line 127
    :goto_1
    sput v8, Lcom/txznet/comm/ui/TG/T;->TR:I

    goto :goto_0

    .line 115
    :cond_3
    if-lt v0, v7, :cond_4

    const/16 v4, 0x258

    if-ge v0, v4, :cond_4

    .line 116
    sput v10, Lcom/txznet/comm/ui/TG/T;->T:I

    .line 117
    sget v4, Lcom/txznet/comm/ui/TG/T;->Ty:I

    sput v4, Lcom/txznet/comm/ui/TG/T;->TG:I

    .line 118
    sput-boolean v6, Lcom/txznet/comm/ui/TG/T;->T3:Z

    goto :goto_1

    .line 119
    :cond_4
    const/16 v4, 0x258

    if-lt v0, v4, :cond_5

    .line 120
    sput v8, Lcom/txznet/comm/ui/TG/T;->T:I

    .line 121
    sget v4, Lcom/txznet/comm/ui/TG/T;->Ty:I

    sput v4, Lcom/txznet/comm/ui/TG/T;->TG:I

    .line 122
    const/4 v4, 0x0

    sput-boolean v4, Lcom/txznet/comm/ui/TG/T;->T3:Z

    goto :goto_1

    .line 124
    :cond_5
    sget v4, Lcom/txznet/comm/ui/TG/T;->Ty:I

    sput v4, Lcom/txznet/comm/ui/TG/T;->TG:I

    .line 125
    sput-boolean v6, Lcom/txznet/comm/ui/TG/T;->T3:Z

    goto :goto_1

    .line 128
    :cond_6
    if-lt v3, v7, :cond_7

    const/16 v4, 0x320

    if-lt v3, v4, :cond_8

    :cond_7
    cmpg-float v4, v1, v9

    if-gtz v4, :cond_9

    .line 129
    :cond_8
    sput v10, Lcom/txznet/comm/ui/TG/T;->T:I

    .line 130
    sget v4, Lcom/txznet/comm/ui/TG/T;->Ty:I

    sput v4, Lcom/txznet/comm/ui/TG/T;->TG:I

    .line 131
    sput v8, Lcom/txznet/comm/ui/TG/T;->TR:I

    .line 132
    sput-boolean v6, Lcom/txznet/comm/ui/TG/T;->T3:Z

    goto :goto_0

    .line 134
    :cond_9
    sget v4, Lcom/txznet/comm/ui/TG/T;->Ty:I

    sput v4, Lcom/txznet/comm/ui/TG/T;->TG:I

    .line 135
    sput-boolean v6, Lcom/txznet/comm/ui/TG/T;->T3:Z

    goto :goto_0
.end method

.method public static TN()Ljava/lang/String;
    .locals 2

    .prologue
    .line 287
    sget-object v0, Lcom/txznet/comm/ui/TG/T;->To:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 288
    sget-object v0, Lcom/txznet/comm/ui/TG/T;->TH:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 289
    const-string v0, "theme_package"

    invoke-static {v0}, Lcom/txznet/comm/ui/TG/T3;->Te(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/txznet/comm/ui/TG/T;->TH:Ljava/lang/String;

    .line 290
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mThemePackage:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/txznet/comm/ui/TG/T;->TH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/txznet/comm/T3/T/Te;->T(Ljava/lang/String;)I

    .line 292
    :cond_0
    sget-object v0, Lcom/txznet/comm/ui/TG/T;->TH:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 293
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/txznet/comm/ui/TG/T;->TH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".view."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/txznet/comm/ui/TG/T;->To:Ljava/lang/String;

    .line 296
    :cond_1
    sget-object v0, Lcom/txznet/comm/ui/TG/T;->To:Ljava/lang/String;

    return-object v0
.end method

.method public static TN(Landroid/view/View;)V
    .locals 11
    .param p0, "view"    # Landroid/view/View;

    .prologue
    const/4 v10, 0x2

    const v9, 0x3fd1eb85    # 1.64f

    const/4 v8, 0x4

    const/16 v7, 0x1e0

    const/4 v6, 0x1

    .line 200
    const-string v4, "y64"

    invoke-static {v4}, Lcom/txznet/comm/ui/TG/T3;->TN(Ljava/lang/String;)F

    move-result v4

    float-to-int v4, v4

    sput v4, Lcom/txznet/comm/ui/TG/T;->Te:I

    .line 201
    const-string v4, "y66"

    invoke-static {v4}, Lcom/txznet/comm/ui/TG/T3;->TN(Ljava/lang/String;)F

    move-result v4

    float-to-int v4, v4

    sput v4, Lcom/txznet/comm/ui/TG/T;->Tw:I

    .line 202
    const-string v4, "y80"

    invoke-static {v4}, Lcom/txznet/comm/ui/TG/T3;->TN(Ljava/lang/String;)F

    move-result v4

    float-to-int v4, v4

    sput v4, Lcom/txznet/comm/ui/TG/T;->Ty:I

    .line 203
    const-string v4, "y100"

    invoke-static {v4}, Lcom/txznet/comm/ui/TG/T3;->TN(Ljava/lang/String;)F

    move-result v4

    float-to-int v4, v4

    sput v4, Lcom/txznet/comm/ui/TG/T;->Tn:I

    .line 204
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 205
    .local v2, "outRect":Landroid/graphics/Rect;
    invoke-virtual {p0, v2}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 207
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v3

    .line 208
    .local v3, "width":I
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 209
    .local v0, "height":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "width:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",height:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/txznet/comm/T3/T/Te;->T(Ljava/lang/String;)I

    .line 210
    int-to-float v4, v3

    int-to-float v5, v0

    div-float v1, v4, v5

    .line 211
    .local v1, "mAspectRatio":F
    if-ge v3, v7, :cond_0

    if-ge v0, v7, :cond_0

    .line 212
    sput v6, Lcom/txznet/comm/ui/TG/T;->T:I

    .line 213
    sget v4, Lcom/txznet/comm/ui/TG/T;->Ty:I

    sput v4, Lcom/txznet/comm/ui/TG/T;->TG:I

    .line 214
    sput v8, Lcom/txznet/comm/ui/TG/T;->TR:I

    .line 215
    sput-boolean v6, Lcom/txznet/comm/ui/TG/T;->T3:Z

    .line 247
    :goto_0
    invoke-static {v0}, Lcom/txznet/comm/ui/TG/T;->T2(I)V

    .line 248
    invoke-static {v6}, Lcom/txznet/comm/ui/TG/T;->T(Z)I

    .line 249
    return-void

    .line 216
    :cond_0
    const/16 v4, 0x316

    if-lt v3, v4, :cond_1

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v4, v1, v4

    if-gtz v4, :cond_2

    :cond_1
    cmpl-float v4, v1, v9

    if-lez v4, :cond_6

    .line 217
    :cond_2
    const/16 v4, 0x190

    if-lt v0, v4, :cond_3

    if-ge v0, v7, :cond_3

    .line 218
    sput v6, Lcom/txznet/comm/ui/TG/T;->T:I

    .line 219
    sget v4, Lcom/txznet/comm/ui/TG/T;->Ty:I

    sput v4, Lcom/txznet/comm/ui/TG/T;->TG:I

    .line 220
    sput-boolean v6, Lcom/txznet/comm/ui/TG/T;->T3:Z

    .line 233
    :goto_1
    sput v6, Lcom/txznet/comm/ui/TG/T;->TN:I

    .line 234
    sput v8, Lcom/txznet/comm/ui/TG/T;->TR:I

    goto :goto_0

    .line 221
    :cond_3
    if-lt v0, v7, :cond_4

    const/16 v4, 0x258

    if-ge v0, v4, :cond_4

    .line 222
    const/4 v4, 0x3

    sput v4, Lcom/txznet/comm/ui/TG/T;->T:I

    .line 223
    sget v4, Lcom/txznet/comm/ui/TG/T;->Ty:I

    sput v4, Lcom/txznet/comm/ui/TG/T;->TG:I

    .line 224
    sput-boolean v6, Lcom/txznet/comm/ui/TG/T;->T3:Z

    goto :goto_1

    .line 225
    :cond_4
    const/16 v4, 0x258

    if-lt v0, v4, :cond_5

    .line 226
    sput v8, Lcom/txznet/comm/ui/TG/T;->T:I

    .line 227
    sget v4, Lcom/txznet/comm/ui/TG/T;->Ty:I

    sput v4, Lcom/txznet/comm/ui/TG/T;->TG:I

    .line 228
    const/4 v4, 0x0

    sput-boolean v4, Lcom/txznet/comm/ui/TG/T;->T3:Z

    goto :goto_1

    .line 230
    :cond_5
    sget v4, Lcom/txznet/comm/ui/TG/T;->Ty:I

    sput v4, Lcom/txznet/comm/ui/TG/T;->TG:I

    .line 231
    sput-boolean v6, Lcom/txznet/comm/ui/TG/T;->T3:Z

    goto :goto_1

    .line 235
    :cond_6
    if-lt v3, v7, :cond_7

    const/16 v4, 0x320

    if-lt v3, v4, :cond_8

    :cond_7
    cmpg-float v4, v1, v9

    if-gtz v4, :cond_9

    .line 236
    :cond_8
    const/4 v4, 0x3

    sput v4, Lcom/txznet/comm/ui/TG/T;->T:I

    .line 237
    sget v4, Lcom/txznet/comm/ui/TG/T;->Ty:I

    sput v4, Lcom/txznet/comm/ui/TG/T;->TG:I

    .line 238
    sput v10, Lcom/txznet/comm/ui/TG/T;->TN:I

    .line 239
    sput v8, Lcom/txznet/comm/ui/TG/T;->TR:I

    .line 240
    sput-boolean v6, Lcom/txznet/comm/ui/TG/T;->T3:Z

    goto :goto_0

    .line 242
    :cond_9
    sget v4, Lcom/txznet/comm/ui/TG/T;->Ty:I

    sput v4, Lcom/txznet/comm/ui/TG/T;->TG:I

    .line 243
    sput-boolean v6, Lcom/txznet/comm/ui/TG/T;->T3:Z

    .line 244
    sput v10, Lcom/txznet/comm/ui/TG/T;->T:I

    goto :goto_0
.end method

.method public static Te()Ljava/lang/String;
    .locals 2

    .prologue
    .line 303
    sget-object v0, Lcom/txznet/comm/ui/TG/T;->TQ:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 304
    sget-object v0, Lcom/txznet/comm/ui/TG/T;->TH:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 305
    const-string v0, "theme_package"

    invoke-static {v0}, Lcom/txznet/comm/ui/TG/T3;->Te(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/txznet/comm/ui/TG/T;->TH:Ljava/lang/String;

    .line 307
    :cond_0
    sget-object v0, Lcom/txznet/comm/ui/TG/T;->TH:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 308
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/txznet/comm/ui/TG/T;->TH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".config."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/txznet/comm/ui/TG/T;->TQ:Ljava/lang/String;

    .line 311
    :cond_1
    sget-object v0, Lcom/txznet/comm/ui/TG/T;->TQ:Ljava/lang/String;

    return-object v0
.end method

.method public static Te(Landroid/view/View;)V
    .locals 2
    .param p0, "contentView"    # Landroid/view/View;

    .prologue
    .line 333
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/txznet/comm/ui/TG/T$1;

    invoke-direct {v1, p0}, Lcom/txznet/comm/ui/TG/T$1;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 349
    return-void
.end method

.method public static Tw()Ljava/lang/String;
    .locals 2

    .prologue
    .line 318
    sget-object v0, Lcom/txznet/comm/ui/TG/T;->TL:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 319
    sget-object v0, Lcom/txznet/comm/ui/TG/T;->TH:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 320
    const-string v0, "theme_package"

    invoke-static {v0}, Lcom/txznet/comm/ui/TG/T3;->Te(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/txznet/comm/ui/TG/T;->TH:Ljava/lang/String;

    .line 322
    :cond_0
    sget-object v0, Lcom/txznet/comm/ui/TG/T;->TH:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 323
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/txznet/comm/ui/TG/T;->TH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".keyevent.KeyEventDispatcher"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/txznet/comm/ui/TG/T;->TL:Ljava/lang/String;

    .line 326
    :cond_1
    sget-object v0, Lcom/txznet/comm/ui/TG/T;->TL:Ljava/lang/String;

    return-object v0
.end method
