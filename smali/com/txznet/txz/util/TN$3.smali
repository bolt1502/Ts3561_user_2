.class final Lcom/txznet/txz/util/TN$3;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txznet/txz/util/TN;->T3(Lcom/txznet/txz/util/TN$T;Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;Ljava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic T:Ljava/lang/String;

.field final synthetic T2:Ljava/util/zip/ZipFile;

.field final synthetic T3:Ljava/util/zip/ZipEntry;

.field final synthetic TN:Lcom/txznet/txz/util/TN$T;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/util/zip/ZipEntry;Ljava/util/zip/ZipFile;Lcom/txznet/txz/util/TN$T;)V
    .locals 0

    .prologue
    .line 709
    iput-object p1, p0, Lcom/txznet/txz/util/TN$3;->T:Ljava/lang/String;

    iput-object p2, p0, Lcom/txznet/txz/util/TN$3;->T3:Ljava/util/zip/ZipEntry;

    iput-object p3, p0, Lcom/txznet/txz/util/TN$3;->T2:Ljava/util/zip/ZipFile;

    iput-object p4, p0, Lcom/txznet/txz/util/TN$3;->TN:Lcom/txznet/txz/util/TN$T;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    .prologue
    .line 713
    const/4 v1, 0x1

    .line 715
    .local v1, "bSame":Z
    new-instance v5, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/txznet/txz/util/TN$3;->T:Ljava/lang/String;

    invoke-direct {v5, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 716
    .local v5, "f":Ljava/io/File;
    const/4 v7, 0x0

    .line 717
    .local v7, "inFile":Ljava/io/FileInputStream;
    const/4 v9, 0x0

    .line 720
    .local v9, "inZip":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/txznet/txz/util/TN$3;->T3:Ljava/util/zip/ZipEntry;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v16

    cmp-long v14, v14, v16

    if-eqz v14, :cond_3

    .line 721
    const/4 v1, 0x0

    .line 722
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "check unzip file not same size["

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v15

    invoke-virtual/range {v14 .. v16}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/txznet/txz/util/TN$3;->T3:Ljava/util/zip/ZipEntry;

    invoke-virtual {v15}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v15

    invoke-virtual/range {v14 .. v16}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ": "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/txznet/txz/util/TN$3;->T:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/txznet/comm/T3/T/Te;->TN(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_8
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 783
    :goto_0
    if-eqz v7, :cond_0

    .line 785
    :try_start_1
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 789
    :cond_0
    :goto_1
    if-eqz v9, :cond_1

    .line 791
    :try_start_2
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    .line 795
    :cond_1
    :goto_2
    if-nez v1, :cond_2

    .line 796
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "check unzip file not same: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/txznet/txz/util/TN$3;->T:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/txznet/comm/T3/T/Te;->TN(Ljava/lang/String;)I

    .line 797
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 798
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/txznet/txz/util/TN$3;->TN:Lcom/txznet/txz/util/TN$T;

    const/4 v15, 0x1

    iput-boolean v15, v14, Lcom/txznet/txz/util/TN$T;->T:Z

    .line 800
    :cond_2
    return-void

    .line 727
    :cond_3
    :try_start_3
    new-instance v8, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/txznet/txz/util/TN$3;->T:Ljava/lang/String;

    invoke-direct {v8, v14}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_8
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 728
    .end local v7    # "inFile":Ljava/io/FileInputStream;
    .local v8, "inFile":Ljava/io/FileInputStream;
    :try_start_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/txznet/txz/util/TN$3;->T2:Ljava/util/zip/ZipFile;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/txznet/txz/util/TN$3;->T3:Ljava/util/zip/ZipEntry;

    invoke-virtual {v14, v15}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v9

    .line 729
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/txznet/txz/util/TN$3;->TN:Lcom/txznet/txz/util/TN$T;

    iget-object v2, v14, Lcom/txznet/txz/util/TN$T;->T3:[B

    .line 730
    .local v2, "bufFile":[B
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/txznet/txz/util/TN$3;->TN:Lcom/txznet/txz/util/TN$T;

    iget-object v3, v14, Lcom/txznet/txz/util/TN$T;->T2:[B

    .line 731
    .local v3, "bufZip":[B
    const/4 v12, 0x0

    .line 732
    .local v12, "nRemainFile":I
    const/4 v13, 0x0

    .line 735
    .local v13, "nRemainZip":I
    :goto_3
    const/4 v10, 0x0

    .line 736
    .local v10, "nReadFile":I
    :goto_4
    if-nez v10, :cond_4

    .line 737
    array-length v14, v2

    add-int/lit8 v14, v14, 0x0

    invoke-virtual {v8, v2, v12, v14}, Ljava/io/FileInputStream;->read([BII)I

    move-result v10

    goto :goto_4

    .line 741
    :cond_4
    if-nez v12, :cond_5

    if-gez v10, :cond_5

    move-object v7, v8

    .line 742
    .end local v8    # "inFile":Ljava/io/FileInputStream;
    .restart local v7    # "inFile":Ljava/io/FileInputStream;
    goto :goto_0

    .line 744
    .end local v7    # "inFile":Ljava/io/FileInputStream;
    .restart local v8    # "inFile":Ljava/io/FileInputStream;
    :cond_5
    add-int/lit8 v12, v10, 0x0

    .line 746
    :goto_5
    if-ge v13, v12, :cond_6

    .line 747
    sub-int v14, v12, v13

    invoke-virtual {v9, v3, v13, v14}, Ljava/io/InputStream;->read([BII)I

    move-result v11

    .line 749
    .local v11, "nReadZip":I
    if-gez v11, :cond_7

    .line 750
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "check unzip read zip file error: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/txznet/txz/util/TN$3;->T3:Ljava/util/zip/ZipEntry;

    invoke-virtual {v15}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/txznet/comm/T3/T/Te;->TN(Ljava/lang/String;)I

    .line 752
    const/4 v1, 0x0

    .line 757
    .end local v11    # "nReadZip":I
    :cond_6
    if-nez v1, :cond_8

    move-object v7, v8

    .line 758
    .end local v8    # "inFile":Ljava/io/FileInputStream;
    .restart local v7    # "inFile":Ljava/io/FileInputStream;
    goto/16 :goto_0

    .line 755
    .end local v7    # "inFile":Ljava/io/FileInputStream;
    .restart local v8    # "inFile":Ljava/io/FileInputStream;
    .restart local v11    # "nReadZip":I
    :cond_7
    add-int/2addr v13, v11

    .line 756
    goto :goto_5

    .line 759
    .end local v11    # "nReadZip":I
    :cond_8
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_6
    if-ge v6, v12, :cond_9

    .line 760
    aget-byte v14, v2, v6

    aget-byte v15, v3, v6

    if-eq v14, v15, :cond_a

    .line 761
    const/4 v1, 0x0

    .line 762
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "check unzip file not same byte at "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ": "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/txznet/txz/util/TN$3;->T:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/txznet/comm/T3/T/Te;->TN(Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 767
    :cond_9
    if-nez v1, :cond_b

    move-object v7, v8

    .line 768
    .end local v8    # "inFile":Ljava/io/FileInputStream;
    .restart local v7    # "inFile":Ljava/io/FileInputStream;
    goto/16 :goto_0

    .line 759
    .end local v7    # "inFile":Ljava/io/FileInputStream;
    .restart local v8    # "inFile":Ljava/io/FileInputStream;
    :cond_a
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 769
    :cond_b
    const/4 v13, 0x0

    move v12, v13

    .line 772
    const-wide/16 v14, 0x14

    :try_start_5
    invoke-static {v14, v15}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_3

    .line 773
    :catch_0
    move-exception v4

    .line 774
    .local v4, "e":Ljava/lang/Exception;
    :try_start_6
    const-string v14, "sleep exception"

    invoke-static {v14}, Lcom/txznet/comm/T3/T/Te;->TN(Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto/16 :goto_3

    .line 778
    .end local v2    # "bufFile":[B
    .end local v3    # "bufZip":[B
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v6    # "i":I
    .end local v10    # "nReadFile":I
    .end local v12    # "nRemainFile":I
    .end local v13    # "nRemainZip":I
    :catch_1
    move-exception v4

    move-object v7, v8

    .line 779
    .end local v8    # "inFile":Ljava/io/FileInputStream;
    .restart local v4    # "e":Ljava/lang/Exception;
    .restart local v7    # "inFile":Ljava/io/FileInputStream;
    :goto_7
    const/4 v1, 0x0

    .line 780
    :try_start_7
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "check unzip file exception: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/txznet/txz/util/TN$3;->T:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/txznet/comm/T3/T/Te;->TN(Ljava/lang/String;)I

    .line 781
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 783
    if-eqz v7, :cond_c

    .line 785
    :try_start_8
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 789
    :cond_c
    :goto_8
    if-eqz v9, :cond_1

    .line 791
    :try_start_9
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    goto/16 :goto_2

    .line 792
    :catch_2
    move-exception v14

    goto/16 :goto_2

    .line 783
    .end local v4    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v14

    :goto_9
    if-eqz v7, :cond_d

    .line 785
    :try_start_a
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    .line 789
    :cond_d
    :goto_a
    if-eqz v9, :cond_e

    .line 791
    :try_start_b
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_7

    .line 793
    :cond_e
    :goto_b
    throw v14

    .line 786
    :catch_3
    move-exception v14

    goto/16 :goto_1

    .line 792
    :catch_4
    move-exception v14

    goto/16 :goto_2

    .line 786
    .restart local v4    # "e":Ljava/lang/Exception;
    :catch_5
    move-exception v14

    goto :goto_8

    .end local v4    # "e":Ljava/lang/Exception;
    :catch_6
    move-exception v15

    goto :goto_a

    .line 792
    :catch_7
    move-exception v15

    goto :goto_b

    .line 783
    .end local v7    # "inFile":Ljava/io/FileInputStream;
    .restart local v8    # "inFile":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v14

    move-object v7, v8

    .end local v8    # "inFile":Ljava/io/FileInputStream;
    .restart local v7    # "inFile":Ljava/io/FileInputStream;
    goto :goto_9

    .line 778
    :catch_8
    move-exception v4

    goto :goto_7
.end method
