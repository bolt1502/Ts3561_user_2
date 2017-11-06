.class public Lcom/txznet/comm/TN/T/T$T;
.super Lcom/T2/T/T3/T2;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/txznet/comm/TN/T/T;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "T"
.end annotation


# static fields
.field private static T3:Lcom/txznet/comm/TN/T/T$T;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 72
    new-instance v0, Lcom/txznet/comm/TN/T/T$T;

    invoke-direct {v0}, Lcom/txznet/comm/TN/T/T$T;-><init>()V

    sput-object v0, Lcom/txznet/comm/TN/T/T$T;->T3:Lcom/txznet/comm/TN/T/T$T;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/T2/T/T3/T2;-><init>()V

    return-void
.end method

.method public static Te()Lcom/txznet/comm/TN/T/T$T;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lcom/txznet/comm/TN/T/T$T;->T3:Lcom/txznet/comm/TN/T/T$T;

    return-object v0
.end method
