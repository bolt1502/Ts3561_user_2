.class public Lcom/txznet/sdk/TXZService;
.super Landroid/app/Service;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/txznet/sdk/TXZService$T;,
        Lcom/txznet/sdk/TXZService$T3;
    }
.end annotation


# static fields
.field static T:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    sput-boolean v0, Lcom/txznet/sdk/TXZService;->T:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 72
    return-void
.end method

.method static T(Ljava/lang/String;Lcom/txznet/sdk/TXZService$T;)V
    .locals 0
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "processor"    # Lcom/txznet/sdk/TXZService$T;

    .prologue
    .line 77
    invoke-static {p0, p1}, Lcom/txznet/T2/T;->T(Ljava/lang/String;Lcom/txznet/T2/T$T;)V

    .line 78
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 69
    new-instance v0, Lcom/txznet/sdk/TXZService$T3;

    invoke-direct {v0}, Lcom/txznet/sdk/TXZService$T3;-><init>()V

    return-object v0
.end method
