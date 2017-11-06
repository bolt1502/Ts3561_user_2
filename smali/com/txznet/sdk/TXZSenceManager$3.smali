.class synthetic Lcom/txznet/sdk/TXZSenceManager$3;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/txznet/sdk/TXZSenceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic T:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 185
    invoke-static {}, Lcom/txznet/sdk/TXZSenceManager$SenceType;->values()[Lcom/txznet/sdk/TXZSenceManager$SenceType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/txznet/sdk/TXZSenceManager$3;->T:[I

    :try_start_0
    sget-object v0, Lcom/txznet/sdk/TXZSenceManager$3;->T:[I

    sget-object v1, Lcom/txznet/sdk/TXZSenceManager$SenceType;->SENCE_TYPE_ALL:Lcom/txznet/sdk/TXZSenceManager$SenceType;

    invoke-virtual {v1}, Lcom/txznet/sdk/TXZSenceManager$SenceType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_14

    :goto_0
    :try_start_1
    sget-object v0, Lcom/txznet/sdk/TXZSenceManager$3;->T:[I

    sget-object v1, Lcom/txznet/sdk/TXZSenceManager$SenceType;->SENCE_TYPE_WAKEUP:Lcom/txznet/sdk/TXZSenceManager$SenceType;

    invoke-virtual {v1}, Lcom/txznet/sdk/TXZSenceManager$SenceType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_13

    :goto_1
    :try_start_2
    sget-object v0, Lcom/txznet/sdk/TXZSenceManager$3;->T:[I

    sget-object v1, Lcom/txznet/sdk/TXZSenceManager$SenceType;->SENCE_TYPE_CALL:Lcom/txznet/sdk/TXZSenceManager$SenceType;

    invoke-virtual {v1}, Lcom/txznet/sdk/TXZSenceManager$SenceType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_12

    :goto_2
    :try_start_3
    sget-object v0, Lcom/txznet/sdk/TXZSenceManager$3;->T:[I

    sget-object v1, Lcom/txznet/sdk/TXZSenceManager$SenceType;->SENCE_TYPE_MUSIC:Lcom/txznet/sdk/TXZSenceManager$SenceType;

    invoke-virtual {v1}, Lcom/txznet/sdk/TXZSenceManager$SenceType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_11

    :goto_3
    :try_start_4
    sget-object v0, Lcom/txznet/sdk/TXZSenceManager$3;->T:[I

    sget-object v1, Lcom/txznet/sdk/TXZSenceManager$SenceType;->SENCE_TYPE_NAV:Lcom/txznet/sdk/TXZSenceManager$SenceType;

    invoke-virtual {v1}, Lcom/txznet/sdk/TXZSenceManager$SenceType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_10

    :goto_4
    :try_start_5
    sget-object v0, Lcom/txznet/sdk/TXZSenceManager$3;->T:[I

    sget-object v1, Lcom/txznet/sdk/TXZSenceManager$SenceType;->SENCE_TYPE_EMPTY:Lcom/txznet/sdk/TXZSenceManager$SenceType;

    invoke-virtual {v1}, Lcom/txznet/sdk/TXZSenceManager$SenceType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_f

    :goto_5
    :try_start_6
    sget-object v0, Lcom/txznet/sdk/TXZSenceManager$3;->T:[I

    sget-object v1, Lcom/txznet/sdk/TXZSenceManager$SenceType;->SENCE_TYPE_UNKNOW:Lcom/txznet/sdk/TXZSenceManager$SenceType;

    invoke-virtual {v1}, Lcom/txznet/sdk/TXZSenceManager$SenceType;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_e

    :goto_6
    :try_start_7
    sget-object v0, Lcom/txznet/sdk/TXZSenceManager$3;->T:[I

    sget-object v1, Lcom/txznet/sdk/TXZSenceManager$SenceType;->SENCE_TYPE_UNSUPPORT:Lcom/txznet/sdk/TXZSenceManager$SenceType;

    invoke-virtual {v1}, Lcom/txznet/sdk/TXZSenceManager$SenceType;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_d

    :goto_7
    :try_start_8
    sget-object v0, Lcom/txznet/sdk/TXZSenceManager$3;->T:[I

    sget-object v1, Lcom/txznet/sdk/TXZSenceManager$SenceType;->SENCE_TYPE_APP:Lcom/txznet/sdk/TXZSenceManager$SenceType;

    invoke-virtual {v1}, Lcom/txznet/sdk/TXZSenceManager$SenceType;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_c

    :goto_8
    :try_start_9
    sget-object v0, Lcom/txznet/sdk/TXZSenceManager$3;->T:[I

    sget-object v1, Lcom/txznet/sdk/TXZSenceManager$SenceType;->SENCE_TYPE_COMMAND:Lcom/txznet/sdk/TXZSenceManager$SenceType;

    invoke-virtual {v1}, Lcom/txznet/sdk/TXZSenceManager$SenceType;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_b

    :goto_9
    :try_start_a
    sget-object v0, Lcom/txznet/sdk/TXZSenceManager$3;->T:[I

    sget-object v1, Lcom/txznet/sdk/TXZSenceManager$SenceType;->SENCE_TYPE_LIMIT_NUMBER:Lcom/txznet/sdk/TXZSenceManager$SenceType;

    invoke-virtual {v1}, Lcom/txznet/sdk/TXZSenceManager$SenceType;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :goto_a
    :try_start_b
    sget-object v0, Lcom/txznet/sdk/TXZSenceManager$3;->T:[I

    sget-object v1, Lcom/txznet/sdk/TXZSenceManager$SenceType;->SENCE_TYPE_LOCATION:Lcom/txznet/sdk/TXZSenceManager$SenceType;

    invoke-virtual {v1}, Lcom/txznet/sdk/TXZSenceManager$SenceType;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_9

    :goto_b
    :try_start_c
    sget-object v0, Lcom/txznet/sdk/TXZSenceManager$3;->T:[I

    sget-object v1, Lcom/txznet/sdk/TXZSenceManager$SenceType;->SENCE_TYPE_POI_CHOICE:Lcom/txznet/sdk/TXZSenceManager$SenceType;

    invoke-virtual {v1}, Lcom/txznet/sdk/TXZSenceManager$SenceType;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_8

    :goto_c
    :try_start_d
    sget-object v0, Lcom/txznet/sdk/TXZSenceManager$3;->T:[I

    sget-object v1, Lcom/txznet/sdk/TXZSenceManager$SenceType;->SENCE_TYPE_SET_USER_WAKEUP_KEYWORDS:Lcom/txznet/sdk/TXZSenceManager$SenceType;

    invoke-virtual {v1}, Lcom/txznet/sdk/TXZSenceManager$SenceType;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_7

    :goto_d
    :try_start_e
    sget-object v0, Lcom/txznet/sdk/TXZSenceManager$3;->T:[I

    sget-object v1, Lcom/txznet/sdk/TXZSenceManager$SenceType;->SENCE_TYPE_STOCK:Lcom/txznet/sdk/TXZSenceManager$SenceType;

    invoke-virtual {v1}, Lcom/txznet/sdk/TXZSenceManager$SenceType;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_6

    :goto_e
    :try_start_f
    sget-object v0, Lcom/txznet/sdk/TXZSenceManager$3;->T:[I

    sget-object v1, Lcom/txznet/sdk/TXZSenceManager$SenceType;->SENCE_TYPE_TRAFFIC:Lcom/txznet/sdk/TXZSenceManager$SenceType;

    invoke-virtual {v1}, Lcom/txznet/sdk/TXZSenceManager$SenceType;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_5

    :goto_f
    :try_start_10
    sget-object v0, Lcom/txznet/sdk/TXZSenceManager$3;->T:[I

    sget-object v1, Lcom/txznet/sdk/TXZSenceManager$SenceType;->SENCE_TYPE_WEATHER:Lcom/txznet/sdk/TXZSenceManager$SenceType;

    invoke-virtual {v1}, Lcom/txznet/sdk/TXZSenceManager$SenceType;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_4

    :goto_10
    :try_start_11
    sget-object v0, Lcom/txznet/sdk/TXZSenceManager$3;->T:[I

    sget-object v1, Lcom/txznet/sdk/TXZSenceManager$SenceType;->SENCE_TYPE_HELP:Lcom/txznet/sdk/TXZSenceManager$SenceType;

    invoke-virtual {v1}, Lcom/txznet/sdk/TXZSenceManager$SenceType;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_3

    :goto_11
    :try_start_12
    sget-object v0, Lcom/txznet/sdk/TXZSenceManager$3;->T:[I

    sget-object v1, Lcom/txznet/sdk/TXZSenceManager$SenceType;->SENCE_TYPE_AUDIO:Lcom/txznet/sdk/TXZSenceManager$SenceType;

    invoke-virtual {v1}, Lcom/txznet/sdk/TXZSenceManager$SenceType;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_2

    :goto_12
    :try_start_13
    sget-object v0, Lcom/txznet/sdk/TXZSenceManager$3;->T:[I

    sget-object v1, Lcom/txznet/sdk/TXZSenceManager$SenceType;->SENCE_TYPE_SELECTOR:Lcom/txznet/sdk/TXZSenceManager$SenceType;

    invoke-virtual {v1}, Lcom/txznet/sdk/TXZSenceManager$SenceType;->ordinal()I

    move-result v1

    const/16 v2, 0x14

    aput v2, v0, v1
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_1

    :goto_13
    :try_start_14
    sget-object v0, Lcom/txznet/sdk/TXZSenceManager$3;->T:[I

    sget-object v1, Lcom/txznet/sdk/TXZSenceManager$SenceType;->SENCE_TYPE_MOVIE:Lcom/txznet/sdk/TXZSenceManager$SenceType;

    invoke-virtual {v1}, Lcom/txznet/sdk/TXZSenceManager$SenceType;->ordinal()I

    move-result v1

    const/16 v2, 0x15

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_0

    :goto_14
    return-void

    :catch_0
    move-exception v0

    goto :goto_14

    :catch_1
    move-exception v0

    goto :goto_13

    :catch_2
    move-exception v0

    goto :goto_12

    :catch_3
    move-exception v0

    goto :goto_11

    :catch_4
    move-exception v0

    goto :goto_10

    :catch_5
    move-exception v0

    goto :goto_f

    :catch_6
    move-exception v0

    goto :goto_e

    :catch_7
    move-exception v0

    goto :goto_d

    :catch_8
    move-exception v0

    goto :goto_c

    :catch_9
    move-exception v0

    goto :goto_b

    :catch_a
    move-exception v0

    goto/16 :goto_a

    :catch_b
    move-exception v0

    goto/16 :goto_9

    :catch_c
    move-exception v0

    goto/16 :goto_8

    :catch_d
    move-exception v0

    goto/16 :goto_7

    :catch_e
    move-exception v0

    goto/16 :goto_6

    :catch_f
    move-exception v0

    goto/16 :goto_5

    :catch_10
    move-exception v0

    goto/16 :goto_4

    :catch_11
    move-exception v0

    goto/16 :goto_3

    :catch_12
    move-exception v0

    goto/16 :goto_2

    :catch_13
    move-exception v0

    goto/16 :goto_1

    :catch_14
    move-exception v0

    goto/16 :goto_0
.end method
