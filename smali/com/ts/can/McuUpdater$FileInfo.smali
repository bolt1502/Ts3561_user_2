.class public Lcom/ts/can/McuUpdater$FileInfo;
.super Ljava/lang/Object;
.source "CanMcuUpdateActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ts/can/McuUpdater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FileInfo"
.end annotation


# instance fields
.field public data:[B

.field public len:I

.field final synthetic this$0:Lcom/ts/can/McuUpdater;


# direct methods
.method public constructor <init>(Lcom/ts/can/McuUpdater;)V
    .locals 0

    .prologue
    .line 190
    iput-object p1, p0, Lcom/ts/can/McuUpdater$FileInfo;->this$0:Lcom/ts/can/McuUpdater;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
