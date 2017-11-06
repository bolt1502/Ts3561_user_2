.class public Lcom/ts/can/gm/xt5/McuUpdater$FileInfo;
.super Ljava/lang/Object;
.source "CanCadillacXt5UpdateActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ts/can/gm/xt5/McuUpdater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FileInfo"
.end annotation


# instance fields
.field public data:[B

.field public len:I

.field final synthetic this$0:Lcom/ts/can/gm/xt5/McuUpdater;


# direct methods
.method public constructor <init>(Lcom/ts/can/gm/xt5/McuUpdater;)V
    .locals 0

    .prologue
    .line 300
    iput-object p1, p0, Lcom/ts/can/gm/xt5/McuUpdater$FileInfo;->this$0:Lcom/ts/can/gm/xt5/McuUpdater;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
