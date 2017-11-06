.class final Lcom/txznet/T3/T/T$3;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txznet/T3/T/T;->T(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic T:Landroid/widget/EditText;

.field final synthetic T2:Ljava/lang/String;

.field final synthetic T3:Landroid/content/Context;

.field final synthetic TN:I

.field final synthetic Te:Lcom/txznet/T3/T/Te;


# direct methods
.method constructor <init>(Landroid/widget/EditText;Landroid/content/Context;Ljava/lang/String;ILcom/txznet/T3/T/Te;)V
    .locals 0

    .prologue
    .line 139
    iput-object p1, p0, Lcom/txznet/T3/T/T$3;->T:Landroid/widget/EditText;

    iput-object p2, p0, Lcom/txznet/T3/T/T$3;->T3:Landroid/content/Context;

    iput-object p3, p0, Lcom/txznet/T3/T/T$3;->T2:Ljava/lang/String;

    iput p4, p0, Lcom/txznet/T3/T/T$3;->TN:I

    iput-object p5, p0, Lcom/txznet/T3/T/T$3;->Te:Lcom/txznet/T3/T/Te;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, -0x1

    .line 142
    iget-object v0, p0, Lcom/txznet/T3/T/T$3;->T:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/txznet/T3/T/T$3;->T:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 143
    :cond_0
    monitor-enter p1

    .line 144
    :try_start_0
    iget-object v0, p0, Lcom/txznet/T3/T/T$3;->T3:Landroid/content/Context;

    const-string v1, "\u5524\u9192\u8bcd\u4e0d\u80fd\u4e3a\u7a7a"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 145
    monitor-exit p1

    .line 171
    :goto_0
    return-void

    .line 145
    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 146
    :cond_1
    iget-object v0, p0, Lcom/txznet/T3/T/T$3;->T:Landroid/widget/EditText;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/txznet/T3/T/T$3;->T:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_2

    .line 147
    monitor-enter p1

    .line 148
    :try_start_1
    iget-object v0, p0, Lcom/txznet/T3/T/T$3;->T3:Landroid/content/Context;

    const-string v1, "\u4eb2\uff0c\u5524\u9192\u8bcd\u5b57\u6570\u592a\u5c11\uff0c\u8bc6\u522b\u6548\u679c\u4e0d\u597d\u54e6"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 149
    monitor-exit p1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    .line 151
    :cond_2
    sget-object v0, Lcom/txznet/T3/T/T;->T3:Ljava/util/ArrayList;

    if-nez v0, :cond_3

    .line 152
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/txznet/T3/T/T;->T3:Ljava/util/ArrayList;

    .line 154
    :cond_3
    iget-object v0, p0, Lcom/txznet/T3/T/T$3;->T2:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/txznet/T3/T/T$3;->TN:I

    if-ne v0, v2, :cond_6

    .line 155
    sget-object v0, Lcom/txznet/T3/T/T;->T3:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/txznet/T3/T/T$3;->T:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 156
    monitor-enter p1

    .line 157
    :try_start_2
    iget-object v0, p0, Lcom/txznet/T3/T/T$3;->T3:Landroid/content/Context;

    const-string v1, "\u60a8\u6dfb\u52a0\u7684\u5524\u9192\u8bcd\u5df2\u5b58\u5728"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 158
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 167
    :cond_4
    :goto_1
    invoke-static {}, Lcom/txznet/sdk/TXZConfigManager;->getInstance()Lcom/txznet/sdk/TXZConfigManager;

    move-result-object v1

    sget-object v0, Lcom/txznet/T3/T/T;->T3:Ljava/util/ArrayList;

    sget-object v2, Lcom/txznet/T3/T/T;->T3:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/txznet/sdk/TXZConfigManager;->setWakeupKeywordsNew([Ljava/lang/String;)V

    .line 169
    iget-object v0, p0, Lcom/txznet/T3/T/T$3;->Te:Lcom/txznet/T3/T/Te;

    invoke-virtual {v0}, Lcom/txznet/T3/T/Te;->dismiss()V

    goto/16 :goto_0

    .line 158
    :catchall_2
    move-exception v0

    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v0

    .line 160
    :cond_5
    sget-object v0, Lcom/txznet/T3/T/T;->T3:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/txznet/T3/T/T$3;->T:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 161
    sget-object v0, Lcom/txznet/T3/T/T;->T:Lcom/txznet/T3/T/TN;

    invoke-virtual {v0}, Lcom/txznet/T3/T/TN;->notifyDataSetChanged()V

    goto :goto_1

    .line 163
    :cond_6
    iget-object v0, p0, Lcom/txznet/T3/T/T$3;->T2:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    iget v0, p0, Lcom/txznet/T3/T/T$3;->TN:I

    if-eq v0, v2, :cond_4

    .line 164
    sget-object v0, Lcom/txznet/T3/T/T;->T3:Ljava/util/ArrayList;

    iget v1, p0, Lcom/txznet/T3/T/T$3;->TN:I

    iget-object v2, p0, Lcom/txznet/T3/T/T$3;->T:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 165
    sget-object v0, Lcom/txznet/T3/T/T;->T:Lcom/txznet/T3/T/TN;

    invoke-virtual {v0}, Lcom/txznet/T3/T/TN;->notifyDataSetChanged()V

    goto :goto_1
.end method
