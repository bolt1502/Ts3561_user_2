.class public Lcom/txznet/sdk/TXZAsrManager$AsrOption;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/txznet/sdk/TXZAsrManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AsrOption"
.end annotation


# instance fields
.field T:Ljava/lang/Integer;

.field T2:Ljava/lang/Integer;

.field T3:Ljava/lang/Integer;

.field TN:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 664
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 665
    iput-object v0, p0, Lcom/txznet/sdk/TXZAsrManager$AsrOption;->T:Ljava/lang/Integer;

    .line 666
    iput-object v0, p0, Lcom/txznet/sdk/TXZAsrManager$AsrOption;->T3:Ljava/lang/Integer;

    .line 667
    iput-object v0, p0, Lcom/txznet/sdk/TXZAsrManager$AsrOption;->T2:Ljava/lang/Integer;

    .line 668
    iput-object v0, p0, Lcom/txznet/sdk/TXZAsrManager$AsrOption;->TN:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public setBOS(I)Lcom/txznet/sdk/TXZAsrManager$AsrOption;
    .locals 1
    .param p1, "bos"    # I

    .prologue
    .line 677
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/txznet/sdk/TXZAsrManager$AsrOption;->T:Ljava/lang/Integer;

    .line 678
    return-object p0
.end method

.method public setEOS(I)Lcom/txznet/sdk/TXZAsrManager$AsrOption;
    .locals 1
    .param p1, "eos"    # I

    .prologue
    .line 688
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/txznet/sdk/TXZAsrManager$AsrOption;->T3:Ljava/lang/Integer;

    .line 689
    return-object p0
.end method

.method public setKeySpeechTimeout(I)Lcom/txznet/sdk/TXZAsrManager$AsrOption;
    .locals 1
    .param p1, "keySpeechTimeout"    # I

    .prologue
    .line 699
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/txznet/sdk/TXZAsrManager$AsrOption;->T2:Ljava/lang/Integer;

    .line 700
    return-object p0
.end method

.method public setManual(Z)Lcom/txznet/sdk/TXZAsrManager$AsrOption;
    .locals 1
    .param p1, "manual"    # Z

    .prologue
    .line 710
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/txznet/sdk/TXZAsrManager$AsrOption;->TN:Ljava/lang/Boolean;

    .line 711
    return-object p0
.end method
