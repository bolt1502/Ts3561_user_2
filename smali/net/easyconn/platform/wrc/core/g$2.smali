.class Lnet/easyconn/platform/wrc/core/g$2;
.super Ljava/lang/Object;
.source "WrcCheckManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/easyconn/platform/wrc/core/g;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lnet/easyconn/platform/wrc/core/g;


# direct methods
.method constructor <init>(Lnet/easyconn/platform/wrc/core/g;)V
    .locals 0

    .prologue
    .line 145
    iput-object p1, p0, Lnet/easyconn/platform/wrc/core/g$2;->a:Lnet/easyconn/platform/wrc/core/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 149
    :try_start_0
    iget-object v1, p0, Lnet/easyconn/platform/wrc/core/g$2;->a:Lnet/easyconn/platform/wrc/core/g;

    invoke-static {v1}, Lnet/easyconn/platform/wrc/core/g;->a(Lnet/easyconn/platform/wrc/core/g;)Ljava/util/concurrent/Semaphore;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 151
    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 152
    const-string v2, "0yO16=5iJnx8TwLL"

    iget-object v3, p0, Lnet/easyconn/platform/wrc/core/g$2;->a:Lnet/easyconn/platform/wrc/core/g;

    invoke-static {v3}, Lnet/easyconn/platform/wrc/core/g;->b(Lnet/easyconn/platform/wrc/core/g;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    const-string v2, "0Y0i6/0y4vx8WMvn"

    iget-object v3, p0, Lnet/easyconn/platform/wrc/core/g$2;->a:Lnet/easyconn/platform/wrc/core/g;

    invoke-static {v3}, Lnet/easyconn/platform/wrc/core/g;->c(Lnet/easyconn/platform/wrc/core/g;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    const-string v2, "WzWEe/CnuELL"

    iget-object v3, p0, Lnet/easyconn/platform/wrc/core/g$2;->a:Lnet/easyconn/platform/wrc/core/g;

    invoke-static {v3}, Lnet/easyconn/platform/wrc/core/g;->d(Lnet/easyconn/platform/wrc/core/g;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    const-string v2, "TMxN6M3n"

    iget-object v3, p0, Lnet/easyconn/platform/wrc/core/g$2;->a:Lnet/easyconn/platform/wrc/core/g;

    invoke-static {v3}, Lnet/easyconn/platform/wrc/core/g;->c(Lnet/easyconn/platform/wrc/core/g;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lnet/easyconn/platform/wrc/core/l;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    const-string v2, "J/2d04LL"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    const-string v2, "J/2d0TxM4zOc4uBCJz5c4N+b0/x8"

    invoke-static {v2, v1}, Lnet/easyconn/platform/wrc/core/c;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    .line 160
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    .line 162
    :try_start_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 163
    const-string v1, "code"

    const/4 v3, -0x1

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 164
    if-nez v1, :cond_5

    .line 165
    const-string v1, "context"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 166
    if-eqz v2, :cond_0

    .line 167
    const-string v1, "uuids"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 168
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 169
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v1, v0

    .line 170
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-ge v1, v0, :cond_1

    .line 172
    :try_start_2
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 170
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 173
    :catch_0
    move-exception v0

    .line 174
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 202
    :catch_1
    move-exception v0

    .line 203
    :try_start_4
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 209
    :cond_0
    :goto_2
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/g$2;->a:Lnet/easyconn/platform/wrc/core/g;

    invoke-static {v0}, Lnet/easyconn/platform/wrc/core/g;->a(Lnet/easyconn/platform/wrc/core/g;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 211
    :goto_3
    return-void

    .line 175
    :catch_2
    move-exception v0

    .line 176
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 206
    :catch_3
    move-exception v0

    .line 207
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 209
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/g$2;->a:Lnet/easyconn/platform/wrc/core/g;

    invoke-static {v0}, Lnet/easyconn/platform/wrc/core/g;->a(Lnet/easyconn/platform/wrc/core/g;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    goto :goto_3

    .line 179
    :cond_1
    :try_start_7
    invoke-static {}, Lnet/easyconn/platform/wrc/core/i;->a()Lnet/easyconn/platform/wrc/core/i;

    move-result-object v0

    iget-object v1, p0, Lnet/easyconn/platform/wrc/core/g$2;->a:Lnet/easyconn/platform/wrc/core/g;

    invoke-static {v1}, Lnet/easyconn/platform/wrc/core/g;->c(Lnet/easyconn/platform/wrc/core/g;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Lnet/easyconn/platform/wrc/core/i;->a(Landroid/content/Context;Ljava/util/List;)V

    .line 181
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/g$2;->a:Lnet/easyconn/platform/wrc/core/g;

    invoke-static {v0, v4}, Lnet/easyconn/platform/wrc/core/g;->a(Lnet/easyconn/platform/wrc/core/g;Ljava/util/List;)Ljava/util/List;

    .line 183
    :cond_2
    const-string v0, "last_update_time"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 184
    iget-object v2, p0, Lnet/easyconn/platform/wrc/core/g$2;->a:Lnet/easyconn/platform/wrc/core/g;

    invoke-static {v2}, Lnet/easyconn/platform/wrc/core/g;->c(Lnet/easyconn/platform/wrc/core/g;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "net.easyconn.platform.wrc"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 185
    iget-object v3, p0, Lnet/easyconn/platform/wrc/core/g$2;->a:Lnet/easyconn/platform/wrc/core/g;

    invoke-static {v3}, Lnet/easyconn/platform/wrc/core/g;->e(Lnet/easyconn/platform/wrc/core/g;)J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-nez v3, :cond_4

    .line 186
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "time"

    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 195
    :cond_3
    :goto_4
    iget-object v2, p0, Lnet/easyconn/platform/wrc/core/g$2;->a:Lnet/easyconn/platform/wrc/core/g;

    invoke-static {v2, v0, v1}, Lnet/easyconn/platform/wrc/core/g;->a(Lnet/easyconn/platform/wrc/core/g;J)J
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_2

    .line 209
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lnet/easyconn/platform/wrc/core/g$2;->a:Lnet/easyconn/platform/wrc/core/g;

    invoke-static {v1}, Lnet/easyconn/platform/wrc/core/g;->a(Lnet/easyconn/platform/wrc/core/g;)Ljava/util/concurrent/Semaphore;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    throw v0

    .line 188
    :cond_4
    :try_start_8
    iget-object v3, p0, Lnet/easyconn/platform/wrc/core/g$2;->a:Lnet/easyconn/platform/wrc/core/g;

    invoke-static {v3}, Lnet/easyconn/platform/wrc/core/g;->e(Lnet/easyconn/platform/wrc/core/g;)J

    move-result-wide v3

    cmp-long v3, v0, v3

    if-lez v3, :cond_3

    .line 189
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "time"

    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 190
    iget-object v2, p0, Lnet/easyconn/platform/wrc/core/g$2;->a:Lnet/easyconn/platform/wrc/core/g;

    invoke-static {v2}, Lnet/easyconn/platform/wrc/core/g;->f(Lnet/easyconn/platform/wrc/core/g;)Lnet/easyconn/platform/wrc/core/g$b;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 191
    iget-object v2, p0, Lnet/easyconn/platform/wrc/core/g$2;->a:Lnet/easyconn/platform/wrc/core/g;

    invoke-static {v2}, Lnet/easyconn/platform/wrc/core/g;->f(Lnet/easyconn/platform/wrc/core/g;)Lnet/easyconn/platform/wrc/core/g$b;

    move-result-object v2

    const/16 v3, 0x2379

    invoke-interface {v2, v3}, Lnet/easyconn/platform/wrc/core/g$b;->a(I)V

    goto :goto_4

    .line 198
    :cond_5
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/g$2;->a:Lnet/easyconn/platform/wrc/core/g;

    invoke-static {v0}, Lnet/easyconn/platform/wrc/core/g;->f(Lnet/easyconn/platform/wrc/core/g;)Lnet/easyconn/platform/wrc/core/g$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lnet/easyconn/platform/wrc/core/g$2;->a:Lnet/easyconn/platform/wrc/core/g;

    invoke-static {v0}, Lnet/easyconn/platform/wrc/core/g;->f(Lnet/easyconn/platform/wrc/core/g;)Lnet/easyconn/platform/wrc/core/g$b;

    move-result-object v0

    invoke-interface {v0, v1}, Lnet/easyconn/platform/wrc/core/g$b;->a(I)V
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_2
.end method
