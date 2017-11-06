.class public Lcom/T3/T/T/TN;
.super Ljava/io/IOException;
.source "Proguard"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method static T()Lcom/T3/T/T/TN;
    .locals 2

    .prologue
    .line 49
    new-instance v0, Lcom/T3/T/T/TN;

    const-string v1, "While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either than the input has been truncated or that an embedded message misreported its own length."

    invoke-direct {v0, v1}, Lcom/T3/T/T/TN;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static T2()Lcom/T3/T/T/TN;
    .locals 2

    .prologue
    .line 63
    new-instance v0, Lcom/T3/T/T/TN;

    const-string v1, "CodedInputStream encountered a malformed varint."

    invoke-direct {v0, v1}, Lcom/T3/T/T/TN;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static T3()Lcom/T3/T/T/TN;
    .locals 2

    .prologue
    .line 57
    new-instance v0, Lcom/T3/T/T/TN;

    const-string v1, "CodedInputStream encountered an embedded string or message which claimed to have negative size."

    invoke-direct {v0, v1}, Lcom/T3/T/T/TN;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static TN()Lcom/T3/T/T/TN;
    .locals 2

    .prologue
    .line 68
    new-instance v0, Lcom/T3/T/T/TN;

    const-string v1, "Protocol message contained an invalid tag (zero)."

    invoke-direct {v0, v1}, Lcom/T3/T/T/TN;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static Te()Lcom/T3/T/T/TN;
    .locals 2

    .prologue
    .line 73
    new-instance v0, Lcom/T3/T/T/TN;

    const-string v1, "Protocol message end-group tag did not match expected tag."

    invoke-direct {v0, v1}, Lcom/T3/T/T/TN;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static Tw()Lcom/T3/T/T/TN;
    .locals 2

    .prologue
    .line 78
    new-instance v0, Lcom/T3/T/T/TN;

    const-string v1, "Protocol message tag had invalid wire type."

    invoke-direct {v0, v1}, Lcom/T3/T/T/TN;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static Ty()Lcom/T3/T/T/TN;
    .locals 2

    .prologue
    .line 83
    new-instance v0, Lcom/T3/T/T/TN;

    const-string v1, "Protocol message had too many levels of nesting.  May be malicious.  Use CodedInputStream.setRecursionLimit() to increase the depth limit."

    invoke-direct {v0, v1}, Lcom/T3/T/T/TN;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
