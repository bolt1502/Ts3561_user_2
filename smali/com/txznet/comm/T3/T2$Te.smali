.class Lcom/txznet/comm/T3/T2$Te;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/txznet/comm/T3/T2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Te"
.end annotation


# instance fields
.field T:I

.field T2:[B

.field T3:Ljava/lang/String;

.field TN:Lcom/txznet/comm/T3/T2$T3;

.field Te:J

.field final synthetic Tw:Lcom/txznet/comm/T3/T2;


# direct methods
.method constructor <init>(Lcom/txznet/comm/T3/T2;)V
    .locals 0

    .prologue
    .line 205
    iput-object p1, p0, Lcom/txznet/comm/T3/T2$Te;->Tw:Lcom/txznet/comm/T3/T2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
