.class Lcom/hongfans/carmedia/MediaAPI$6;
.super Ljava/lang/Object;
.source "MediaAPI.java"

# interfaces
.implements Lcom/hongfans/carmedia/processes/AndroidAppProcessLoader$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hongfans/carmedia/MediaAPI;->opeanUrl(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hongfans/carmedia/MediaAPI;

.field final synthetic val$paramContext:Landroid/content/Context;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/hongfans/carmedia/MediaAPI;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/hongfans/carmedia/MediaAPI;

    .prologue
    .line 377
    iput-object p1, p0, Lcom/hongfans/carmedia/MediaAPI$6;->this$0:Lcom/hongfans/carmedia/MediaAPI;

    iput-object p2, p0, Lcom/hongfans/carmedia/MediaAPI$6;->val$paramContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/hongfans/carmedia/MediaAPI$6;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/hongfans/carmedia/processes/models/AndroidAppProcess;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 381
    .local p1, "processes":Ljava/util/List;, "Ljava/util/List<Lcom/hongfans/carmedia/processes/models/AndroidAppProcess;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 382
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.hongfans.action.opeanurl"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 383
    .local v1, "localIntent":Landroid/content/Intent;
    const-string v3, "hongfans_key"

    # getter for: Lcom/hongfans/carmedia/MediaAPI;->mKey:Ljava/lang/String;
    invoke-static {}, Lcom/hongfans/carmedia/MediaAPI;->access$900()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 384
    iget-object v3, p0, Lcom/hongfans/carmedia/MediaAPI$6;->this$0:Lcom/hongfans/carmedia/MediaAPI;

    iget-object v4, p0, Lcom/hongfans/carmedia/MediaAPI$6;->val$paramContext:Landroid/content/Context;

    # invokes: Lcom/hongfans/carmedia/MediaAPI;->getDefBundle(Landroid/content/Context;)Landroid/os/Bundle;
    invoke-static {v3, v4}, Lcom/hongfans/carmedia/MediaAPI;->access$1000(Lcom/hongfans/carmedia/MediaAPI;Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v0

    .line 385
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "url"

    iget-object v4, p0, Lcom/hongfans/carmedia/MediaAPI$6;->val$url:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 387
    iget-object v3, p0, Lcom/hongfans/carmedia/MediaAPI$6;->val$paramContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 388
    const-string v3, "opeanUrl \u53d1\u9001\u5e7f\u64ad"

    invoke-static {v3}, Lcom/hongfans/carmedia/Util;->print(Ljava/lang/String;)V

    .line 390
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 391
    .local v2, "values":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "url"

    iget-object v4, p0, Lcom/hongfans/carmedia/MediaAPI$6;->val$url:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    iget-object v3, p0, Lcom/hongfans/carmedia/MediaAPI$6;->this$0:Lcom/hongfans/carmedia/MediaAPI;

    iget-object v4, p0, Lcom/hongfans/carmedia/MediaAPI$6;->val$paramContext:Landroid/content/Context;

    const-string v5, "com.hongfans.rearview.MainActivity"

    # invokes: Lcom/hongfans/carmedia/MediaAPI;->toActivity(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    invoke-static {v3, v4, v5, v2}, Lcom/hongfans/carmedia/MediaAPI;->access$1100(Lcom/hongfans/carmedia/MediaAPI;Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 393
    const-string v3, "opeanUrl MainActivity"

    invoke-static {v3}, Lcom/hongfans/carmedia/Util;->print(Ljava/lang/String;)V

    .line 400
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "localIntent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 395
    .end local v2    # "values":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 396
    .restart local v2    # "values":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "url"

    iget-object v4, p0, Lcom/hongfans/carmedia/MediaAPI$6;->val$url:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    iget-object v3, p0, Lcom/hongfans/carmedia/MediaAPI$6;->this$0:Lcom/hongfans/carmedia/MediaAPI;

    iget-object v4, p0, Lcom/hongfans/carmedia/MediaAPI$6;->val$paramContext:Landroid/content/Context;

    const-string v5, "com.hongfans.rearview.SplashActivity"

    # invokes: Lcom/hongfans/carmedia/MediaAPI;->toActivity(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    invoke-static {v3, v4, v5, v2}, Lcom/hongfans/carmedia/MediaAPI;->access$1100(Lcom/hongfans/carmedia/MediaAPI;Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 398
    const-string v3, "opeanUrl SplashActivity"

    invoke-static {v3}, Lcom/hongfans/carmedia/Util;->print(Ljava/lang/String;)V

    goto :goto_0
.end method
