.class public Lcom/txznet/comm/T3/T/TG;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/txznet/comm/T3/T/TG$T;
    }
.end annotation


# static fields
.field private static T:Lcom/txznet/comm/T3/T/TG$T;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x0

    sput-object v0, Lcom/txznet/comm/T3/T/TG;->T:Lcom/txznet/comm/T3/T/TG$T;

    return-void
.end method

.method public static T(Ljava/lang/String;[B)V
    .locals 10
    .param p0, "event"    # Ljava/lang/String;
    .param p1, "data"    # [B

    .prologue
    .line 177
    sget-object v5, Lcom/txznet/comm/T3/T/TG;->T:Lcom/txznet/comm/T3/T/TG$T;

    if-nez v5, :cond_1

    .line 178
    const-string v5, "RecorderUtil"

    const-string v6, "recordCallBack == null"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    :cond_0
    :goto_0
    return-void

    .line 182
    :cond_1
    const-string v5, "end"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 183
    new-instance v2, Lcom/txznet/comm/TN/T;

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, p1}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v2, v5}, Lcom/txznet/comm/TN/T;-><init>(Ljava/lang/String;)V

    .line 184
    .local v2, "json":Lcom/txznet/comm/TN/T;
    sget-object v6, Lcom/txznet/comm/T3/T/TG;->T:Lcom/txznet/comm/T3/T/TG$T;

    const-string v5, "length"

    const-class v7, Ljava/lang/Integer;

    invoke-virtual {v2, v5, v7}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v6, v5}, Lcom/txznet/comm/T3/T/TG$T;->T(I)V

    goto :goto_0

    .line 185
    .end local v2    # "json":Lcom/txznet/comm/TN/T;
    :cond_2
    const-string v5, "parse"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 186
    new-instance v2, Lcom/txznet/comm/TN/T;

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, p1}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v2, v5}, Lcom/txznet/comm/TN/T;-><init>(Ljava/lang/String;)V

    .line 187
    .restart local v2    # "json":Lcom/txznet/comm/TN/T;
    sget-object v7, Lcom/txznet/comm/T3/T/TG;->T:Lcom/txznet/comm/T3/T/TG$T;

    const-string v5, "length"

    const-class v6, Ljava/lang/Integer;

    invoke-virtual {v2, v5, v6}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const-string v5, "text"

    const-class v6, Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "url"

    const-class v9, Ljava/lang/String;

    invoke-virtual {v2, v6, v9}, Lcom/txznet/comm/TN/T;->T(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v8, v5, v6}, Lcom/txznet/comm/T3/T/TG$T;->T(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 188
    .end local v2    # "json":Lcom/txznet/comm/TN/T;
    :cond_3
    const-string v5, "cancel"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 189
    sget-object v5, Lcom/txznet/comm/T3/T/TG;->T:Lcom/txznet/comm/T3/T/TG$T;

    invoke-virtual {v5}, Lcom/txznet/comm/T3/T/TG$T;->TN()V

    goto :goto_0

    .line 190
    :cond_4
    const-string v5, "begin"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 191
    sget-object v5, Lcom/txznet/comm/T3/T/TG;->T:Lcom/txznet/comm/T3/T/TG$T;

    invoke-virtual {v5}, Lcom/txznet/comm/T3/T/TG$T;->T()V

    goto :goto_0

    .line 192
    :cond_5
    const-string v5, "mute"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 193
    const/4 v3, 0x0

    .line 195
    .local v3, "time":I
    :try_start_0
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, p1}, Ljava/lang/String;-><init>([B)V

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 199
    :goto_1
    sget-object v5, Lcom/txznet/comm/T3/T/TG;->T:Lcom/txznet/comm/T3/T/TG$T;

    invoke-virtual {v5, v3}, Lcom/txznet/comm/T3/T/TG$T;->TN(I)V

    goto/16 :goto_0

    .line 196
    :catch_0
    move-exception v0

    .line 197
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v5, "RecorderUtil"

    const-string v6, "convert string to int error"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 200
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v3    # "time":I
    :cond_6
    const-string v5, "mutetimeout"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 201
    sget-object v5, Lcom/txznet/comm/T3/T/TG;->T:Lcom/txznet/comm/T3/T/TG$T;

    invoke-virtual {v5}, Lcom/txznet/comm/T3/T/TG$T;->T2()V

    goto/16 :goto_0

    .line 202
    :cond_7
    const-string v5, "speechtimeout"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 203
    sget-object v5, Lcom/txznet/comm/T3/T/TG;->T:Lcom/txznet/comm/T3/T/TG$T;

    invoke-virtual {v5}, Lcom/txznet/comm/T3/T/TG$T;->T3()V

    goto/16 :goto_0

    .line 204
    :cond_8
    const-string v5, "volume"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 205
    const/4 v4, 0x0

    .line 207
    .local v4, "vol":I
    :try_start_1
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, p1}, Ljava/lang/String;-><init>([B)V

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v4

    .line 211
    :goto_2
    sget-object v5, Lcom/txznet/comm/T3/T/TG;->T:Lcom/txznet/comm/T3/T/TG$T;

    invoke-virtual {v5, v4}, Lcom/txznet/comm/T3/T/TG$T;->T2(I)V

    goto/16 :goto_0

    .line 208
    :catch_1
    move-exception v0

    .line 209
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    const-string v5, "RecorderUtil"

    const-string v6, "convert string to int error"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 212
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v4    # "vol":I
    :cond_9
    const-string v5, "error"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 213
    const/4 v1, 0x0

    .line 215
    .local v1, "err":I
    :try_start_2
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, p1}, Ljava/lang/String;-><init>([B)V

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v1

    .line 219
    :goto_3
    sget-object v5, Lcom/txznet/comm/T3/T/TG;->T:Lcom/txznet/comm/T3/T/TG$T;

    invoke-virtual {v5, v1}, Lcom/txznet/comm/T3/T/TG$T;->T3(I)V

    goto/16 :goto_0

    .line 216
    :catch_2
    move-exception v0

    .line 217
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    const-string v5, "RecorderUtil"

    const-string v6, "convert string to int error"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 220
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v1    # "err":I
    :cond_a
    const-string v5, "mp3buf"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 221
    sget-object v5, Lcom/txznet/comm/T3/T/TG;->T:Lcom/txznet/comm/T3/T/TG$T;

    invoke-virtual {v5, p1}, Lcom/txznet/comm/T3/T/TG$T;->T([B)V

    goto/16 :goto_0
.end method
