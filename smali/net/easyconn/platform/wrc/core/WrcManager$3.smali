.class Lnet/easyconn/platform/wrc/core/WrcManager$3;
.super Ljava/lang/Thread;
.source "WrcManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/easyconn/platform/wrc/core/WrcManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lnet/easyconn/platform/wrc/core/WrcManager;


# direct methods
.method constructor <init>(Lnet/easyconn/platform/wrc/core/WrcManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 423
    iput-object p1, p0, Lnet/easyconn/platform/wrc/core/WrcManager$3;->e:Lnet/easyconn/platform/wrc/core/WrcManager;

    iput-object p2, p0, Lnet/easyconn/platform/wrc/core/WrcManager$3;->a:Ljava/lang/String;

    iput-object p3, p0, Lnet/easyconn/platform/wrc/core/WrcManager$3;->b:Ljava/lang/String;

    iput-object p4, p0, Lnet/easyconn/platform/wrc/core/WrcManager$3;->c:Ljava/lang/String;

    iput-object p5, p0, Lnet/easyconn/platform/wrc/core/WrcManager$3;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 426
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/WrcManager$3;->a:Ljava/lang/String;

    iget-object v3, p0, Lnet/easyconn/platform/wrc/core/WrcManager$3;->b:Ljava/lang/String;

    iget-object v4, p0, Lnet/easyconn/platform/wrc/core/WrcManager$3;->c:Ljava/lang/String;

    iget-object v5, p0, Lnet/easyconn/platform/wrc/core/WrcManager$3;->d:Ljava/lang/String;

    invoke-static {v0, v3, v4, v5}, Lnet/easyconn/platform/wrc/core/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 429
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 431
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 432
    const-string v0, "code"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 433
    if-eqz v0, :cond_2

    .line 434
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 437
    sparse-switch v1, :sswitch_data_0

    move v0, v1

    .line 469
    :goto_0
    iget-object v3, p0, Lnet/easyconn/platform/wrc/core/WrcManager$3;->e:Lnet/easyconn/platform/wrc/core/WrcManager;

    invoke-static {v3}, Lnet/easyconn/platform/wrc/core/WrcManager;->b(Lnet/easyconn/platform/wrc/core/WrcManager;)Z

    move-result v3

    if-eq v2, v3, :cond_0

    invoke-static {}, Lnet/easyconn/platform/wrc/core/WrcManager;->a()Landroid/content/Context;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 470
    iget-object v3, p0, Lnet/easyconn/platform/wrc/core/WrcManager$3;->e:Lnet/easyconn/platform/wrc/core/WrcManager;

    invoke-static {v3, v2}, Lnet/easyconn/platform/wrc/core/WrcManager;->a(Lnet/easyconn/platform/wrc/core/WrcManager;Z)Z

    .line 471
    invoke-static {}, Lnet/easyconn/platform/wrc/core/WrcManager;->a()Landroid/content/Context;

    move-result-object v3

    const-string v4, "net.easyconn.platform.wrc"

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 472
    const-string v3, "wrc.key.value"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 473
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 474
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 476
    iget-object v1, p0, Lnet/easyconn/platform/wrc/core/WrcManager$3;->e:Lnet/easyconn/platform/wrc/core/WrcManager;

    invoke-static {v1}, Lnet/easyconn/platform/wrc/core/WrcManager;->b(Lnet/easyconn/platform/wrc/core/WrcManager;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 477
    iget-object v1, p0, Lnet/easyconn/platform/wrc/core/WrcManager$3;->e:Lnet/easyconn/platform/wrc/core/WrcManager;

    invoke-static {}, Lnet/easyconn/platform/wrc/core/j;->a()Lnet/easyconn/platform/wrc/core/j;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/easyconn/platform/wrc/core/WrcManager;->a(Lnet/easyconn/platform/wrc/core/WrcManager;Lnet/easyconn/platform/wrc/core/j;)Lnet/easyconn/platform/wrc/core/j;

    .line 478
    iget-object v1, p0, Lnet/easyconn/platform/wrc/core/WrcManager$3;->e:Lnet/easyconn/platform/wrc/core/WrcManager;

    invoke-static {v1}, Lnet/easyconn/platform/wrc/core/WrcManager;->a(Lnet/easyconn/platform/wrc/core/WrcManager;)Lnet/easyconn/platform/wrc/core/j;

    move-result-object v1

    invoke-static {}, Lnet/easyconn/platform/wrc/core/WrcManager;->a()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lnet/easyconn/platform/wrc/core/WrcManager$3;->e:Lnet/easyconn/platform/wrc/core/WrcManager;

    invoke-static {v3}, Lnet/easyconn/platform/wrc/core/WrcManager;->d(Lnet/easyconn/platform/wrc/core/WrcManager;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lnet/easyconn/platform/wrc/core/WrcManager$3;->e:Lnet/easyconn/platform/wrc/core/WrcManager;

    invoke-static {v4}, Lnet/easyconn/platform/wrc/core/WrcManager;->e(Lnet/easyconn/platform/wrc/core/WrcManager;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lnet/easyconn/platform/wrc/core/j;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    iget-object v1, p0, Lnet/easyconn/platform/wrc/core/WrcManager$3;->e:Lnet/easyconn/platform/wrc/core/WrcManager;

    invoke-static {v1, v0}, Lnet/easyconn/platform/wrc/core/WrcManager;->a(Lnet/easyconn/platform/wrc/core/WrcManager;I)V

    .line 483
    :cond_0
    iget-object v1, p0, Lnet/easyconn/platform/wrc/core/WrcManager$3;->e:Lnet/easyconn/platform/wrc/core/WrcManager;

    invoke-static {v1}, Lnet/easyconn/platform/wrc/core/WrcManager;->b(Lnet/easyconn/platform/wrc/core/WrcManager;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lnet/easyconn/platform/wrc/core/WrcManager;->a()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 484
    iget-object v1, p0, Lnet/easyconn/platform/wrc/core/WrcManager$3;->e:Lnet/easyconn/platform/wrc/core/WrcManager;

    invoke-virtual {v1}, Lnet/easyconn/platform/wrc/core/WrcManager;->disconnect()V

    .line 485
    iget-object v1, p0, Lnet/easyconn/platform/wrc/core/WrcManager$3;->e:Lnet/easyconn/platform/wrc/core/WrcManager;

    invoke-virtual {v1}, Lnet/easyconn/platform/wrc/core/WrcManager;->stopWrcScan()V

    .line 486
    iget-object v1, p0, Lnet/easyconn/platform/wrc/core/WrcManager$3;->e:Lnet/easyconn/platform/wrc/core/WrcManager;

    invoke-static {v1, v0}, Lnet/easyconn/platform/wrc/core/WrcManager;->a(Lnet/easyconn/platform/wrc/core/WrcManager;I)V

    .line 488
    :cond_1
    return-void

    .line 440
    :sswitch_0
    :try_start_1
    iget-object v3, p0, Lnet/easyconn/platform/wrc/core/WrcManager$3;->e:Lnet/easyconn/platform/wrc/core/WrcManager;

    invoke-static {v3}, Lnet/easyconn/platform/wrc/core/WrcManager;->c(Lnet/easyconn/platform/wrc/core/WrcManager;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 459
    :catch_0
    move-exception v0

    .line 460
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    move v0, v1

    .line 463
    goto/16 :goto_0

    :sswitch_1
    move v2, v1

    .line 443
    goto/16 :goto_0

    :sswitch_2
    move v2, v1

    .line 445
    goto/16 :goto_0

    :sswitch_3
    move v2, v1

    .line 447
    goto/16 :goto_0

    :sswitch_4
    move v2, v1

    .line 449
    goto/16 :goto_0

    :cond_2
    move v0, v1

    .line 457
    goto/16 :goto_0

    :cond_3
    move v0, v1

    .line 466
    goto/16 :goto_0

    .line 437
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x2329 -> :sswitch_2
        0x232a -> :sswitch_1
        0x232b -> :sswitch_4
        0x232c -> :sswitch_3
    .end sparse-switch
.end method
