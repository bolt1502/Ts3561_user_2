.class Lcom/txznet/sdk/bean/NavVoicePlugin$1;
.super Lcom/txznet/comm/T3/T/T$T;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txznet/sdk/bean/NavVoicePlugin;->registerVoiceCmds(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic T2:Lcom/txznet/sdk/bean/NavVoicePlugin;


# direct methods
.method constructor <init>(Lcom/txznet/sdk/bean/NavVoicePlugin;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/txznet/sdk/bean/NavVoicePlugin$1;->T2:Lcom/txznet/sdk/bean/NavVoicePlugin;

    invoke-direct {p0}, Lcom/txznet/comm/T3/T/T$T;-><init>()V

    return-void
.end method


# virtual methods
.method public getTaskId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    const-string v0, "TASK_VOICE_CMD"

    return-object v0
.end method

.method public needAsrState()Z
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x0

    return v0
.end method

.method public onCommandSelected(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "command"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0xa

    .line 81
    const-string v1, "GUOYU_MM"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 82
    iget-object v1, p0, Lcom/txznet/sdk/bean/NavVoicePlugin$1;->T2:Lcom/txznet/sdk/bean/NavVoicePlugin;

    invoke-virtual {p0}, Lcom/txznet/sdk/bean/NavVoicePlugin$1;->isWakeupResult()Z

    move-result v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/txznet/sdk/bean/NavVoicePlugin;->T(Lcom/txznet/sdk/bean/NavVoicePlugin;ZI)V

    .line 133
    :cond_0
    :goto_0
    return-void

    .line 85
    :cond_1
    const-string v1, "GUOYU_GG"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 86
    iget-object v1, p0, Lcom/txznet/sdk/bean/NavVoicePlugin$1;->T2:Lcom/txznet/sdk/bean/NavVoicePlugin;

    invoke-virtual {p0}, Lcom/txznet/sdk/bean/NavVoicePlugin$1;->isWakeupResult()Z

    move-result v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/txznet/sdk/bean/NavVoicePlugin;->T(Lcom/txznet/sdk/bean/NavVoicePlugin;ZI)V

    goto :goto_0

    .line 89
    :cond_2
    const-string v1, "ZHOUXINGXING"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 90
    iget-object v1, p0, Lcom/txznet/sdk/bean/NavVoicePlugin$1;->T2:Lcom/txznet/sdk/bean/NavVoicePlugin;

    invoke-virtual {p0}, Lcom/txznet/sdk/bean/NavVoicePlugin$1;->isWakeupResult()Z

    move-result v2

    const/4 v3, 0x2

    invoke-static {v1, v2, v3}, Lcom/txznet/sdk/bean/NavVoicePlugin;->T(Lcom/txznet/sdk/bean/NavVoicePlugin;ZI)V

    goto :goto_0

    .line 93
    :cond_3
    const-string v1, "GUANGDONGHUA"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 94
    iget-object v1, p0, Lcom/txznet/sdk/bean/NavVoicePlugin$1;->T2:Lcom/txznet/sdk/bean/NavVoicePlugin;

    invoke-virtual {p0}, Lcom/txznet/sdk/bean/NavVoicePlugin$1;->isWakeupResult()Z

    move-result v2

    const/4 v3, 0x3

    invoke-static {v1, v2, v3}, Lcom/txznet/sdk/bean/NavVoicePlugin;->T(Lcom/txznet/sdk/bean/NavVoicePlugin;ZI)V

    goto :goto_0

    .line 97
    :cond_4
    const-string v1, "LINZHILIN"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 98
    iget-object v1, p0, Lcom/txznet/sdk/bean/NavVoicePlugin$1;->T2:Lcom/txznet/sdk/bean/NavVoicePlugin;

    invoke-virtual {p0}, Lcom/txznet/sdk/bean/NavVoicePlugin$1;->isWakeupResult()Z

    move-result v2

    const/4 v3, 0x4

    invoke-static {v1, v2, v3}, Lcom/txznet/sdk/bean/NavVoicePlugin;->T(Lcom/txznet/sdk/bean/NavVoicePlugin;ZI)V

    goto :goto_0

    .line 101
    :cond_5
    const-string v1, "GUODEGANG"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 102
    iget-object v1, p0, Lcom/txznet/sdk/bean/NavVoicePlugin$1;->T2:Lcom/txznet/sdk/bean/NavVoicePlugin;

    invoke-virtual {p0}, Lcom/txznet/sdk/bean/NavVoicePlugin$1;->isWakeupResult()Z

    move-result v2

    const/4 v3, 0x5

    invoke-static {v1, v2, v3}, Lcom/txznet/sdk/bean/NavVoicePlugin;->T(Lcom/txznet/sdk/bean/NavVoicePlugin;ZI)V

    goto :goto_0

    .line 105
    :cond_6
    const-string v1, "DONGBEIHUA"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 106
    iget-object v1, p0, Lcom/txznet/sdk/bean/NavVoicePlugin$1;->T2:Lcom/txznet/sdk/bean/NavVoicePlugin;

    invoke-virtual {p0}, Lcom/txznet/sdk/bean/NavVoicePlugin$1;->isWakeupResult()Z

    move-result v2

    const/4 v3, 0x6

    invoke-static {v1, v2, v3}, Lcom/txznet/sdk/bean/NavVoicePlugin;->T(Lcom/txznet/sdk/bean/NavVoicePlugin;ZI)V

    goto :goto_0

    .line 109
    :cond_7
    const-string v1, "HENANHUA"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 110
    iget-object v1, p0, Lcom/txznet/sdk/bean/NavVoicePlugin$1;->T2:Lcom/txznet/sdk/bean/NavVoicePlugin;

    invoke-virtual {p0}, Lcom/txznet/sdk/bean/NavVoicePlugin$1;->isWakeupResult()Z

    move-result v2

    const/4 v3, 0x7

    invoke-static {v1, v2, v3}, Lcom/txznet/sdk/bean/NavVoicePlugin;->T(Lcom/txznet/sdk/bean/NavVoicePlugin;ZI)V

    goto/16 :goto_0

    .line 113
    :cond_8
    const-string v1, "HUNANHUA"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 114
    iget-object v1, p0, Lcom/txznet/sdk/bean/NavVoicePlugin$1;->T2:Lcom/txznet/sdk/bean/NavVoicePlugin;

    invoke-virtual {p0}, Lcom/txznet/sdk/bean/NavVoicePlugin$1;->isWakeupResult()Z

    move-result v2

    const/16 v3, 0x8

    invoke-static {v1, v2, v3}, Lcom/txznet/sdk/bean/NavVoicePlugin;->T(Lcom/txznet/sdk/bean/NavVoicePlugin;ZI)V

    goto/16 :goto_0

    .line 117
    :cond_9
    const-string v1, "SICHUANHUA"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 118
    iget-object v1, p0, Lcom/txznet/sdk/bean/NavVoicePlugin$1;->T2:Lcom/txznet/sdk/bean/NavVoicePlugin;

    invoke-virtual {p0}, Lcom/txznet/sdk/bean/NavVoicePlugin$1;->isWakeupResult()Z

    move-result v2

    const/16 v3, 0x9

    invoke-static {v1, v2, v3}, Lcom/txznet/sdk/bean/NavVoicePlugin;->T(Lcom/txznet/sdk/bean/NavVoicePlugin;ZI)V

    goto/16 :goto_0

    .line 121
    :cond_a
    const-string v1, "TAIWANHUA"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 122
    iget-object v1, p0, Lcom/txznet/sdk/bean/NavVoicePlugin$1;->T2:Lcom/txznet/sdk/bean/NavVoicePlugin;

    invoke-virtual {p0}, Lcom/txznet/sdk/bean/NavVoicePlugin$1;->isWakeupResult()Z

    move-result v2

    invoke-static {v1, v2, v3}, Lcom/txznet/sdk/bean/NavVoicePlugin;->T(Lcom/txznet/sdk/bean/NavVoicePlugin;ZI)V

    goto/16 :goto_0

    .line 125
    :cond_b
    const-string v1, "SWITCH_ROLE"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 126
    iget-object v1, p0, Lcom/txznet/sdk/bean/NavVoicePlugin$1;->T2:Lcom/txznet/sdk/bean/NavVoicePlugin;

    iget v1, v1, Lcom/txznet/sdk/bean/NavVoicePlugin;->TN:I

    add-int/lit8 v0, v1, 0x1

    .line 127
    .local v0, "role":I
    if-le v0, v3, :cond_c

    .line 128
    const/4 v0, 0x0

    .line 130
    :cond_c
    iget-object v1, p0, Lcom/txznet/sdk/bean/NavVoicePlugin$1;->T2:Lcom/txznet/sdk/bean/NavVoicePlugin;

    invoke-virtual {p0}, Lcom/txznet/sdk/bean/NavVoicePlugin$1;->isWakeupResult()Z

    move-result v2

    invoke-static {v1, v2, v0}, Lcom/txznet/sdk/bean/NavVoicePlugin;->T(Lcom/txznet/sdk/bean/NavVoicePlugin;ZI)V

    goto/16 :goto_0
.end method
